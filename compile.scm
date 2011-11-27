;; A small self applicable scheme->llvm compiler.
;; ,  Tobias Nurmiranta
;;
;; -- To Use It --
;; Reads scheme-code from standard input.
;; cat code.ss|mzscheme --script compile.ss|llvm-as -f -o=test.bc;lli test.bc
;;
;;
;; mzscheme --script compile.ss.heap|llvm-as|opt -lowergc -f -o=test2.bc|llvm-link test2.bc ~/llvm/llvm/runtime/GC/SemiSpace/BytecodeObj/semispace.bc -f -o=test3.bc
;;
;;
;; The compiler is painfully slow since it for testing purposes
;; compiles all help functions as well (see variable bootstrap). 
;; It extends standard scheme with a subset of available
;; llvm-instructions, and adds the new special-form llvm-define.
;;
;; - llvm-define -
;; llvm-define defines a llvm-function, which parameters are the
;; llvm-function's parameters, so it doesn't use an environment for
;; variable lookup. llvm-define's are used to implement basic
;; functionality of the language, and can only call other llvm-defined
;; functions.
;;
;; -- Example of Self Application --
;; bash-2.05b$ mzscheme --script compile.ss > hello.ll
;; (display "you can't h4xx0r a cake if you not kr4xx0r an egg")
;; bash-2.05b$ cat compile.ss|mzscheme --script compile.ss|llvm-as -o=ccomp.bc
;; bash-2.05b$ lli ccomp.bc > hello2.ll                                
;; (display "you can't h4xx0r a cake if you not kr4xx0r an egg")       
;; bash-2.05b$ llvm-as hello2.ll
;; bash-2.05b$ lli hello2.bc
;; you can't h4xx0r a cake if you not kr4xx0r an egg
;; bash-2.05b$ diff hello.ll hello2.ll
;; bash-2.05b$
;;
;; -- Implemented Types --
;; 30 bit immediate fixnums (also used as chars)
;; symbols
;; strings
;; vectors (which are also used as conscells)
;; functions (fixed and arbitrary number of arguments)
;;
;; All objects are represented with a 32 bit i32, with 2 bits reserved 
;; for a type tag.
;;
;; -- The Implementation --

