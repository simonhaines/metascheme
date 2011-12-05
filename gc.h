// Garbage collection API
// Based on code from Paul E.C. Melis
// http://lists.cs.uiuc.edu/pipermail/llvmdev/2010-April/030882.html

#ifndef GC_H
#define GC_H

#include <inttypes.h>

void gc_init(uint32_t heapsize);
uint8_t* gc_alloc(uint32_t size);
void gc_collect();
void gc_shutdown();

#endif
