#include <stdio.h>
#include <stdarg.h>

#include "db.h"

void db_trace_param(uint64_t param) {
    printf("  0x%016lX: ", param);
    // Dereference parameter
    uint64_t ref = *((uint64_t*)param);
    switch (ref & 0x03) {
    case 0:
        printf("number %u\n", (ref >> 2));
        break;
    case 1:
        printf("vector \n");
        break;
    case 2:
        printf("string \n");
        break;
    case 3:
        printf("function \n");
        break;
    default:
        printf("???\n");
        break;
    }
}

void db_trace(uint8_t* name, uint32_t arity, ...) {
    int index;
    uint64_t arg;
    printf("TRACE: %s\n", name);
    va_list args;
    va_start(args, arity);
    for (index = 0; index < arity; ++index) {
        arg = va_arg(args, uint64_t);
        db_trace_param(arg);
    }
    va_end(args);
}

