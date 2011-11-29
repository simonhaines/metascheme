// The LLVM shadow stack data structures
// Based on code from Paul E.C. Melis
// http://lists.cs.uiuc.edu/pipermail/llvmdev/2010-April/030882.html

#ifndef LLVM_GC_SUPPORT_H
#define LLVM_GC_SUPPORT_H

#include <inttypes.h>

// For roots [0, NumMeta), the metadata pointer is in the FrameMap
// For roots [NumMeta, NumRoots), the metadata pointer is NULL
struct FrameMap {
	int32_t NumRoots;		// Number of roots in a stack frame
	int32_t NumMeta;		// Number of metadata entries (may be < NumRoots)
	const void *Meta[0];	// Metadata for each root
};

struct StackEntry {
	struct StackEntry *Next;	// List to next stack entry (the caller's)
	const struct FrameMap *Map;	// Pointer to constance FrameMap
	void *Roots[0];				// Stack roots (in-place array)
};

struct StackEntry *llvm_gc_root_chain;

#endif