(begin
  
(define (error func str)
  (display func) (display " ") 
  (display str) (newline))

;; Abstract syntax

(define (tagged-list? exp tag) (if (pair? exp) (eq? (car exp) tag) (= 1 0)))
(define (self-evaluating? exp) (or (number? exp) (string? exp)))
(define (variable? exp) (symbol? exp))
(define (assignment? exp) (tagged-list? exp 'set!))
(define (definition? exp) (tagged-list? exp 'define))
(define (if? exp) (tagged-list? exp 'if))
(define (cond? exp) (tagged-list? exp 'cond))
(define (lambda? exp) (tagged-list? exp 'lambda))
(define (begin? exp) (tagged-list? exp 'begin))
(define (quote? exp) (tagged-list? exp 'quote))
(define (let? exp) (tagged-list? exp 'let))
(define (application? exp) (pair? exp))

(define (llvm-definition? exp) (tagged-list? exp 'llvm-define))
(define (llvm-instruction? exp) (assoc (operator exp) llvm-instructions))

(define (operator exp) (car exp))
(define (operands exp) (cdr exp))
(define (first-arg exp) (cadr exp))
(define (second-arg exp) (caddr exp))
(define (third-arg exp) (cadddr exp))

(define (begin-actions exp) (cdr exp))
(define (last-exp? seq) (null? (cdr seq)))

(define (text-of-quotation exp) (cadr exp))

(define (definition-variable exp)
  (if (symbol? (cadr exp)) (cadr exp) (caadr exp)))
(define (definition-value exp)
  (if (symbol? (cadr exp))
      (caddr exp) (cons 'lambda (cons (cdadr exp) (cddr exp)))))

(define (if-predicate exp) (cadr exp))
(define (if-consequent exp) (caddr exp))
(define (if-alternative exp) (if (not (null? (cdddr exp))) (cadddr exp) 0))
(define (make-if predicate consequent alternative)
  (list 'if predicate consequent alternative))

(define (lambda-parameters exp) 
  (define (fix-list lst)
    (cond ((not (pair? lst)) (cons lst '()))
          (else (cons (car lst) (fix-list (cdr lst))))))
  (if (list? (cadr exp)) (cadr exp) (fix-list (cadr exp))))
(define (lambda-arbitrary-args? exp) (not (list? (cadr exp))))
(define (lambda-body exp) (cddr exp))

;; Code transformation

(define (sequence->exp seq)
  (cond ((null? seq) seq)
        ((last-exp? seq) (car seq))
        (else (make-begin seq))))
(define (make-begin seq) (cons 'begin seq))

(define (cond-clauses exp) (cdr exp))
(define (cond-else-clause? clause) (eq? (cond-predicate clause) 'else))
(define (cond-predicate clause) (car clause))
(define (cond-actions clause) (cdr clause))
(define (cond->if exp) (expand-clauses (cond-clauses exp)))
(define (expand-clauses clauses)
  (if (null? clauses) 0
      (let ((first (car clauses))
            (rest (cdr clauses)))
        (if (cond-else-clause? first)
            (if (null? rest) (sequence->exp (cond-actions first))
                (error 'expand-clauses "else clause not last"))
            (make-if (cond-predicate first)
                     (sequence->exp (cond-actions first))
                     (expand-clauses rest))))))

(define (let-vars exp) (map (lambda (x) (car x)) (cadr exp)))
(define (let-vals exp) (map (lambda (x) (cadr x)) (cadr exp)))
(define (let-body exp) (cddr exp))
(define (let->lambda exp)
  (cons (cons 'lambda (cons (let-vars exp) (let-body exp))) (let-vals exp)))

;; Code constructors

(define (append-code2 instrs)
    (cond ((null? instrs) instrs)
          ((null? (car instrs))
           (append-code2 (cdr instrs)))
          ((pair? (car instrs))
           (append (car instrs) (append-code2 (cdr instrs))))
          (else (cons (car instrs) (append-code2 (cdr instrs))))))
(define (append-code . instrs) (append-code2 instrs)) 
(define (make-code target . instrs) (cons target (append-code2 instrs)))

;; Generate variables, labels, string constants and functions.

(define c
  (lambda strs
    (define (str-app str1 rest)
      (if (null? rest) str1
          (string-append str1 (str-app (car rest) (cdr rest)))))
    (str-app (car strs) (cdr strs))))
;(define c string-append) 

(define (init-generators)
  (set! var-counter 0)
  (set! label-counter 0)
  (set! function-counter 0)
  (set! llvm-function-list '())
  (set! llvm-primitive-functions ;; functions implemented in llvm assembler. 
        '(llvm-read-char 
          print-number print-string/symbol
          allocate-object
          object-size
          object-ref object-set!
          allocate-string/symbol
          string-ref string-set!
          mem-cpy
          apply-procedure
          number? vector? string/symbol? procedure? null?
          make-null make-true
          exit))
  (set! llvm-function-map
    '(; Support functions
      (allocate-bytearray . allocate-bytearray)
      (bytearray-ref . bytearray-ref)
      (bytearray-set! . bytearray-set)
      (make-procedure . make-procedure)
      (make-string/symbol . make-string-or-symbol)
      (string-bytes . string-bytes)
      (clear-tag . clear-tag)
      (make-number . make-number)
      (raw-number . raw-number)
      (points-to . points-to)
      (tag-eq? . tag-eq)
      ; Primitive scheme functions
      (llvm-read-char . llvm-read-char)
      (print-number . print-number)
      (print-string/symbol . print-string-or-symbol)
      (allocate-object . allocate-object)
      (object-size . object-size)
      (object-ref . object-ref)
      (object-set! . object-set)
      (allocate-string/symbol . allocate-string-or-symbol)
      (string-ref . string-ref)
      (string-set! . string-set)
      (mem-cpy . mem-cpy)
      (apply-procedure . apply-procedure)
      (number? . number)
      (vector? . vector)
      (string/symbol? . string-or-symbol)
      (procedure? . procedure)
      (null? . null)
      (make-null . make-null)
      (make-true . make-true)
      (exit . end)
      (main . main)))
  (set! llvm-string-list '()))

(define var-counter 0)
(define (make-reg)
  (set! var-counter (+ 1 var-counter))
  (list 'reg (c "%r" (number->string var-counter))))
(define (make-global)
  (set! var-counter (+ 1 var-counter))
  (list 'global (c "@g" (number->string var-counter))))

(define (stack-reg? exp) (or (tagged-list? exp 'stack-reg) (tagged-list? exp 'stack-reg-not-used)))
(define (stack-reg-used? exp) (tagged-list? exp 'stack-reg))
(define (set-stack-reg-used! sreg) (set-car! sreg 'stack-reg))
(define (construct-stack-reg reg-name) (list 'stack-reg reg-name))

(define (convert-to-stack-reg exp) (list 'convert-to-stack-reg exp))
(define (convert-to-stack-reg? exp) (tagged-list? exp 'convert-to-stack-reg))
(define (convert-to-stack-reg-body exp) (cadr exp))

(define (make-stack-reg)
  (set! var-counter (+ 1 var-counter))
  (list 'stack-reg-not-used (c "%r" (number->string var-counter))))

(define label-counter 0)
(define (make-label)
  (set! label-counter (+ 1 label-counter))
  (c "label" (number->string label-counter)))

(define function-counter 0)
(define (make-function-name)
  (set! function-counter (+ 1 function-counter))
  (c "@f" (number->string function-counter)))

(define llvm-function-map '())
(define (add-llvm-function-map name llvm-name)
  (set! llvm-function-map (cons (cons name llvm-name) llvm-function-map)))
(define (lookup-llvm-function-name name)
  (let ((function-name-map (assoc name llvm-function-map)))
    (if function-name-map (cdr function-name-map)
        (let ((llvm-name (make-function-name)))
          (add-llvm-function-map name llvm-name)
          llvm-name))))

(define llvm-primitive-functions '())
(define (add-llvm-function-name f-name)
  (set! llvm-primitive-functions (cons f-name llvm-primitive-functions)))

(define llvm-function-list '())
(define (add-llvm-function f-name f-params f-body f-target)
  (define (build-params params)
    (if (null? params) ""
        (c "i32* " (llvm-repr (car params))
           (if (null? (cdr params)) "" ", ")
           (build-params (cdr params)))))
  (let ((llvm-name (lookup-llvm-function-name f-name)))
    (set! llvm-function-list
      (append 
        llvm-function-list
        (list (append-code 
                (c "; " (llvm-function-repr f-name))
                (c "define i32 " (llvm-function-repr llvm-name)
                   "(" (build-params f-params) ") {")
                f-body
                (llvm-ret f-target)
                (c "}")))))))

(define (fix-string-format str) ;; some extra work since we have no char-type.
  (define (str-ref-int str pos) (char->integer (string-ref str pos)))
  (define (esc-char hex1 hex2 rest)
    (cons (integer->char 92) 
          (cons (integer->char hex1) (cons (integer->char hex2) rest))))
  (define (fix-str-format str pos end)
    (cond ((= pos end) '())
          ((eq? (str-ref-int str pos) 34) 
           (esc-char 50 50 (fix-str-format str (+ pos 1) end)))
          ((eq? (str-ref-int str pos) 92)
           (esc-char 53 67 (fix-str-format str (+ pos 1) end)))
          (else (cons (string-ref str pos) 
                      (fix-str-format str (+ pos 1) end)))))
  (list->string (fix-str-format str 0 (string-length str))))

(define llvm-string-list '())
(define (add-llvm-string target str)
  (let ((str-type (c "[" (number->string (+ (string-length str) 1)) " x i8]")))
    (set! llvm-string-list 
          (cons (c (llvm-repr target) " = private unnamed_addr constant "
                   str-type " c\"" (fix-string-format str) "\\00\"")
                llvm-string-list))
    (c str-type "*")))

;; Lexical addressing.

(define (extend-c-t-env params c-t-env) (cons params c-t-env))
(define (current-c-t-env c-t-env) (car c-t-env))
(define (outer-c-t-env c-t-env) (cdr c-t-env))

(define (find-var var c-t-env scope)
  (define (find-index var env index)
    (cond ((null? env) '())
	  ((eq? (car env) var) index)
	  (else (find-index var (cdr env) (+ 1 index)))))
  (if (null? c-t-env) '()
      (let ((index (find-index var (current-c-t-env c-t-env) 1)))
	(if (null? index)
	    (find-var var (outer-c-t-env c-t-env) (+ 1 scope))
	    (cons scope index)))))
 
;; LLVM primitives.

(define llvm-instructions
  '(;; binary operations.
    (add . "add") (sub . "sub") (mul . "mul") (div . "udiv") (rem . "urem")    
    ;; binary bit operations.
    (bit-and . "and") (bit-or . "or") (bit-xor . "xor") 
    (bit-shl . "shl") (bit-lshr . "lshr") (bit-ashr . "ashr")
    ;; boolean operations.
    (cmp-eq . "icmp eq") (cmp-ne . "icmp ne")
    (cmp-ult . "icmp ult") (cmp-ugt . "icmp ugt")
    (cmp-slt . "icmp slt") (cmp-sgt . "icmp sgt")
    (cmp-ule . "icmp ule") (cmp-uge . "icmp uge")
    (cmp-sle . "icmp sle") (cmp-sge . "icmp sge")))

(define llvm-boolean-instructions
  '(cmp-eq cmp-ne cmp-ult cmp-ugt cmp-slt cmp-sgt cmp-ule
    cmp-ule cmp-sle cmp-sge))
(define llvm-shift-instructions '(bit-shl bit-lshr bit-ashr))
(define (llvm-instr-name op) (cdr (assoc op llvm-instructions)))

(define (llvm-repr exp)
  (cond ((number? exp) (number->string (* 4 exp)))
        ((symbol? exp) (c "%" (symbol->string exp)))
        ((list? exp) (cadr exp))
        (else exp)))

(define (llvm-function-repr exp)
  (if (symbol? exp)
      (c "@" (symbol->string exp))
      exp))

(define (llvm-load target var) (lc target " = load i32* " (llvm-repr var)))
(define (llvm-store target value) (lc "store i32 " value ", i32* " (llvm-repr target)))
(define (llvm-alloca-var target) (c (llvm-repr target) " = alloca i8, i32 4"))

(define (llvm-init-stack-reg reg)
  (let ((t1 (make-reg)))
    (set-stack-reg-used! reg)
    (append-code
      ;http://www.blushingpenguin.com/svn/trunk/3rdparty/clamav/libclamav/c++/llvm/test/CodeGen/X86/GC/alloc_loop.ll
      ;http://lists.cs.uiuc.edu/pipermail/llvmdev/2011-June/040562.html
     (llvm-alloca-var reg)
     (llvm-bitcast t1 "i32*" (llvm-repr reg) "i8**")
     (c "call void @llvm.gcroot(i8** " (llvm-repr t1) ", i8* null)"))))

(define (lc2 instruction)  
 (define (llvm-loader code load-code res-instruction)
    (cond ((null? code) (append-code load-code res-instruction))
          ((stack-reg? (car code)) ;; register to be loaded
           (let ((t1 (make-reg)))
             (llvm-loader (cdr code)
                          (append-code load-code (llvm-load t1 (car code)))
                          (c res-instruction (llvm-repr t1)))))
          ((convert-to-stack-reg? (car code)) ;; arguments to procedure application
           (let ((t1 (make-stack-reg)))
             (llvm-loader (cdr code)
                          (append-code 
                           load-code 
                           (llvm-id t1 (convert-to-stack-reg-body (car code))))
                           (c res-instruction (llvm-repr t1)))))
          (else (llvm-loader (cdr code)
                             load-code
                             (c (llvm-repr res-instruction) (llvm-repr (car code)))))))
  (let ((target (car instruction)))
    (if (stack-reg? target)
        (let ((res (make-reg)))
          (append-code
           (if (stack-reg-used? target) '()
               (llvm-init-stack-reg target))
           (llvm-loader (cdr instruction) '() res)
           (llvm-store target res)))
        (llvm-loader instruction '() ""))))
(define (lc . instruction) (lc2 instruction))

(define (llvm-instruction target op x y)
  (lc target " = " (llvm-instr-name op) " i32 " (llvm-repr x) ", " (llvm-repr y)))

(define (llvm-id target exp) ; Identity function
  (lc target " = add i32 0, " exp))

(define (llvm-call2 target function args)
  (define (arg-repr exp)
    (cond ((stack-reg? exp) (llvm-repr exp))
          (else (convert-to-stack-reg exp))))
  
  (define (build-arg-list arg-list fi)
    (cond ((null? arg-list) '())
          (else
           (cons (if (= fi 1) "" ", ")
                 (cons "i32* " 
                       (cons (arg-repr (car arg-list))
                             (build-arg-list (cdr arg-list) 0)))))))
  (lc2 
   (append (list target " = call i32 "
                 (llvm-function-repr (lookup-llvm-function-name function)) "(")
           (build-arg-list args 1)
           (list ") ; " (llvm-function-repr function)))))
(define (llvm-call target function . args) (llvm-call2 target function args))

(define (llvm-ret value) (lc "ret i32 " value))

; Conversion operations
(define (llvm-trunc target type1 x type2)
  (lc target " = trunc " type1 " " x " to " type2))
(define (llvm-zext target type1 x type2)
  (lc target " = zext " type1 " " x " to " type2))
(define (llvm-ptrtoint target type1 x type2)
  (lc target " = ptrtoint " type1 " " x " to " type2))
(define (llvm-inttoptr target type1 x type2)
  (lc target " = inttoptr " type1 " " x " to " type2))
(define (llvm-bitcast target type1 x type2)
  (lc target " = bitcast " type1 " " x " to " type2))

(define (llvm-label label) (c label ":"))
(define (llvm-br label) (c "br label %" label))
(define (llvm-bool-br pred c-label a-label)
  (let ((t1 (make-reg))
        (t2 (make-reg)))
    (append-code
     (llvm-call t1 'raw-number pred) ; false iff pred = 0 or '()
     (llvm-trunc t2 "i32" t1 "i1")
     (lc "br i1 " t2 ", label %" c-label ", label %" a-label))))

(define (llvm-shift-op target op value sh)
  (let ((t1 (make-reg)))
    (append-code 
     (llvm-trunc t1 "i32" sh "i8")
     (lc target " = " (llvm-instr-name op) " i32 " value ", i8 " t1))))

;; Compiler

(define (compile exp target c-t-env)
  (cond ((self-evaluating? exp)  (compile-self-evaluating exp target c-t-env))
        ((variable? exp)         (compile-variable exp target c-t-env))
        ((quote? exp)            (compile-self-evaluating
                                  (text-of-quotation exp) target c-t-env))
        ((or (assignment? exp) 
             (definition? exp))  (compile-assignment exp target c-t-env))
        ((if? exp)               (compile-if exp target c-t-env))
        ((cond? exp)             (compile-if (cond->if exp) target c-t-env))
        ((lambda? exp)           (compile-lambda exp target c-t-env))
        ((let? exp)              (compile (let->lambda exp) target c-t-env))
        ((begin? exp)            (compile-sequence (begin-actions exp) target c-t-env))
        ((llvm-instruction? exp) (compile-llvm-instruction exp target c-t-env))
        ((llvm-definition? exp)  (compile-llvm-definition exp target c-t-env))
        ((application? exp)      (compile-application exp target c-t-env))
        (else                    (error 'compile "Unknown expression type"))))

(define (compile-self-evaluating exp target c-t-env)
  (cond ((number? exp) 
         (llvm-id target exp)) ;; create tagged integer
        ((or (string? exp) (symbol? exp))
         (let ((str (make-global))
               (t1 (make-reg))
               (str-repr (if (string? exp) exp (symbol->string exp))))
           (append-code
            (llvm-ptrtoint t1 (add-llvm-string str str-repr) str "i32")
            (lc target
                " = call i32 @make-string-or-symbol(i32 " (llvm-repr t1) 
                ", i32* " (convert-to-stack-reg (string-length str-repr)) 
                ", i32* " (convert-to-stack-reg (if (symbol? exp) 1 0)) ")"))))
        ((null? exp) (llvm-call target 'make-null))
        ((pair? exp)
         (let ((t1 (make-stack-reg))
               (t2 (make-stack-reg)))
           (append-code
            (compile-self-evaluating (car exp) t1 c-t-env)
            (compile-self-evaluating (cdr exp) t2 c-t-env)
            (llvm-call target 'cons t1 t2))))
        (else (error 'self-eval "not implemented"))))

(define (compile-variable exp target c-t-env)
  (cond ((eq? c-t-env 'llvm-function) 
         (llvm-load target (construct-stack-reg exp)))
        (else 
         (let ((c-t-pos (find-var exp c-t-env 0)))
           (if (null? c-t-pos) (error exp " not found")
               (llvm-call target 'lookup-variable (construct-stack-reg 'env)
                          (car c-t-pos) (cdr c-t-pos)))))))

(define (compile-assignment exp target c-t-env)
  (let ((c-t-pos (find-var (definition-variable exp) c-t-env 0))
        (t1 (make-stack-reg)))
    (if (null? c-t-pos) (error 'compile-assignment "not found")
	(append-code
         (compile (definition-value exp) t1 c-t-env)
         (llvm-call target 'set-variable! (construct-stack-reg 'env) (car c-t-pos) (cdr c-t-pos) t1)))))
  
(define (compile-if exp target c-t-env)
  (let ((c-branch (make-label))
        (a-branch (make-label))
        (after-if (make-label))
        (pred (make-stack-reg)))
    (append-code
     (if (and (stack-reg? target) (not (stack-reg-used? target)))
         (llvm-init-stack-reg target) '())
     (compile (if-predicate exp) pred c-t-env)
     (llvm-bool-br pred c-branch a-branch)
     (llvm-label c-branch)
     (compile (if-consequent exp) target c-t-env)
     (llvm-br after-if)
     (llvm-label a-branch)
     (compile (if-alternative exp) target c-t-env)
     (llvm-br after-if)
     (llvm-label after-if))))

(define (compile-sequence seq target c-t-env)
  (define (sequence-defines seq)
    (cond ((null? seq) '())
          ((definition? (car seq))
           (cons (definition-variable (car seq)) (sequence-defines (cdr seq))))
          ((llvm-definition? (car seq))
           (add-llvm-function-name (definition-variable (car seq)))
           (sequence-defines (cdr seq)))
          (else (sequence-defines (cdr seq)))))
  
  (define (append-sequences seq target code-seq c-t-env2)
    (if (last-exp? seq)
        (append-code code-seq (compile (car seq) target c-t-env2))
        (append-sequences 
         (cdr seq) target
         (append-code code-seq (compile (car seq) (make-stack-reg) c-t-env2)) c-t-env2)))

  (let ((seq-defines (sequence-defines seq)))
    (if (null? seq-defines) 
        (append-sequences seq target '() c-t-env) ;; no local definitions
        (let ((seq-target (make-stack-reg))
              (f-name (make-function-name))
              (t1 (make-stack-reg)))
          (add-llvm-function 
           f-name '(env)
           (append-sequences seq seq-target '() (extend-c-t-env seq-defines c-t-env)) 
           seq-target)
          (append-code
           (llvm-call t1 'make-env (length seq-defines) (construct-stack-reg 'env))
           (llvm-call target f-name t1))))))

(define (compile-lambda exp target c-t-env)
  (let ((f-name (make-function-name))
        (l-target (make-stack-reg))
        (t1 (make-stack-reg)))
    (add-llvm-function 
     f-name '(env) 
     (compile-sequence (lambda-body exp) l-target
                       (extend-c-t-env (lambda-parameters exp) c-t-env)) l-target)
    (append-code
     (lc target " = call i32 @make-procedure(i32 (i32*)* "
         (llvm-function-repr (lookup-llvm-function-name f-name))
         ", i32* " 'env ", i32* "
         (convert-to-stack-reg
          (if (lambda-arbitrary-args? exp)
              (length (lambda-parameters exp))
              0)) ")"))))

(define (compile-llvm-definition exp target c-t-env)
  (let ((f-name (definition-variable exp))
	(f-lambda (definition-value exp))
        (f-target (make-stack-reg)))
    (add-llvm-function 
     f-name (lambda-parameters f-lambda)
     (compile-sequence (lambda-body f-lambda) f-target 'llvm-function)
     f-target)
    '()))

(define (compile-llvm-instruction exp target c-t-env)
  (let ((x (make-reg))
        (y (make-reg))
        (rx (make-reg))
        (ry (make-reg))
        (target2 (make-reg)))
    (append-code
     (compile (first-arg exp) x c-t-env)
     (compile (second-arg exp) y c-t-env)
     (lc rx " = lshr i32 " x ", 2") ; raw-number
     (lc ry " = lshr i32 " y ", 2")
     (cond ((member (operator exp) llvm-shift-instructions)
            (llvm-shift-op target2 (operator exp) rx ry))
           ((member (operator exp) llvm-boolean-instructions) ;; FIXME: what if we compare two pointers?
            (let ((t1 (make-reg)))
              (append-code (llvm-instruction t1 (operator exp) rx ry)
                           (llvm-zext target2 "i1" t1 "i32"))))
           (else ;; binary operation
            (llvm-instruction target2 (operator exp) rx ry)))
     (lc target " = call i32 @make-number(i32 " target2 ")"))))
     

(define (compile-application exp target c-t-env)
  (define (build-param-list param-list operands index)
    (if (null? operands) '()
        (let ((t1 (make-stack-reg)))
          (append-code 
           (compile (car operands) t1 c-t-env)
           (llvm-call (make-reg) 'vector-set! param-list index t1)
           (build-param-list param-list (cdr operands) (+ 1 index))))))

  (if (member (operator exp) llvm-primitive-functions)
      (compile-llvm-application exp target c-t-env)
      (let ((proc (make-stack-reg))
            (f-env (make-stack-reg))
            (f-nparams (make-stack-reg))
            (call-env (make-stack-reg))
            (f-func (make-reg))
            (func (make-reg)))
        (append-code
         (compile (operator exp) proc c-t-env)
         (llvm-call f-env 'get-procedure-env proc)
         (llvm-call call-env 'make-env (length (operands exp)) f-env)
         (build-param-list call-env (operands exp) 1)
         (llvm-call f-nparams 'get-procedure-nparams proc)
         (llvm-call (make-reg) 'fix-arbitrary-procs f-nparams call-env)
         (llvm-call target 'apply-procedure proc call-env)))))

(define (compile-llvm-application exp target c-t-env)
  (define (operands-code ops t-vars)
    (if (null? ops) '()
        (append-code
         (compile (car ops) (car t-vars) c-t-env)
         (operands-code (cdr ops) (cdr t-vars)))))
  
  (let ((t-vars (map (lambda (operand) (make-stack-reg)) (operands exp))))        
    (append-code
     (operands-code (operands exp) t-vars)
     (llvm-call2 target (operator exp) t-vars))))

(define bootstrap-llvm-code
";implementation
declare i32 @printf(i8*, ...)
declare i32 @exit(i32)
declare i32 @getchar()
declare void @llvm.memcpy(i8*, i8*, i32, i32)

declare i8* @llvm_gc_allocate(i32)
declare void @llvm_gc_initialize(i32)

declare void @llvm.gcroot(i8**, i8*)
declare void @llvm.gcwrite(i8*, i8*, i8**)

;; Support functions

define i32 @allocate-bytearray(i32* %size) {
  %size1 = call i32 @raw-number(i32* %size)
  %res = malloc i8, i32 %size1
  %res1 = ptrtoint i8* %res to i32
  ret i32 %res1
}

define i32 @bytearray-ref(i8* %arr, i32 %index) {
  %ptr = getelementptr i8* %arr, i32 %index
  %res = load i8* %ptr
  %res2 = zext i8 %res to i32
  %res3 = call i32 @make-number(i32 %res2)
  ret i32 %res3
}

define void @bytearray-set(i8* %arr, i32 %index, i32 %value) {
 %ptr = getelementptr i8* %arr, i32 %index
 %value.1 = trunc i32 %value to i8
 store i8 %value.1, i8* %ptr
 ret void
}

define i32 @make-procedure(i32 (i32*)* %raw-func, i32* %env, i32* %nparams) {
 %obj = call i8* @llvm_gc_allocate(i32 16)
 %obj.1 = bitcast i8* %obj to i32*
 store i32 38, i32* %obj.1 ; size 4, tag 3, forward bit = 0

 %ptr.1 = getelementptr i32* %obj.1, i32 1
 %raw-func.1 = ptrtoint i32 (i32*)* %raw-func to i32
 store i32 %raw-func.1, i32* %ptr.1

 %ptr.2 = getelementptr i32* %obj.1, i32 2
 %env.1 = load i32* %env
 store i32 %env.1, i32* %ptr.2

 %ptr.3 = getelementptr i32* %obj.1, i32 3
 %nparams.1 = load i32* %nparams
 store i32 %nparams.1, i32* %ptr.3

 %res = ptrtoint i8* %obj to i32
 %res.1 = or i32 %res, 3 ; tag 3, procedure. 
 ret i32 %res.1
}

define i32 @make-string-or-symbol(i32 %raw-str, i32* %size, i32* %symbolp) {
 %obj = call i8* @llvm_gc_allocate(i32 16)
 %obj.1 = bitcast i8* %obj to i32*
 store i32 36, i32* %obj.1 ; size 4, tag 2, forward bit = 0

 %ptr.1 = getelementptr i32* %obj.1, i32 1
 store i32 %raw-str, i32* %ptr.1

 %ptr.2 = getelementptr i32* %obj.1, i32 2
 %size.1 = load i32* %size
 store i32 %size.1, i32* %ptr.2

 %ptr.3 = getelementptr i32* %obj.1, i32 3
 %symbolp.1 = load i32* %symbolp
 store i32 %symbolp.1, i32* %ptr.3

 %res = ptrtoint i8* %obj to i32
 %res.1 = or i32 %res, 2 ; tag 2, string/symbol. 
 ret i32 %res.1
}

define i8* @string-bytes(i32* %str) {
 %str.1 = call i32* @points-to(i32* %str)
 %str.2 = getelementptr i32* %str.1, i32 1
 %bytes = load i32* %str.2
 %bytes.2 = inttoptr i32 %bytes to i8*
 ret i8* %bytes.2
}

define i32 @clear-tag(i32* %x) {
 %x.1 = load i32* %x
 %x.2 = lshr i32 %x.1, 2
 %x.3 = shl i32 %x.2, 2
 ret i32 %x.3
}
 
define i32 @make-number(i32 %val) {
 %res = shl i32 %val, 2
 ret i32 %res
}

define i32 @raw-number(i32* %x) {
 %raw = load i32* %x
 %raw.1 = lshr i32 %raw, 2
 ret i32 %raw.1
}

define i32* @points-to(i32* %x) {
 %x.1 = load i32* %x
 %x.2 = lshr i32 %x.1, 2
 %x.3 = shl i32 %x.2, 2
 %ptr.1 = inttoptr i32 %x.3 to i32*
 ret i32* %ptr.1
}

define i32 @tag-eq(i32* %x, i32 %tag) {
 %x.1 = load i32* %x
 %tag.1 = and i32 %x.1, 3
 %bool = icmp eq i32 %tag.1, %tag
 br i1 %bool, label %eq, label %noteq
eq:
 ret i32 4 ; number 1
noteq:
 ret i32 0 ; number 0
}

;; Primitive scheme functions

define i32 @llvm-read-char() {
  %res = call i32 @getchar()
  %res.1 = call i32 @make-number(i32 %res)
  ret i32 %res.1
}

define i32 @print-number(i32* %format, i32* %value) {
  %format.2 = call i8* @string-bytes(i32* %format)
  %number = call i32 @raw-number(i32* %value) 
  call i32 (i8*, ...)* @printf(i8* %format.2, i32 %number)
  ret i32 0
}

define i32 @print-string-or-symbol(i32* %str) {
  %str.2 = call i8* @string-bytes(i32* %str)
  call i32 (i8*, ...)* @printf(i8* %str.2)
  ret i32 0
}

define i32 @allocate-object(i32* %size, i32* %tag) {
 %size.1 = load i32* %size        ; loading number gives size * 4.
 %alloc_size = add i32 %size.1, 4 ; header.
 %obj = call i8* @llvm_gc_allocate(i32 %alloc_size)
 %obj.1 = bitcast i8* %obj to i32*
 %tag.1 = call i32 @raw-number(i32* %tag)
 %objtag.1 = or i32 %size.1, %tag.1
 %objtag.2 = shl i32 %objtag.1, 1 ; forwarding/mark bit
 store i32 %objtag.2, i32* %obj.1
 %res = ptrtoint i8* %obj to i32
 %res.1 = or i32 %res, %tag.1     ; type tag.
 ret i32 %res.1
}

define i32 @object-size(i32* %x) {
 %ptr = call i32* @points-to(i32* %x)
 %size = load i32* %ptr
 %size.1 = lshr i32 %size, 3
 %size.2 = shl i32 %size.1, 2
 ret i32 %size.2
}

define i32 @object-ref(i32* %obj, i32* %index) {
 %ptr = call i32* @points-to(i32* %obj)
 %index.1 = call i32 @raw-number(i32* %index)
 %index.2 = add i32 %index.1, 1
 %ptr.1 = getelementptr i32* %ptr, i32 %index.2
 %ref = load i32* %ptr.1 ;; gcread
 ret i32 %ref
}

define i32 @object-set(i32* %obj, i32* %index, i32* %value) {
 %ptr = call i32* @points-to(i32* %obj)
 %index.1 = call i32 @raw-number(i32* %index)
 %index.2 = add i32 %index.1, 1
 %ptr.1 = getelementptr i32* %ptr, i32 %index.2
 %val = load i32* %value ;; gcread
 store i32 %val, i32* %ptr.1 ;; gcwrite
 %res = load i32* %obj
 ret i32 %res
}

define i32 @allocate-string-or-symbol(i32* %size, i32* %symbolp) {
  %bytes = call i32 @allocate-bytearray(i32 *%size)
  %res = call i32 @make-string-or-symbol(i32 %bytes, i32* %size, i32* %symbolp)
  ret i32 %res
}

define i32 @string-ref(i32* %str, i32* %index) {
 %bytes = call i8* @string-bytes(i32* %str)
 %index.1 = call i32 @raw-number(i32* %index)
 %res = call i32 @bytearray-ref(i8* %bytes, i32 %index.1)
 ret i32 %res
}

define i32 @string-set(i32* %str, i32* %index, i32* %value) {
 %bytes = call i8* @string-bytes(i32* %str)
 %index.1 = call i32 @raw-number(i32* %index)
 %value.1 = call i32 @raw-number(i32* %value)
 call void @bytearray-set(i8* %bytes, i32 %index.1, i32 %value.1)
 %res = load i32* %str
 ret i32 %res
}

define i32 @mem-cpy(i32* %src, i32* %dst, i32* %size) {
 %src.1 = call i32* @points-to(i32* %src)
 %src.2 = bitcast i32* %src.1 to i8*
 %dst.1 = call i32* @points-to(i32* %dst)
 %dst.2 = bitcast i32* %dst.1 to i8*
 %size.2 = call i32 @raw-number(i32* %size)
 call void @llvm.memcpy(i8* %dst.2, i8* %src.2, i32 %size.2, i32 0)
 %res = load i32* %dst
 ret i32 %res
}

define i32 @apply-procedure(i32* %proc, i32* %callenv) {
 %proc.1 = call i32* @points-to(i32* %proc)
 %ptr.1 = getelementptr i32* %proc.1, i32 1
 %raw-func = load i32* %ptr.1
 %raw-func.1 = inttoptr i32 %raw-func to i32 (i32*)*
 %res = call i32 %raw-func.1(i32* %callenv)
 ret i32 %res
}

define i32 @number(i32* %x) {
 %res = call i32 @tag-eq(i32* %x, i32 0)
 ret i32 %res
}

define i32 @vector(i32* %x) {
 %res = call i32 @tag-eq(i32* %x, i32 1)
 ret i32 %res
}

define i32 @string-or-symbol(i32* %x) {
 %res = call i32 @tag-eq(i32* %x, i32 2);
 ret i32 %res
}

define i32 @procedure(i32* %x) {
 %res = call i32 @tag-eq(i32* %x, i32 3)
 ret i32 %res
}

define i32 @null(i32* %x) {
 %x.1 = load i32* %x
 %bool = icmp eq i32 %x.1, 1 ; null vector pointer?
 br i1 %bool, label %eq, label %noteq
eq:
 ret i32 4 ; number 1
noteq:
 ret i32 0 ; number 0
}

define i32 @make-null() {
 ret i32 1
}

define i32 @make-true() {
 ret i32 4
}

define i32 @end() {
  call i32(i32)* @exit(i32 0)
  ret i32 0
}

define i32 @main(i32 %argc, i8** %argv) {
  call void @llvm_gc_initialize(i32 2000000)

  %env = alloca i32
  store i32 0, i32* %env
  %res = call i32 @startup(i32* %env)
  ret i32 %res
}

;; Autogenerated code
")

(define bootstrap
  '(begin 
     (llvm-define (and x y) (if x y (make-null)))
     (llvm-define (or x y)  (if x (make-true) y))
     (llvm-define (not x) (if x (make-null) (make-true)))

     (llvm-define (ensure x message) (cond ((not x) (print-string/symbol message) (exit))))
          
     (llvm-define (make-vector size) (allocate-object size 1)) 
             
     (llvm-define (vector-size vector) (object-size vector))

     (llvm-define (pair? x) (if (vector? x) (= (vector-size x) 2) (make-null)))
     
     (llvm-define (vector-ref vector index)
                  (ensure (vector? vector) "vector-ref: not a vector.")
                  (ensure (not (null? vector)) "vector-ref: null vector")
                  (ensure (< index (vector-size vector)) "vector-ref: out of range.")
                  (object-ref vector index))

     (llvm-define (vector-set! vector index value) 
                  (ensure (vector? vector) "vector-set!: not a vector.")
                  (ensure (not (null? vector)) "vector-set!: null vector")
                  (ensure (< index (vector-size vector)) "vector-set!: out of range.")
                  (object-set! vector index value))
    
     (llvm-define (set-enclosing-env! env enclosing-env) (vector-set! env 0 enclosing-env))
     (llvm-define (get-enclosing-env env) (vector-ref env 0))
      ; +2?: env + arbitrary arg for function called with nparams - 1.
     (llvm-define (make-env nparams env) (set-enclosing-env! (make-vector (+ nparams 2)) env))
                   
     (llvm-define (get-procedure-env procedure)
                  (ensure (procedure? procedure) "get-procedure-env: not a procedure.")
                  (object-ref procedure 1))

     (llvm-define (get-procedure-nparams procedure) (object-ref procedure 2))
     
     (llvm-define (fix-arb-procs n-params end call-env)
                  (cond ((= n-params end) (make-null))
                        (else (cons (vector-ref call-env n-params)
                                    (fix-arb-procs (+ n-params 1) end call-env)))))
     (llvm-define (fix-arbitrary-procs n-params call-env)
                  (if (= n-params 0) 1
                      (vector-set! 
                       call-env n-params 
                       (fix-arb-procs n-params (- (object-size call-env) 1) call-env))))
                       
     (llvm-define (string? x) (if (string/symbol? x) (= (object-ref x 2) 0) (make-null)))
     (llvm-define (symbol? x) (if (string/symbol? x) (= (object-ref x 2) 1) (make-null)))
     
     (llvm-define (string-length str) (object-ref str 1))
     
     (llvm-define (string->symbol str)
                  (ensure (string? str) "string->symbol: not a string")                  
                  (object-set! (mem-cpy str (allocate-object 3 2) 16) 2 1))

     (llvm-define (symbol->string sym)
                  (ensure (symbol? sym) "symbol->string: not a symbol")                  
                  (object-set! (mem-cpy sym (allocate-object 3 2) 16) 2 0))

     (llvm-define (list->string-helper str lst pos)
                  (cond ((null? lst) (string-set! str pos 0))
                        (else 
                         (string-set! str pos (car lst))
                         (list->string-helper str (cdr lst) (+ pos 1)))))
     
     (llvm-define (string->list-helper str pos end)
                  (cond ((= pos end) '())
                        (else (cons (string-ref str pos)
                                    (string->list-helper str (+ pos 1) end)))))
     (llvm-define (string->list str)
                  (ensure (string? str) "string->list: not a string")
                  (string->list-helper str 0 (string-length str)))
     
     (llvm-define (char->integer ch) ch)
     (llvm-define (integer->char ch) ch)
     
     
     (llvm-define (lookup-variable env scope index)
                  (if (= 0 scope)
                      (vector-ref env index)
                      (lookup-variable (vector-ref env 0)
                                       (- scope 1)
                                       index)))
     
     (llvm-define (set-variable! env scope index value)
                  (if (= 0 scope)
                      (vector-set! env index value)
                      (set-variable! (vector-ref env 0)
                                     (- scope 1)
                                     index value)))
                                    
     (llvm-define (cons x y) (object-set! (object-set! (make-vector 2) 0 x) 1 y))
     (llvm-define (car cell) (vector-ref cell 0))
     (llvm-define (cdr cell) (vector-ref cell 1))
     (llvm-define (cddr x) (cdr (cdr x)))
     (llvm-define (cdddr x) (cdr (cdr (cdr x))))
     (llvm-define (cadr x) (car (cdr x)))
     (llvm-define (cdadr x) (cdr (car (cdr x))))
     (llvm-define (caadr x) (car (car (cdr x))))
     (llvm-define (caddr x) (car (cdr (cdr x))))
     (llvm-define (cadddr x) (car (cdr (cdr (cdr x)))))
     (llvm-define (set-car! cell val) (vector-set! cell 0 val))
     (llvm-define (set-cdr! cell val) (vector-set! cell 1 val))
     
     
     (llvm-define (* x y)
                  (ensure (number? x) "*: first argument is not a number.")
                  (ensure (number? y) "*: second argument is not a number.")
                  (mul x y))

     (llvm-define (- x y)
                  (ensure (number? x) "-: first argument is not a number.")
                  (ensure (number? y) "-: second argument is not a number.")
                  (sub x y))
     
     (llvm-define (+ x y)
                  (ensure (number? x) "+: first argument is not a number.")
                  (ensure (number? y) "+: second argument is not a number.")
                  (add x y))

     (llvm-define (/ x y)
                  (ensure (number? x) "/: first argument is not a number.")
                  (ensure (number? y) "/: second argument is not a number.")
                  (div x y))
     
     (llvm-define (% x y)
                  (ensure (number? x) "%: first argument is not a number.")
                  (ensure (number? y) "%: second argument is not a number.")
                  (rem x y))

     (llvm-define (= x y)
                  (cond ((and (number? x) (number? y))
                         (cmp-eq x y))
                        (else (ensure 0 "=: nonapplicable types."))))
     (llvm-define (> x y)
                  (cond ((and (number? x) (number? y))
                         (cmp-ugt x y))
                        (else (ensure 0 ">: nonapplicable types."))))

     (llvm-define (< x y)
                  (cond ((and (number? x) (number? y))
                         (cmp-ult x y))
                        (else (ensure 0 "<: nonapplicable types."))))

     
     (llvm-define (display x)
                  (cond ((number? x) (print-number "%d" x))
                        ((string? x) (print-string/symbol x))
                        ((symbol? x) (print-string/symbol "'") (print-string/symbol x))
                        ((null? x) (print-string/symbol "nil"))
                        ((pair? x) (print-string/symbol "(")
                                   (display (car x))
                                   (print-string/symbol " . ")
                                   (display (cdr x))
                                   (print-string/symbol ")"))
                        (else (print-string/symbol "display: nonapplicable type.")))
                  x)

;(define bstrap2 '(     
;

     (define (list->string lst)
       (ensure (vector? lst) "list->string: not a list")
       (list->string-helper (allocate-string/symbol (+ (length lst) 1) 0) lst 0))

     (define (newline) (display (list->string (cons 10 '()))))

     (define (string/symbol-data-eq? x y pos len)
       (cond ((= pos len) 1)
             ((= (string-ref x pos) (string-ref y pos)) 
              (string/symbol-data-eq? x y (+ pos 1) len))
             (else '())))

     (define (eq? x y)
       (cond ((and (number? x) (number? y)) (= x y))
             ((and (string? x) (string? y))
              (if (= (string-length x) (string-length y))
                  (string/symbol-data-eq? x y 0 (string-length x)) '()))
             ((and (symbol? x) (symbol? y))
              (if (= (string-length x) (string-length y))
                  (string/symbol-data-eq? x y 0 (string-length x)) '()))
             (else (cmp-eq x y))))
          
     (define (member el lst)
       (cond ((null? lst) '())
             ((eq? el (car lst)) 1)
             (else (member el (cdr lst)))))
     
     (define (length lst)
       (cond ((null? lst) 0)
             (else (+ 1 (length (cdr lst))))))
     
     (define (nth lst el)
       (cond ((null? lst) '())
             ((= el 0) (car lst))
             (else (nth (cdr lst) (- el 1)))))
     
     (define (map fn lst)
       (cond ((null? lst) '())
             (else (cons (fn (car lst)) (map fn (cdr lst))))))

     (define append 
       (lambda l
         (define (app2 l1 l2)
           (cond ((null? l1) l2)
                 (else (cons (car l1) (app2 (cdr l1) l2)))))
         (define (app3 l1 l2 l3)
           (cond ((null? l3) (app2 l1 l2))
                 (else (app3 (app2 l1 l2) (car l3) (cdr l3)))))
         
         (cond ((null? l) '())
               ((null? (cdr l)) (car l))
               (else (app3 (car l) (cadr l) (cddr l))))))
                           
     (define (reverse lst)
       (if (null? lst) lst
           (append (reverse (cdr lst)) (list (car lst)))))
     
     (define (number->string n)
       (define (nmb-str n res)
         (if (> n 9) 
             (nmb-str (/ n 10) (cons (nth number-chars (% n 10)) res))
             (cons (nth number-chars n) res)))
       (list->string (nmb-str n '())))
     
     (define (list? x)
       (cond ((null? x) 1)
             ((pair? x) (list? (cdr x)))
             (else '())))
     (define list (lambda x x))
     
     (define (assoc x lst)
       (cond ((null? lst) '())
             ((eq? x (car (car lst))) (car lst))
             (else (assoc x (cdr lst)))))
     
     (define (string-append str1 str2)
       (list->string (append (string->list str1) (string->list str2))))
     
     (define read-char-peek '())
     (define (peek-char)
       (cond ((null? read-char-peek)
              (set! read-char-peek (llvm-read-char))
              read-char-peek)
             (else read-char-peek)))
     (define (read-char)
       (define peek read-char-peek)
       (cond ((null? peek) (llvm-read-char))
             (else (set! read-char-peek '())
                   peek)))
     
     (define number-chars (quote (48 49 50 51 52 53 54 55 56 57)))
     (define (char-whitespace? ch) (or (eq? ch 32) (eq? ch 10)))
     (define (char-numeric? ch) (member ch number-chars))
     (define (char-left-paren? ch) (eq? ch 40))
     (define (char-right-paren? ch) (eq? ch 41))
     (define (char-comment? ch) (eq? ch 59))
     (define (char-string? ch) (eq? ch 34))
     (define (char-newline? ch) (eq? ch 10))
     (define (char-dot? ch) (eq? ch 46))
     (define (char-quote? ch) (eq? ch 39))
     (define (char-backquote? ch) (eq? ch 96))
     (define (char-comma? ch) (eq? ch 44))
     (define (char-backslash? ch) (eq? ch 92))
     (define (char-character? ch) (eq? ch 35)) ; #
     (define identifier-end '(40 41 32 10))
     
     (define (read)
       (define ch (read-char))
       (cond ((char-left-paren? ch) (read-list))
             ((char-whitespace? ch) (read))
             ((char-comment? ch) (read-comment) (read))
             ((char-quote? ch) (cons 'quote (cons (read) '())))
             ((char-string? ch) (read-string))
             ((char-character? ch) (read-char-quote))
             ((char-numeric? ch) (read-number ch))
             (else (read-identifier ch))))
     
     (define (read-char-quote)
       (read-char) (read-char))
     
     (define (read-comment)
       (if (not (char-newline? (read-char)))
           (read-comment)))
     
     (define (read-list)
       (define ch (read-char))
       (cond ((char-right-paren? ch) '())
             ((char-dot? ch) (car (read-list)))
             ((char-left-paren? ch) (cons (read-list)  (read-list)))
             ((char-whitespace? ch) (read-list))
             ((char-comment? ch) (read-comment) (read-list))
             ((char-quote? ch) (cons (cons 'quote (read)) (read-list)))
             ((char-string? ch) (cons (read-string) (read-list)))
             ((char-character? ch) (read-char-quote))
             ((char-numeric? ch) (cons (read-number ch) (read-list)))
             (else (cons (read-identifier ch) (read-list)))))
     
     (define (char-list->number lst res)
       (define (nmemb x lst pos)
         (if (= x (car lst)) pos (nmemb x (cdr lst) (+ pos 1))))
       (if (null? lst) res
           (char-list->number 
            (cdr lst) (+ (* res 10)
                         (nmemb (car lst) number-chars 0)))))
        
     (define (read-number ch)
       (define (read-nmb)
         (define peek (peek-char))
         (if (char-numeric? peek) 
             (cons (read-char) (read-nmb)) '()))
       (char-list->number (cons ch (read-nmb)) 0))
     
     (define (read-identifier ch)
       (define (read-id)
         (if (member (peek-char) identifier-end) '()
             (cons (read-char) (read-id))))
       (string->symbol (list->string (cons ch (read-id)))))
     
     (define (read-string)
       (define (read-str)
         (define ch (read-char))
         (cond ((char-backslash? ch) (cons (read-char) (read-str)))           
               ((char-string? ch) '())
               (else (cons ch (read-str)))))
       (list->string (read-str)))
  ))

(define (compiler exp)
  (init-generators)
  (let ((printer (lambda (line) (display line) (newline)))
        (target (make-reg)))
    (let ((res (compile (append bootstrap exp) target '())))
      (map printer llvm-string-list)
      (display bootstrap-llvm-code)
      (display "define i32 @startup(i32* %env) {\n")
      (map printer res)
      (display (c "ret i32 " (llvm-repr target)))
      (display "\n}\n")
      (display "; FUNCTIONS\n")
      (map (lambda (function) (map printer function) (newline))
           llvm-function-list))
    'ok))

(define (ccomp exp)
  (init-generators)
  (compile exp (make-stack-reg) '()))

;(compiler (list (read)))

;(compiler '((display (read))))

;(compiler '((display (string-append "" "bar"))))
;(compiler '((display (list->string (append (string->list "") (string->list "bar"))))))
;(compiler '((display (string-length ""))))

;(compiler (cons (with-input-from-file "compile.ss" read) '())) ;; debug
;; Some tests:
(compiler '((display "Hello World") (newline)
            (display 42) (newline)
            (display (cons 1 2)) (newline)
            (display 'symbol) (newline)
            (display (quote (1 2 3 4))) (newline)))

;(compiler '((display (vector-ref (vector-set! (allocate-object 2 1) 1 42) 1))))
;(compiler '((if (cmpeq (object-ref (object-set! (allocate-object 2 1) 1 42) 1) 42) (print-string/symbol "foo") (print-string/symbol "bar"))))
;(compiler '((if (pair? (cons 1 2)) (print-string/symbol "foo") (print-string/symbol "bar"))))
;(compiler '((display (object-size (allocate-object 10 1)))))
;(compiler '((display (make-null))))
;(compiler '((print-string/symbol "foo")))
;(compiler '((+ 1 2)))
;(compiler '((display (quote (1 2 "foo" "bar" fum)))))
;(compiler '((display (quote (1 . (2 . 3))))))
;(compiler '((display (list->string (quote (97 98 98 99))))))
;(compiler '((display (number->string 123546))))
;(compiler '((display (string? (symbol->string (quote foo))))))
;(compiler '((display (string->list "foobar"))))
;(compiler '((display (string-append "foo" "bar"))))
;(compiler '((display (append (quote (1 2 3)) (quote (4 5 6))))))
;(compiler '((display (string->symbol "foo"))))
;(compiler '((display (symbol->string (quote foo)))))

;(compiler '((display (member 5 (quote (1 2 3 4))))))
;(compiler '((display (read))))
; Function application.
;(compiler '((define y 5) 
;            (define (fac x) (if (= x 0) 1 (* x (fac (- x 1))))) 
;            (display (fac y))))
;->120
;(compiler '((define y 5)
;            (define (fac x)
;              (cond ((= x 0) 1)
;                    (else (* x (fac (- x 1))))))
;            (display (fac y))))
;
; Returning lambda with state.
;(compiler '((define (adder x) (lambda (y) (+ x y)))
;            (define a (adder 3)) 
;            (define b (adder 4))
;            (display (+ (a 1) (b 2)))))
;->10                  
;
; Mutually recursive functions.
;(compiler '((define (odd x) (if (= x 1) 1
;                                (if (even (- x 1))
;                                    1
;				    0)))
;            (define (even x) (if (= x 2)
;                                 1
;                                 (if (odd (- x 1))
;                                     1
;                                     0)))
;            (display (even 10))))
;->1

;(compiler '((define (foo x . y) (display y))
;            (foo 1 2 3 4)))


;(compiler '((* (cons 1 2) 3)))
;*: first argument is not a number.
;(compiler '((vector-ref 2 3)))
;vector-ref: not a vector.
;(compiler '((peek-char) (read-char)))

)




