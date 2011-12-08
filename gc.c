// Cheney's algorithm garbage collector
// Based on code from Paul E.C. Melis
// http://lists.cs.uiuc.edu/pipermail/llvmdev/2010-April/030882.html

/*
	The heap is 64-bit aligned. Objects on the heap have the first eight
	bytes in the following format:
		bits 64-5: size
		bits  4-2: tag
		bit     1: forwarded flag

	Object layout:
		String/symbol:
			[0]  size | tag | forwarded
			[1]  raw string (pointer to bytearray)
			[2]  raw string size
			[3]  1 = symbol, 0 = string

		Function:
			[0]  size | tag | forwarded
			[1]  raw function pointer (pointer to llvm function)
			[2]  environment pointer (pointer to bytearray?)
			[3]  number of params
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <stdint.h>

#include "llvm_gc_support.h"
#include "gc.h"

// Heap management
static uint8_t *from_space, *from_limit;
static uint8_t *to_space, *to_limit;
static uint8_t *to_alloc;

void gc_init(uint32_t heapsize) {
	// Check size
	if (heapsize < 8 || heapsize % 8 != 0) {
		printf("Invalid heap size (must be 64-bit aligned)\n");
		exit(1);
	}

#ifdef VERBOSE
	fprintf(stderr, "Initialising heap (%d bytes)\n", heapsize);
#endif

	// Allocate heap space
	from_space = (uint8_t*) malloc(heapsize);
	memset(from_space, 0, heapsize);
	from_limit = from_space + heapsize + 1;

	to_space = (uint8_t*) malloc(heapsize);
	memset(to_space, 0, heapsize);
	to_limit = to_space + heapsize + 1;
	to_alloc = to_space;

	// Ensure alignment
	if ((((uint64_t) from_space) & 0x07) != 0 ||
			(((uint64_t) to_space) & 0x07) != 0) {
		printf("Heap space alignment error\n");
		exit(1);
	}

#ifdef VERBOSE
	fprintf(stderr, "  From space is: 0x%016lX .. 0x%016lX\n",
            (uint64_t) from_space, (uint64_t) from_limit);
	fprintf(stderr, "    To space is: 0x%016lX .. 0x%016lX\n",
            (uint64_t) to_space, (uint64_t) to_limit);
#endif
}

void gc_shutdown() {
#ifdef VERBOSE
	fprintf(stderr, "Releasing heap (%d of %d bytes in use)\n",
            to_alloc - to_space, to_limit - to_space + 1);
#endif

	free(from_space);
	free(to_space);
}

// Dereference a tagged 64-bit pointer
uint64_t* points_to(uint8_t *ptr) {
	uint64_t *x = (uint64_t*) ptr;
	return (uint64_t*) ((*x >> 2) << 2);
}

static void copy_and_forward(uint8_t *cell) {
	uint64_t *ptr = (uint64_t*) cell;
	uint64_t tag = *ptr & 0x03;
	if (tag == 0) {
		printf("Fatal: Unboxed type at heap location 0x%016lX\n",
				(uint64_t) ptr);
		exit(1);
	}

	uint64_t *obj = points_to(cell);
	if (obj == 0) {
		return;	// Ignore null pointers
	}

	// Is the object already forwarded?
	if (*obj & 0x01) {
		// Update reference
		*ptr = ((uint64_t) points_to((uint8_t*)obj)) | tag;
	} else {
		// Copy and forward
		size_t size = (size_t)((*obj >> 3) << 2) + 8;
		memcpy(to_alloc, ptr, size);
		*ptr = ((uint64_t) to_alloc) | 0x01;
		to_alloc += size;
	}
}

void gc_collect() {
#ifdef VERBOSE
	fprintf(stderr, "Heap use before collection: %d of %d bytes\n",
			to_alloc - to_space, to_limit - to_space + 1);
#endif

	// Swap spaces
	uint8_t *swap;
	swap = to_space;
	to_space = from_space;
	from_space = swap;
	swap = to_limit;
	to_limit = from_limit;
	from_limit = swap;
	to_alloc = to_space;

	// Clear space
	memset(to_space, 0, to_limit - to_space + 1);
	
	// Traverse roots copying live objects
	int32_t index, num_roots;
	uint8_t *root, *newroot;
	struct StackEntry *entry = llvm_gc_root_chain;

	// Forward stack roots
	while(entry) {
		num_roots = entry->Map->NumRoots;
		for (index = 0; index < num_roots; ++index) {
			root = (uint8_t*)entry->Roots[index];
			if (root) {
				copy_and_forward(root);
			}
		}
		entry = entry->Next;
	}

	// Scan for references and copy those
	uint8_t *scan = to_space;
	while (scan < to_alloc) {
		uint64_t *cell = (uint64_t*)scan;
		uint64_t tag = (*cell >> 1) & 0x03;
		switch(tag) {
			case 0:
				printf("Fatal: Unboxed type at heap location 0x%016lX\n",
						(uint64_t) cell);
				exit(1);
			case 1: {
					// Vector
					uint64_t index, size = *cell >> 3;
					for (index = 0; index < size; ++index) {
						copy_and_forward(&scan[index + 1]);
						scan += (size + 1) * sizeof(uint64_t);
					}
				}
				break;
			case 2:
				// String/symbol
				scan += 4 * sizeof(uint64_t);
				break;
			case 3:
				// Function
				copy_and_forward(&scan[2]);	// Closure
				scan += 4 * sizeof(uint64_t);
				break;
		}
	}
}

uint8_t* gc_alloc(uint32_t size) {
	// Check remaining space
	if (to_alloc + size - 1 > to_limit) {
		// Garbage collection required
#ifdef VERBOSE
		fprintf(stderr, "Out of heap space, forcing collection\n");
#endif
		gc_collect();

		if (to_alloc + size - 1 > to_limit) {
			printf("Fatal: not enough heap space after collection\n"
					"(required is %ld bytes, available is %d bytes)\n",
					to_limit - to_alloc + 1, size);
			exit(1);
		}
	}

	// Allocate memory
	uint8_t *memory = to_alloc;
	to_alloc += size;

#ifdef VERBOSE
	fprintf(stderr, "%d bytes allocated at 0x%016lX, "
            "heap size is now %d bytes\n", size, memory, to_alloc - to_space);
#endif
	return memory;
}

