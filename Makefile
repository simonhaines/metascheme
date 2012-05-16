SCHEME=guile

all:	metascheme.bc rt.so
	lli -load=./rt.so bootstrap.llvm.bc metascheme.bc

metascheme.S:	metascheme.scm
	${SCHEME} metascheme.scm >metascheme.S

metascheme.bc:	metascheme.S
	llvm-as -o metascheme.bc metascheme.S

gc.o:	gc.c gc.h llvm_gc_support.h
	gcc -DVERBOSEX -fPIC -o gc.o -c gc.c

db.o:	db.c db.h
	gcc -fPIC -o db.o -c db.c

rt.so:	gc.o db.o
	gcc -shared -o rt.so gc.o db.o

clean:
	rm metascheme.S metascheme.bc rt.so gc.o db.o
