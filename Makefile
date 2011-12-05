SCHEME=guile

all:	compile.bc gc.so
	lli -load=./gc.so compile.bc

compile.S:	compile.scm
	${SCHEME} compile.scm >compile.S

gc.so:	gc.c gc.h llvm_gc_support.h
	gcc -DVERBOSE -fPIC -shared -o gc.so gc.c

compile.bc:	compile.S
	llvm-as -o compile.bc compile.S

clean:
	rm compile.S gc.so compile.bc
