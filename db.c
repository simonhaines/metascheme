#include <stdio.h>
#include <stdarg.h>

#include "db.h"

void db_trace_param(uint64_t param);

uint64_t raw_number(uint64_t fixnum) {
	return fixnum >> 2;	// Strip off tag
}

void db_trace_vector(uint64_t ref) {
	static unsigned char indent = 0;

	// Strip off tag
	uint64_t target = ((ref >> 2) << 2);

	// Dereference target into heap
	uint64_t *heap = (uint64_t*) target;
	if (heap == 0) {
		// Size = 0
		fprintf(stderr, "vector '()\n");
	} else {
		uint64_t header = (*heap) >> 1;	// Strip off forwarding/mark bit
		uint64_t size = raw_number(header);
		fprintf(stderr, "vector[%lu]\n", size);
		indent += 2;
		for (uint64_t index = 0; index < size; ++index) {
			for (unsigned char i = 0; i < indent; ++i) {
				fprintf(stderr, " ");
			}
			fprintf(stderr, "[%lu] ", index);
			db_trace_param((uint64_t)(heap + 1 + index));
		}
		indent -= 2;
	}
	return;
}

void db_trace_string(uint64_t ref) {
	static int indent = 0;

	// Strip off tag
	uint64_t target = ((ref >> 2) << 2);
	// Dereference target into heap
	uint64_t *heap = (uint64_t*) target;
	uint64_t header = (*heap) >> 1;	// Strip off forwarding/mark bit
	uint64_t tag = header & 0x03;
	uint64_t size = ((header >> 2) << 2);
	uint64_t raw_string = *(heap + 1);
	uint64_t string_size = *(heap + 2);
	uint64_t symbol_p = *(heap + 3);

	fprintf(stderr, "%s[%lu] = \"%s\"\n", symbol_p ? "symbol" : "string",
			raw_number(string_size), (char*) raw_string);
	return;
}

void db_trace_function(uint64_t ref) {
	fprintf(stderr, "function\n");
}

void db_trace_param(uint64_t param) {
    // Dereference parameter
    uint64_t ref = *((uint64_t*)param);
    switch (ref & 0x03) {
    case 0:
        fprintf(stderr, "number = %lu\n", raw_number(ref));
        break;
    case 1:
		db_trace_vector(ref);
        break;
    case 2:
		db_trace_string(ref);
        break;
    case 3:
		db_trace_function(ref);
        break;
    default:
        fprintf(stderr, "???\n");
        break;
    }
}

void db_trace(uint8_t* name, uint32_t arity, ...) {
    int index;
    uint64_t arg;
    fprintf(stderr, "TRACE: %s\n", name);
    va_list args;
    va_start(args, arity);
    for (index = 0; index < arity; ++index) {
        arg = va_arg(args, uint64_t);
		fprintf(stderr, "  ");
        db_trace_param(arg);
    }
    va_end(args);
}

