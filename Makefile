SCHEME=racket

all:	test-c

all-c:	compile.ccode.c
	gcc -Wall -o metascheme compile.ccode.c

compile.ccode.c:	compile.ccode.ss
	cat compile.ccode.ss | ${SCHEME} compile.ccode.ss >compile.ccode.c

test-c:	test.scm
	cat test.scm | ${SCHEME} compile.ccode.ss >test.c
	gcc -Wall -o test-c test.c

all-llvm:	metascheme.bc rt.so
	lli -load=./rt.so metascheme.bc

metascheme.ll:	metascheme.rkt
	${SCHEME} metascheme.rkt >metascheme.ll

metascheme.bc:	metascheme.ll
	llvm-as -o metascheme.bc metascheme.ll

gc.o:	gc.c gc.h llvm_gc_support.h
	gcc -DVERBOSEX -fPIC -o gc.o -c gc.c

db.o:	db.c db.h
	gcc -std=c99 -fPIC -o db.o -c db.c

rt.so:	gc.o db.o
	gcc -std=c99 -shared -o rt.so gc.o db.o

clean:
	rm -f compile.ccode.c metascheme test.c test-c
	rm -f metascheme.ll metascheme.bc rt.so gc.o db.o
