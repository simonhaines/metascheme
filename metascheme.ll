;compile-assignment: (define (list->string lst) (ensure (vector? lst) "list->string: not a list") (list->string-helper (allocate-string/symbol (+ (length lst) 1) 0) lst 0))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 1)

;compile-assignment: (define (newline) (display (list->string (cons 10 (quote ())))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 2)

;compile-assignment: (define (string/symbol-data-eq? x y pos len) (cond ((= pos len) 1) ((= (string-ref x pos) (string-ref y pos)) (string/symbol-data-eq? x y (+ pos 1) len)) (else (quote ()))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 3)

;compile-assignment: (define (eq? x y) (cond ((and (number? x) (number? y)) (= x y)) ((and (string? x) (string? y)) (if (= (string-length x) (string-length y)) (string/symbol-data-eq? x y 0 (string-length x)) (quote ()))) ((and (symbol? x) (symbol? y)) (if (= (string-length x) (string-length y)) (string/symbol-data-eq? x y 0 (string-length x)) (quote ()))) (else (cmp-eq x y))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 4)

;compile-assignment: (define (member el lst) (cond ((null? lst) (quote ())) ((eq? el (car lst)) 1) (else (member el (cdr lst)))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 5)

;compile-assignment: (define (length lst) (cond ((null? lst) 0) (else (+ 1 (length (cdr lst))))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 6)

;compile-assignment: (define (nth lst el) (cond ((null? lst) (quote ())) ((= el 0) (car lst)) (else (nth (cdr lst) (- el 1)))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 7)

;compile-assignment: (define (map fn lst) (cond ((null? lst) (quote ())) (else (cons (fn (car lst)) (map fn (cdr lst))))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 8)

;compile-assignment: (define append (lambda l (define (app2 l1 l2) (cond ((null? l1) l2) (else (cons (car l1) (app2 (cdr l1) l2))))) (define (app3 l1 l2 l3) (cond ((null? l3) (app2 l1 l2)) (else (app3 (app2 l1 l2) (car l3) (cdr l3))))) (cond ((null? l) (quote ())) ((null? (cdr l)) (car l)) (else (app3 (car l) (cadr l) (cddr l))))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 9)

;compile-assignment: (define (app2 l1 l2) (cond ((null? l1) l2) (else (cons (car l1) (app2 (cdr l1) l2)))))
;c-t-env: ((app2 app3) (l) (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 1)

;compile-assignment: (define (app3 l1 l2 l3) (cond ((null? l3) (app2 l1 l2)) (else (app3 (app2 l1 l2) (car l3) (cdr l3)))))
;c-t-env: ((app2 app3) (l) (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 2)

;compile-assignment: (define (reverse lst) (if (null? lst) lst (append (reverse (cdr lst)) (list (car lst)))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 10)

;compile-assignment: (define (number->string n) (define (nmb-str n res) (if (> n 9) (nmb-str (/ n 10) (cons (nth number-chars (% n 10)) res)) (cons (nth number-chars n) res))) (list->string (nmb-str n (quote ()))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 11)

;compile-assignment: (define (nmb-str n res) (if (> n 9) (nmb-str (/ n 10) (cons (nth number-chars (% n 10)) res)) (cons (nth number-chars n) res)))
;c-t-env: ((nmb-str) (n) (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 1)

;compile-assignment: (define (list? x) (cond ((null? x) 1) ((pair? x) (list? (cdr x))) (else (quote ()))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 12)

;compile-assignment: (define list (lambda x x))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 13)

;compile-assignment: (define (assoc x lst) (cond ((null? lst) (quote ())) ((eq? x (car (car lst))) (car lst)) (else (assoc x (cdr lst)))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 14)

;compile-assignment: (define (string-append str1 str2) (list->string (append (string->list str1) (string->list str2))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 15)

;compile-assignment: (define read-char-peek (quote ()))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 16)

;compile-assignment: (define (peek-char) (cond ((null? read-char-peek) (set! read-char-peek (llvm-read-char)) read-char-peek) (else read-char-peek)))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 17)

;compile-assignment: (set! read-char-peek (llvm-read-char))
;c-t-env: (() (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (1 . 16)

;compile-assignment: (define (read-char) (define peek read-char-peek) (cond ((null? peek) (llvm-read-char)) (else (set! read-char-peek (quote ())) peek)))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 18)

;compile-assignment: (define peek read-char-peek)
;c-t-env: ((peek) () (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 1)

;compile-assignment: (set! read-char-peek (quote ()))
;c-t-env: ((peek) () (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (2 . 16)

;compile-assignment: (define number-chars (quote (48 49 50 51 52 53 54 55 56 57)))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 19)

;compile-assignment: (define (char-whitespace? ch) (or (eq? ch 32) (eq? ch 10)))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 20)

;compile-assignment: (define (char-numeric? ch) (member ch number-chars))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 21)

;compile-assignment: (define (char-left-paren? ch) (eq? ch 40))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 22)

;compile-assignment: (define (char-right-paren? ch) (eq? ch 41))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 23)

;compile-assignment: (define (char-comment? ch) (eq? ch 59))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 24)

;compile-assignment: (define (char-string? ch) (eq? ch 34))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 25)

;compile-assignment: (define (char-newline? ch) (eq? ch 10))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 26)

;compile-assignment: (define (char-dot? ch) (eq? ch 46))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 27)

;compile-assignment: (define (char-quote? ch) (eq? ch 39))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 28)

;compile-assignment: (define (char-backquote? ch) (eq? ch 96))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 29)

;compile-assignment: (define (char-comma? ch) (eq? ch 44))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 30)

;compile-assignment: (define (char-backslash? ch) (eq? ch 92))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 31)

;compile-assignment: (define (char-character? ch) (eq? ch 35))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 32)

;compile-assignment: (define identifier-end (quote (40 41 32 10)))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 33)

;compile-assignment: (define (read) (define ch (read-char)) (cond ((char-left-paren? ch) (read-list)) ((char-whitespace? ch) (read)) ((char-comment? ch) (read-comment) (read)) ((char-quote? ch) (cons (quote quote) (cons (read) (quote ())))) ((char-string? ch) (read-string)) ((char-character? ch) (read-char-quote)) ((char-numeric? ch) (read-number ch)) (else (read-identifier ch))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 34)

;compile-assignment: (define ch (read-char))
;c-t-env: ((ch) () (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 1)

;compile-assignment: (define (read-char-quote) (read-char) (read-char))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 35)

;compile-assignment: (define (read-comment) (if (not (char-newline? (read-char))) (read-comment)))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 36)

;compile-assignment: (define (read-list) (define ch (read-char)) (cond ((char-right-paren? ch) (quote ())) ((char-dot? ch) (car (read-list))) ((char-left-paren? ch) (cons (read-list) (read-list))) ((char-whitespace? ch) (read-list)) ((char-comment? ch) (read-comment) (read-list)) ((char-quote? ch) (cons (cons (quote quote) (read)) (read-list))) ((char-string? ch) (cons (read-string) (read-list))) ((char-character? ch) (read-char-quote)) ((char-numeric? ch) (cons (read-number ch) (read-list))) (else (cons (read-identifier ch) (read-list)))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 37)

;compile-assignment: (define ch (read-char))
;c-t-env: ((ch) () (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 1)

;compile-assignment: (define (char-list->number lst res) (define (nmemb x lst pos) (if (= x (car lst)) pos (nmemb x (cdr lst) (+ pos 1)))) (if (null? lst) res (char-list->number (cdr lst) (+ (* res 10) (nmemb (car lst) number-chars 0)))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 38)

;compile-assignment: (define (nmemb x lst pos) (if (= x (car lst)) pos (nmemb x (cdr lst) (+ pos 1))))
;c-t-env: ((nmemb) (lst res) (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 1)

;compile-assignment: (define (read-number ch) (define (read-nmb) (define peek (peek-char)) (if (char-numeric? peek) (cons (read-char) (read-nmb)) (quote ()))) (char-list->number (cons ch (read-nmb)) 0))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 39)

;compile-assignment: (define (read-nmb) (define peek (peek-char)) (if (char-numeric? peek) (cons (read-char) (read-nmb)) (quote ())))
;c-t-env: ((read-nmb) (ch) (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 1)

;compile-assignment: (define peek (peek-char))
;c-t-env: ((peek) () (read-nmb) (ch) (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 1)

;compile-assignment: (define (read-identifier ch) (define (read-id) (if (member (peek-char) identifier-end) (quote ()) (cons (read-char) (read-id)))) (string->symbol (list->string (cons ch (read-id)))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 40)

;compile-assignment: (define (read-id) (if (member (peek-char) identifier-end) (quote ()) (cons (read-char) (read-id))))
;c-t-env: ((read-id) (ch) (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 1)

;compile-assignment: (define (read-string) (define (read-str) (define ch (read-char)) (cond ((char-backslash? ch) (cons (read-char) (read-str))) ((char-string? ch) (quote ())) (else (cons ch (read-str))))) (list->string (read-str)))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 41)

;compile-assignment: (define (read-str) (define ch (read-char)) (cond ((char-backslash? ch) (cons (read-char) (read-str))) ((char-string? ch) (quote ())) (else (cons ch (read-str)))))
;c-t-env: ((read-str) () (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 1)

;compile-assignment: (define ch (read-char))
;c-t-env: ((ch) () (read-str) () (list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 1)

;compile-provide
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;llvm-function-names: (display < > = % / + - * set-cdr! set-car! cadddr caddr caadr cdadr cadr cdddr cddr cdr car cons set-variable! lookup-variable integer->char char->integer string->list string->list-helper list->string-helper symbol->string string->symbol string-length symbol? string? fix-arbitrary-procs fix-arb-procs get-procedure-nparams get-procedure-env make-env get-enclosing-env set-enclosing-env! vector-set! vector-ref pair? vector-size make-vector ensure not or and trace-var llvm-read-char print-number print-string/symbol allocate-object object-size object-ref object-set! allocate-string/symbol string-ref string-set! mem-cpy apply-procedure number? vector? string/symbol? procedure? null? make-null make-true exit)
;c-t-pos: (0 . 41)
;compile-assignment: (define (fib n) (if (< n 2) n (+ (fib (- n 1)) (fib (- n 2)))))
;c-t-env: ((list->string newline string/symbol-data-eq? eq? member length nth map append reverse number->string list? list assoc string-append read-char-peek peek-char read-char number-chars char-whitespace? char-numeric? char-left-paren? char-right-paren? char-comment? char-string? char-newline? char-dot? char-quote? char-backquote? char-comma? char-backslash? char-character? identifier-end read read-char-quote read-comment read-list char-list->number read-number read-identifier read-string fib))
;assigning to: (0 . 42)

@g8558 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g8508 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g8463 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g8386 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g8329 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g8294 = private unnamed_addr constant [7 x i8] c"symbol\00"
@g8288 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g8249 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g8216 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g8181 = private unnamed_addr constant [12 x i8] c"Hello World\00"
@g8152 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g8141 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g8071 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g8031 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7988 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7962 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7932 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7883 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7819 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7806 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7733 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7707 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7675 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7651 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7571 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7551 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7469 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7443 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7413 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7364 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7302 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7289 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g7138 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6995 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6969 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6926 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6900 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6857 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6816 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6788 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6745 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6719 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6689 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6646 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6618 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6586 = private unnamed_addr constant [6 x i8] c"quote\00"
@g6576 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6535 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6509 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6480 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6439 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6411 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6368 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6342 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6312 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6269 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6240 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6195 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6146 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6096 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6066 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g6055 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5988 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5962 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5909 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5870 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5829 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5788 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5760 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5719 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5691 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5644 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5610 = private unnamed_addr constant [6 x i8] c"quote\00"
@g5602 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5561 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5535 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5506 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5465 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5437 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5396 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5368 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5319 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5235 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5171 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5107 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g5043 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g4979 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g4915 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g4851 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g4787 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g4723 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g4659 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g4595 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g4531 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g4459 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g4413 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g4119 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g4108 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g4012 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g3944 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g3821 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g3721 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g3710 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g3620 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g3566 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g3545 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g3404 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g3393 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g3346 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g3235 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g3101 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g3058 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g2986 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g2899 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g2782 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g2727 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g2648 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g2521 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g2440 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g2381 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g2267 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g2130 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g1925 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g1747 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g1669 = private unnamed_addr constant [20 x i8] c"compile application\00"
@g1615 = private unnamed_addr constant [25 x i8] c"list->string: not a list\00"
@g1582 = private unnamed_addr constant [29 x i8] c"display: nonapplicable type.\00"
@g1569 = private unnamed_addr constant [2 x i8] c")\00"
@g1547 = private unnamed_addr constant [4 x i8] c" . \00"
@g1524 = private unnamed_addr constant [2 x i8] c"(\00"
@g1501 = private unnamed_addr constant [4 x i8] c"nil\00"
@g1474 = private unnamed_addr constant [2 x i8] c"'\00"
@g1435 = private unnamed_addr constant [3 x i8] c"%d\00"
@g1408 = private unnamed_addr constant [24 x i8] c"<: nonapplicable types.\00"
@g1363 = private unnamed_addr constant [24 x i8] c">: nonapplicable types.\00"
@g1318 = private unnamed_addr constant [24 x i8] c"=: nonapplicable types.\00"
@g1266 = private unnamed_addr constant [36 x i8] c"%: second argument is not a number.\00"
@g1246 = private unnamed_addr constant [35 x i8] c"%: first argument is not a number.\00"
@g1216 = private unnamed_addr constant [36 x i8] c"/: second argument is not a number.\00"
@g1196 = private unnamed_addr constant [35 x i8] c"/: first argument is not a number.\00"
@g1166 = private unnamed_addr constant [36 x i8] c"+: second argument is not a number.\00"
@g1146 = private unnamed_addr constant [35 x i8] c"+: first argument is not a number.\00"
@g1116 = private unnamed_addr constant [36 x i8] c"-: second argument is not a number.\00"
@g1096 = private unnamed_addr constant [35 x i8] c"-: first argument is not a number.\00"
@g1066 = private unnamed_addr constant [36 x i8] c"*: second argument is not a number.\00"
@g1046 = private unnamed_addr constant [35 x i8] c"*: first argument is not a number.\00"
@g730 = private unnamed_addr constant [27 x i8] c"string->list: not a string\00"
@g577 = private unnamed_addr constant [29 x i8] c"symbol->string: not a symbol\00"
@g528 = private unnamed_addr constant [29 x i8] c"string->symbol: not a string\00"
@g327 = private unnamed_addr constant [36 x i8] c"get-procedure-env: not a procedure.\00"
@g248 = private unnamed_addr constant [27 x i8] c"vector-set!: out of range.\00"
@g222 = private unnamed_addr constant [25 x i8] c"vector-set!: null vector\00"
@g199 = private unnamed_addr constant [27 x i8] c"vector-set!: not a vector.\00"
@g168 = private unnamed_addr constant [26 x i8] c"vector-ref: out of range.\00"
@g142 = private unnamed_addr constant [24 x i8] c"vector-ref: null vector\00"
@g119 = private unnamed_addr constant [26 x i8] c"vector-ref: not a vector.\00"
;implementation
declare i32 @printf(i8*, ...)
declare void @exit(i32)
declare i32 @getchar()
declare void @llvm.memcpy(i8*, i8*, i32, i32)

declare void @gc_init(i32)
declare i8* @gc_alloc(i32)

declare void @llvm.gcroot(i8**, i8*)
;declare void @llvm.gcwrite(i8*, i8*, i8**)

; Startup
declare i64 @startup(i64*)

; Debug
declare void @db_trace(i8*, i32, ...)

;; Support functions

; Debug
define i64 @trace-var(i64* %msg, i64* %param) {
  %bytes = call i8* @string-bytes(i64* %msg)
  call void(i8*, i32, ...) @db_trace(i8* %bytes, i32 1, i64* %param)
  ret i64 0
}

define i64 @allocate-bytearray(i64* %size) {
  %size.1 = call i64 @raw-number(i64* %size)
  %size.2 = trunc i64 %size.1 to i32
  %res = malloc i8, i32 %size.2
  store i8 0, i8* %res  ; String sentinel
  %res.1 = ptrtoint i8* %res to i64
  ret i64 %res.1
}

define i64 @bytearray-ref(i8* %arr, i64 %index) {
  %ptr = getelementptr i8* %arr, i64 %index
  %res = load i8* %ptr
  %res2 = zext i8 %res to i64
  %res3 = call i64 @make-number(i64 %res2)
  ret i64 %res3
}

define void @bytearray-set(i8* %arr, i64 %index, i64 %value) {
 %ptr = getelementptr i8* %arr, i64 %index
 %value.1 = trunc i64 %value to i8
 store i8 %value.1, i8* %ptr
 ret void
}

define i64 @make-procedure(i64 (i64*)* %raw-func, i64* %env, i64* %nparams) {
 %obj = call i8* @gc_alloc(i32 32)  ; 4 x 8-byte words
 %obj.1 = bitcast i8* %obj to i64*
 store i64 70, i64* %obj.1 ; size 8, tag 3, forward bit = 0 ;TODO wrong size!

 %ptr.1 = getelementptr i64* %obj.1, i32 1
 %raw-func.1 = ptrtoint i64 (i64*)* %raw-func to i64
 store i64 %raw-func.1, i64* %ptr.1

 %ptr.2 = getelementptr i64* %obj.1, i32 2
 %env.1 = load i64* %env
 store i64 %env.1, i64* %ptr.2

 %ptr.3 = getelementptr i64* %obj.1, i32 3
 %nparams.1 = load i64* %nparams
 store i64 %nparams.1, i64* %ptr.3

 %res = ptrtoint i8* %obj to i64
 %res.1 = or i64 %res, 3 ; tag 3, procedure. 
 ret i64 %res.1
}

define i64 @make-string-or-symbol(i64 %raw-str, i64* %size, i64* %symbolp) {
 %obj = call i8* @gc_alloc(i32 32)  ; 4 x 8-byte words
 %obj.1 = bitcast i8* %obj to i64*
 store i64 68, i64* %obj.1 ; size 8, tag 2, forward bit = 0

 %ptr.1 = getelementptr i64* %obj.1, i32 1
 store i64 %raw-str, i64* %ptr.1

 %ptr.2 = getelementptr i64* %obj.1, i32 2
 %size.1 = load i64* %size
 store i64 %size.1, i64* %ptr.2

 %ptr.3 = getelementptr i64* %obj.1, i32 3
 %symbolp.1 = load i64* %symbolp
 store i64 %symbolp.1, i64* %ptr.3

 %res = ptrtoint i8* %obj to i64
 %res.1 = or i64 %res, 2 ; tag 2, string/symbol. 
 ret i64 %res.1
}

define i8* @string-bytes(i64* %str) {
 %str.1 = call i64* @points-to(i64* %str)
 %str.2 = getelementptr i64* %str.1, i32 1
 %bytes = load i64* %str.2
 %bytes.2 = inttoptr i64 %bytes to i8*
 ret i8* %bytes.2
}

define i64 @clear-tag(i64* %x) {
 %x.1 = load i64* %x
 %x.2 = lshr i64 %x.1, 2
 %x.3 = shl i64 %x.2, 2
 ret i64 %x.3
}
 
define i64 @make-number(i64 %val) {
 %res = shl i64 %val, 2
 ret i64 %res
}

define i64 @raw-number(i64* %x) {
 %raw = load i64* %x
 %raw.1 = lshr i64 %raw, 2
 ret i64 %raw.1
}

define i64* @points-to(i64* %x) {
 %x.1 = load i64* %x
 %x.2 = lshr i64 %x.1, 2
 %x.3 = shl i64 %x.2, 2
 %ptr.1 = inttoptr i64 %x.3 to i64*
 ret i64* %ptr.1
}

define i64 @tag-eq(i64* %x, i64 %tag) {  ; SH tag argument can be i32
 %x.1 = load i64* %x
 %tag.1 = and i64 %x.1, 3
 %bool = icmp eq i64 %tag.1, %tag
 br i1 %bool, label %eq, label %noteq
eq:
 ret i64 4 ; number 1
noteq:
 ret i64 0 ; number 0
}

;; Primitive scheme functions

define i64 @llvm-read-char() {
  %res = call i32 @getchar()
  %res.1 = zext i32 %res to i64
  %res.2 = call i64 @make-number(i64 %res.1)
  ret i64 %res.1
}

define i64 @print-number(i64* %format, i64* %value) {
  %format.2 = call i8* @string-bytes(i64* %format)
  %number = call i64 @raw-number(i64* %value) 
  call i32 (i8*, ...)* @printf(i8* %format.2, i64 %number)
  ret i64 0
}

define i64 @print-string-or-symbol(i64* %str) {
  %str.2 = call i8* @string-bytes(i64* %str)
  call i32 (i8*, ...)* @printf(i8* %str.2)
  ret i64 0
}

@trace-allocate-object = private unnamed_addr constant [16 x i8] c"allocate-object\00"
define i64 @allocate-object(i64* %size, i64* %tag) {
 %str-reg = bitcast [16 x i8]* @trace-allocate-object to i8*
 call void(i8*, i32, ...) @db_trace(i8* %str-reg, i32 2, i64* %size, i64* %tag)

 %size.1 = load i64* %size        ; loading number gives size * 4.
 %alloc_size.1 = shl i64 %size.1, 1     ; align to 8 bytes (size * 8)
 %alloc_size.2 = add i64 %alloc_size.1, 8     ; header.
 %alloc_size.3 = trunc i64 %alloc_size.2 to i32
 %obj = call i8* @gc_alloc(i32 %alloc_size.3)
 %obj.1 = bitcast i8* %obj to i64*
 %tag.1 = call i64 @raw-number(i64* %tag)
 %objtag.1 = or i64 %size.1, %tag.1
 %objtag.2 = shl i64 %objtag.1, 1 ; forwarding/mark bit
 store i64 %objtag.2, i64* %obj.1
 %res = ptrtoint i8* %obj to i64
 %res.1 = or i64 %res, %tag.1     ; type tag.
 ret i64 %res.1
}

define i64 @object-size(i64* %x) {
 %ptr = call i64* @points-to(i64* %x)
 %size = load i64* %ptr
 %size.1 = lshr i64 %size, 3
 %size.2 = shl i64 %size.1, 2
 ret i64 %size.2
}

define i64 @object-ref(i64* %obj, i64* %index) {
 %ptr = call i64* @points-to(i64* %obj)
 %index.1 = call i64 @raw-number(i64* %index)
 %index.2 = add i64 %index.1, 1
 %ptr.1 = getelementptr i64* %ptr, i64 %index.2
 %ref = load i64* %ptr.1 ;; gcread
 ret i64 %ref
}

define i64 @object-set(i64* %obj, i64* %index, i64* %value) {
 %ptr = call i64* @points-to(i64* %obj)
 %index.1 = call i64 @raw-number(i64* %index)
 %index.2 = add i64 %index.1, 1
 %ptr.1 = getelementptr i64* %ptr, i64 %index.2
 %val = load i64* %value ;; gcread
 store i64 %val, i64* %ptr.1 ;; gcwrite
 %res = load i64* %obj
 ret i64 %res
}

define i64 @allocate-string-or-symbol(i64* %size, i64* %symbolp) {
  %bytes = call i64 @allocate-bytearray(i64 *%size)
  %res = call i64 @make-string-or-symbol(i64 %bytes, i64* %size, i64* %symbolp)
  ret i64 %res
}

define i64 @string-ref(i64* %str, i64* %index) {
 %bytes = call i8* @string-bytes(i64* %str)
 %index.1 = call i64 @raw-number(i64* %index)
 %res = call i64 @bytearray-ref(i8* %bytes, i64 %index.1)
 ret i64 %res
}

define i64 @string-set(i64* %str, i64* %index, i64* %value) {
 %bytes = call i8* @string-bytes(i64* %str)
 %index.1 = call i64 @raw-number(i64* %index)
 %value.1 = call i64 @raw-number(i64* %value)
 call void @bytearray-set(i8* %bytes, i64 %index.1, i64 %value.1)
 %res = load i64* %str
 ret i64 %res
}

define i64 @mem-cpy(i64* %src, i64* %dst, i64* %size) {
 %src.1 = call i64* @points-to(i64* %src)
 %src.2 = bitcast i64* %src.1 to i8*
 %dst.1 = call i64* @points-to(i64* %dst)
 %dst.2 = bitcast i64* %dst.1 to i8*
 %size.2 = call i64 @raw-number(i64* %size)
 %size.3 = trunc i64 %size.2 to i32
 call void @llvm.memcpy(i8* %dst.2, i8* %src.2, i32 %size.3, i32 0)
 %res = load i64* %dst
 ret i64 %res
}

define i64 @apply-procedure(i64* %proc, i64* %callenv) {
 %proc.1 = call i64* @points-to(i64* %proc)
 %ptr.1 = getelementptr i64* %proc.1, i32 1
 %raw-func = load i64* %ptr.1
 %raw-func.1 = inttoptr i64 %raw-func to i64 (i64*)*
 %res = call i64 %raw-func.1(i64* %callenv)
 ret i64 %res
}

define i64 @number(i64* %x) {
 %res = call i64 @tag-eq(i64* %x, i64 0)
 ret i64 %res
}

define i64 @vector(i64* %x) {
 %res = call i64 @tag-eq(i64* %x, i64 1)
 ret i64 %res
}

define i64 @string-or-symbol(i64* %x) {
 %res = call i64 @tag-eq(i64* %x, i64 2);
 ret i64 %res
}

define i64 @procedure(i64* %x) {
 %res = call i64 @tag-eq(i64* %x, i64 3)
 ret i64 %res
}

define i64 @null(i64* %x) {
 %x.1 = load i64* %x
 %bool = icmp eq i64 %x.1, 1 ; null vector pointer?
 br i1 %bool, label %eq, label %noteq
eq:
 ret i64 4 ; number 1
noteq:
 ret i64 0 ; number 0
}

define i64 @make-null() {
 ret i64 1
}

define i64 @make-true() {
 ret i64 4
}

define i64 @end() {
  call void(i32)* @exit(i32 0)
  ret i64 0
}

define i32 @main(i32 %argc, i8** %argv) {
  call void @gc_init(i32 2000000)

  %env = alloca i64
  store i64 0, i64* %env
  %res = call i64 @startup(i64* %env)
; Discard result
; %res.1 = trunc i64 %res to i32
; ret i32 %res.1
  ret i32 0
}

;; Autogenerated code
; FUNCTIONS

; @and
define i64 @f3(i64* %x, i64* %y) gc "shadow-stack" {
%r7 = alloca i8*
call void @llvm.gcroot(i8** %r7, i8* null)
%r5 = bitcast i8** %r7 to i64*
%r9 = alloca i8*
call void @llvm.gcroot(i8** %r9, i8* null)
%r6 = bitcast i8** %r9 to i64*
%r8 = load i64* %x
store i64 %r8, i64* %r6
%r10 = call i64 @f2(i64* %r6) ; @raw-number
%r11 = trunc i64 %r10 to i1
br i1 %r11, label %label1, label %label2
label1:
%r13 = alloca i8*
call void @llvm.gcroot(i8** %r13, i8* null)
%r5 = bitcast i8** %r13 to i64*
%r12 = load i64* %y
store i64 %r12, i64* %r5
br label %label3
label2:
%r15 = alloca i8*
call void @llvm.gcroot(i8** %r15, i8* null)
%r5 = bitcast i8** %r15 to i64*
%r14 = call i64 @make-null() ; @make-null
store i64 %r14, i64* %r5
br label %label3
label3:
%r16 = load i64* %r5
ret i64 %r16
}

; @or
define i64 @f4(i64* %x, i64* %y) gc "shadow-stack" {
%r20 = alloca i8*
call void @llvm.gcroot(i8** %r20, i8* null)
%r18 = bitcast i8** %r20 to i64*
%r22 = alloca i8*
call void @llvm.gcroot(i8** %r22, i8* null)
%r19 = bitcast i8** %r22 to i64*
%r21 = load i64* %x
store i64 %r21, i64* %r19
%r23 = call i64 @f2(i64* %r19) ; @raw-number
%r24 = trunc i64 %r23 to i1
br i1 %r24, label %label4, label %label5
label4:
%r26 = alloca i8*
call void @llvm.gcroot(i8** %r26, i8* null)
%r18 = bitcast i8** %r26 to i64*
%r25 = call i64 @make-true() ; @make-true
store i64 %r25, i64* %r18
br label %label6
label5:
%r28 = alloca i8*
call void @llvm.gcroot(i8** %r28, i8* null)
%r18 = bitcast i8** %r28 to i64*
%r27 = load i64* %y
store i64 %r27, i64* %r18
br label %label6
label6:
%r29 = load i64* %r18
ret i64 %r29
}

; @not
define i64 @f5(i64* %x) gc "shadow-stack" {
%r33 = alloca i8*
call void @llvm.gcroot(i8** %r33, i8* null)
%r31 = bitcast i8** %r33 to i64*
%r35 = alloca i8*
call void @llvm.gcroot(i8** %r35, i8* null)
%r32 = bitcast i8** %r35 to i64*
%r34 = load i64* %x
store i64 %r34, i64* %r32
%r36 = call i64 @f2(i64* %r32) ; @raw-number
%r37 = trunc i64 %r36 to i1
br i1 %r37, label %label7, label %label8
label7:
%r39 = alloca i8*
call void @llvm.gcroot(i8** %r39, i8* null)
%r31 = bitcast i8** %r39 to i64*
%r38 = call i64 @make-null() ; @make-null
store i64 %r38, i64* %r31
br label %label9
label8:
%r41 = alloca i8*
call void @llvm.gcroot(i8** %r41, i8* null)
%r31 = bitcast i8** %r41 to i64*
%r40 = call i64 @make-true() ; @make-true
store i64 %r40, i64* %r31
br label %label9
label9:
%r42 = load i64* %r31
ret i64 %r42
}

; @ensure
define i64 @f6(i64* %x, i64* %message) gc "shadow-stack" {
%r46 = alloca i8*
call void @llvm.gcroot(i8** %r46, i8* null)
%r44 = bitcast i8** %r46 to i64*
%r49 = alloca i8*
call void @llvm.gcroot(i8** %r49, i8* null)
%r47 = bitcast i8** %r49 to i64*
%r48 = load i64* %x
store i64 %r48, i64* %r47
%r51 = alloca i8*
call void @llvm.gcroot(i8** %r51, i8* null)
%r45 = bitcast i8** %r51 to i64*
%r50 = call i64 @f5(i64* %r47) ; @not
store i64 %r50, i64* %r45
%r52 = call i64 @f2(i64* %r45) ; @raw-number
%r53 = trunc i64 %r52 to i1
br i1 %r53, label %label10, label %label11
label10:
%r57 = alloca i8*
call void @llvm.gcroot(i8** %r57, i8* null)
%r55 = bitcast i8** %r57 to i64*
%r56 = load i64* %message
store i64 %r56, i64* %r55
%r59 = alloca i8*
call void @llvm.gcroot(i8** %r59, i8* null)
%r54 = bitcast i8** %r59 to i64*
%r58 = call i64 @print-string-or-symbol(i64* %r55) ; @print-string/symbol
store i64 %r58, i64* %r54
%r61 = alloca i8*
call void @llvm.gcroot(i8** %r61, i8* null)
%r44 = bitcast i8** %r61 to i64*
%r60 = call i64 @end() ; @exit
store i64 %r60, i64* %r44
br label %label12
label11:
%r63 = alloca i8*
call void @llvm.gcroot(i8** %r63, i8* null)
%r44 = bitcast i8** %r63 to i64*
%r62 = add i64 0, 0
store i64 %r62, i64* %r44
br label %label12
label12:
%r64 = load i64* %r44
ret i64 %r64
}

; @make-vector
define i64 @f7(i64* %size) gc "shadow-stack" {
%r70 = alloca i8*
call void @llvm.gcroot(i8** %r70, i8* null)
%r67 = bitcast i8** %r70 to i64*
%r69 = load i64* %size
store i64 %r69, i64* %r67
%r72 = alloca i8*
call void @llvm.gcroot(i8** %r72, i8* null)
%r68 = bitcast i8** %r72 to i64*
%r71 = add i64 0, 4
store i64 %r71, i64* %r68
%r74 = alloca i8*
call void @llvm.gcroot(i8** %r74, i8* null)
%r66 = bitcast i8** %r74 to i64*
%r73 = call i64 @allocate-object(i64* %r67, i64* %r68) ; @allocate-object
store i64 %r73, i64* %r66
%r75 = load i64* %r66
ret i64 %r75
}

; @vector-size
define i64 @f8(i64* %vector) gc "shadow-stack" {
%r80 = alloca i8*
call void @llvm.gcroot(i8** %r80, i8* null)
%r78 = bitcast i8** %r80 to i64*
%r79 = load i64* %vector
store i64 %r79, i64* %r78
%r82 = alloca i8*
call void @llvm.gcroot(i8** %r82, i8* null)
%r77 = bitcast i8** %r82 to i64*
%r81 = call i64 @object-size(i64* %r78) ; @object-size
store i64 %r81, i64* %r77
%r83 = load i64* %r77
ret i64 %r83
}

; @pair?
define i64 @f10(i64* %x) gc "shadow-stack" {
%r87 = alloca i8*
call void @llvm.gcroot(i8** %r87, i8* null)
%r85 = bitcast i8** %r87 to i64*
%r90 = alloca i8*
call void @llvm.gcroot(i8** %r90, i8* null)
%r88 = bitcast i8** %r90 to i64*
%r89 = load i64* %x
store i64 %r89, i64* %r88
%r92 = alloca i8*
call void @llvm.gcroot(i8** %r92, i8* null)
%r86 = bitcast i8** %r92 to i64*
%r91 = call i64 @vector(i64* %r88) ; @vector?
store i64 %r91, i64* %r86
%r93 = call i64 @f2(i64* %r86) ; @raw-number
%r94 = trunc i64 %r93 to i1
br i1 %r94, label %label13, label %label14
label13:
%r99 = alloca i8*
call void @llvm.gcroot(i8** %r99, i8* null)
%r97 = bitcast i8** %r99 to i64*
%r98 = load i64* %x
store i64 %r98, i64* %r97
%r101 = alloca i8*
call void @llvm.gcroot(i8** %r101, i8* null)
%r95 = bitcast i8** %r101 to i64*
%r100 = call i64 @f8(i64* %r97) ; @vector-size
store i64 %r100, i64* %r95
%r103 = alloca i8*
call void @llvm.gcroot(i8** %r103, i8* null)
%r96 = bitcast i8** %r103 to i64*
%r102 = add i64 0, 8
store i64 %r102, i64* %r96
%r105 = alloca i8*
call void @llvm.gcroot(i8** %r105, i8* null)
%r85 = bitcast i8** %r105 to i64*
%r104 = call i64 @f9(i64* %r95, i64* %r96) ; @=
store i64 %r104, i64* %r85
br label %label15
label14:
%r107 = alloca i8*
call void @llvm.gcroot(i8** %r107, i8* null)
%r85 = bitcast i8** %r107 to i64*
%r106 = call i64 @make-null() ; @make-null
store i64 %r106, i64* %r85
br label %label15
label15:
%r108 = load i64* %r85
ret i64 %r108
}

; @vector-ref
define i64 @f12(i64* %vector, i64* %index) gc "shadow-stack" {
%r116 = alloca i8*
call void @llvm.gcroot(i8** %r116, i8* null)
%r114 = bitcast i8** %r116 to i64*
%r115 = load i64* %vector
store i64 %r115, i64* %r114
%r118 = alloca i8*
call void @llvm.gcroot(i8** %r118, i8* null)
%r112 = bitcast i8** %r118 to i64*
%r117 = call i64 @vector(i64* %r114) ; @vector?
store i64 %r117, i64* %r112
%r120 = ptrtoint [26 x i8]* @g119 to i64
%r122 = alloca i8*
call void @llvm.gcroot(i8** %r122, i8* null)
%r113 = bitcast i8** %r122 to i64*
%r125 = alloca i8*
call void @llvm.gcroot(i8** %r125, i8* null)
%r123 = bitcast i8** %r125 to i64*
%r124 = add i64 0, 100
store i64 %r124, i64* %r123
%r128 = alloca i8*
call void @llvm.gcroot(i8** %r128, i8* null)
%r126 = bitcast i8** %r128 to i64*
%r127 = add i64 0, 0
store i64 %r127, i64* %r126
%r121 = call i64 @make-string-or-symbol(i64 %r120, i64* %r123, i64* %r126)
store i64 %r121, i64* %r113
%r130 = alloca i8*
call void @llvm.gcroot(i8** %r130, i8* null)
%r111 = bitcast i8** %r130 to i64*
%r129 = call i64 @f6(i64* %r112, i64* %r113) ; @ensure
store i64 %r129, i64* %r111
%r137 = alloca i8*
call void @llvm.gcroot(i8** %r137, i8* null)
%r135 = bitcast i8** %r137 to i64*
%r136 = load i64* %vector
store i64 %r136, i64* %r135
%r139 = alloca i8*
call void @llvm.gcroot(i8** %r139, i8* null)
%r134 = bitcast i8** %r139 to i64*
%r138 = call i64 @null(i64* %r135) ; @null?
store i64 %r138, i64* %r134
%r141 = alloca i8*
call void @llvm.gcroot(i8** %r141, i8* null)
%r132 = bitcast i8** %r141 to i64*
%r140 = call i64 @f5(i64* %r134) ; @not
store i64 %r140, i64* %r132
%r143 = ptrtoint [24 x i8]* @g142 to i64
%r145 = alloca i8*
call void @llvm.gcroot(i8** %r145, i8* null)
%r133 = bitcast i8** %r145 to i64*
%r148 = alloca i8*
call void @llvm.gcroot(i8** %r148, i8* null)
%r146 = bitcast i8** %r148 to i64*
%r147 = add i64 0, 92
store i64 %r147, i64* %r146
%r151 = alloca i8*
call void @llvm.gcroot(i8** %r151, i8* null)
%r149 = bitcast i8** %r151 to i64*
%r150 = add i64 0, 0
store i64 %r150, i64* %r149
%r144 = call i64 @make-string-or-symbol(i64 %r143, i64* %r146, i64* %r149)
store i64 %r144, i64* %r133
%r153 = alloca i8*
call void @llvm.gcroot(i8** %r153, i8* null)
%r131 = bitcast i8** %r153 to i64*
%r152 = call i64 @f6(i64* %r132, i64* %r133) ; @ensure
store i64 %r152, i64* %r131
%r160 = alloca i8*
call void @llvm.gcroot(i8** %r160, i8* null)
%r157 = bitcast i8** %r160 to i64*
%r159 = load i64* %index
store i64 %r159, i64* %r157
%r163 = alloca i8*
call void @llvm.gcroot(i8** %r163, i8* null)
%r161 = bitcast i8** %r163 to i64*
%r162 = load i64* %vector
store i64 %r162, i64* %r161
%r165 = alloca i8*
call void @llvm.gcroot(i8** %r165, i8* null)
%r158 = bitcast i8** %r165 to i64*
%r164 = call i64 @f8(i64* %r161) ; @vector-size
store i64 %r164, i64* %r158
%r167 = alloca i8*
call void @llvm.gcroot(i8** %r167, i8* null)
%r155 = bitcast i8** %r167 to i64*
%r166 = call i64 @f11(i64* %r157, i64* %r158) ; @<
store i64 %r166, i64* %r155
%r169 = ptrtoint [26 x i8]* @g168 to i64
%r171 = alloca i8*
call void @llvm.gcroot(i8** %r171, i8* null)
%r156 = bitcast i8** %r171 to i64*
%r174 = alloca i8*
call void @llvm.gcroot(i8** %r174, i8* null)
%r172 = bitcast i8** %r174 to i64*
%r173 = add i64 0, 100
store i64 %r173, i64* %r172
%r177 = alloca i8*
call void @llvm.gcroot(i8** %r177, i8* null)
%r175 = bitcast i8** %r177 to i64*
%r176 = add i64 0, 0
store i64 %r176, i64* %r175
%r170 = call i64 @make-string-or-symbol(i64 %r169, i64* %r172, i64* %r175)
store i64 %r170, i64* %r156
%r179 = alloca i8*
call void @llvm.gcroot(i8** %r179, i8* null)
%r154 = bitcast i8** %r179 to i64*
%r178 = call i64 @f6(i64* %r155, i64* %r156) ; @ensure
store i64 %r178, i64* %r154
%r183 = alloca i8*
call void @llvm.gcroot(i8** %r183, i8* null)
%r180 = bitcast i8** %r183 to i64*
%r182 = load i64* %vector
store i64 %r182, i64* %r180
%r185 = alloca i8*
call void @llvm.gcroot(i8** %r185, i8* null)
%r181 = bitcast i8** %r185 to i64*
%r184 = load i64* %index
store i64 %r184, i64* %r181
%r187 = alloca i8*
call void @llvm.gcroot(i8** %r187, i8* null)
%r110 = bitcast i8** %r187 to i64*
%r186 = call i64 @object-ref(i64* %r180, i64* %r181) ; @object-ref
store i64 %r186, i64* %r110
%r188 = load i64* %r110
ret i64 %r188
}

; @vector-set!
define i64 @f13(i64* %vector, i64* %index, i64* %value) gc "shadow-stack" {
%r196 = alloca i8*
call void @llvm.gcroot(i8** %r196, i8* null)
%r194 = bitcast i8** %r196 to i64*
%r195 = load i64* %vector
store i64 %r195, i64* %r194
%r198 = alloca i8*
call void @llvm.gcroot(i8** %r198, i8* null)
%r192 = bitcast i8** %r198 to i64*
%r197 = call i64 @vector(i64* %r194) ; @vector?
store i64 %r197, i64* %r192
%r200 = ptrtoint [27 x i8]* @g199 to i64
%r202 = alloca i8*
call void @llvm.gcroot(i8** %r202, i8* null)
%r193 = bitcast i8** %r202 to i64*
%r205 = alloca i8*
call void @llvm.gcroot(i8** %r205, i8* null)
%r203 = bitcast i8** %r205 to i64*
%r204 = add i64 0, 104
store i64 %r204, i64* %r203
%r208 = alloca i8*
call void @llvm.gcroot(i8** %r208, i8* null)
%r206 = bitcast i8** %r208 to i64*
%r207 = add i64 0, 0
store i64 %r207, i64* %r206
%r201 = call i64 @make-string-or-symbol(i64 %r200, i64* %r203, i64* %r206)
store i64 %r201, i64* %r193
%r210 = alloca i8*
call void @llvm.gcroot(i8** %r210, i8* null)
%r191 = bitcast i8** %r210 to i64*
%r209 = call i64 @f6(i64* %r192, i64* %r193) ; @ensure
store i64 %r209, i64* %r191
%r217 = alloca i8*
call void @llvm.gcroot(i8** %r217, i8* null)
%r215 = bitcast i8** %r217 to i64*
%r216 = load i64* %vector
store i64 %r216, i64* %r215
%r219 = alloca i8*
call void @llvm.gcroot(i8** %r219, i8* null)
%r214 = bitcast i8** %r219 to i64*
%r218 = call i64 @null(i64* %r215) ; @null?
store i64 %r218, i64* %r214
%r221 = alloca i8*
call void @llvm.gcroot(i8** %r221, i8* null)
%r212 = bitcast i8** %r221 to i64*
%r220 = call i64 @f5(i64* %r214) ; @not
store i64 %r220, i64* %r212
%r223 = ptrtoint [25 x i8]* @g222 to i64
%r225 = alloca i8*
call void @llvm.gcroot(i8** %r225, i8* null)
%r213 = bitcast i8** %r225 to i64*
%r228 = alloca i8*
call void @llvm.gcroot(i8** %r228, i8* null)
%r226 = bitcast i8** %r228 to i64*
%r227 = add i64 0, 96
store i64 %r227, i64* %r226
%r231 = alloca i8*
call void @llvm.gcroot(i8** %r231, i8* null)
%r229 = bitcast i8** %r231 to i64*
%r230 = add i64 0, 0
store i64 %r230, i64* %r229
%r224 = call i64 @make-string-or-symbol(i64 %r223, i64* %r226, i64* %r229)
store i64 %r224, i64* %r213
%r233 = alloca i8*
call void @llvm.gcroot(i8** %r233, i8* null)
%r211 = bitcast i8** %r233 to i64*
%r232 = call i64 @f6(i64* %r212, i64* %r213) ; @ensure
store i64 %r232, i64* %r211
%r240 = alloca i8*
call void @llvm.gcroot(i8** %r240, i8* null)
%r237 = bitcast i8** %r240 to i64*
%r239 = load i64* %index
store i64 %r239, i64* %r237
%r243 = alloca i8*
call void @llvm.gcroot(i8** %r243, i8* null)
%r241 = bitcast i8** %r243 to i64*
%r242 = load i64* %vector
store i64 %r242, i64* %r241
%r245 = alloca i8*
call void @llvm.gcroot(i8** %r245, i8* null)
%r238 = bitcast i8** %r245 to i64*
%r244 = call i64 @f8(i64* %r241) ; @vector-size
store i64 %r244, i64* %r238
%r247 = alloca i8*
call void @llvm.gcroot(i8** %r247, i8* null)
%r235 = bitcast i8** %r247 to i64*
%r246 = call i64 @f11(i64* %r237, i64* %r238) ; @<
store i64 %r246, i64* %r235
%r249 = ptrtoint [27 x i8]* @g248 to i64
%r251 = alloca i8*
call void @llvm.gcroot(i8** %r251, i8* null)
%r236 = bitcast i8** %r251 to i64*
%r254 = alloca i8*
call void @llvm.gcroot(i8** %r254, i8* null)
%r252 = bitcast i8** %r254 to i64*
%r253 = add i64 0, 104
store i64 %r253, i64* %r252
%r257 = alloca i8*
call void @llvm.gcroot(i8** %r257, i8* null)
%r255 = bitcast i8** %r257 to i64*
%r256 = add i64 0, 0
store i64 %r256, i64* %r255
%r250 = call i64 @make-string-or-symbol(i64 %r249, i64* %r252, i64* %r255)
store i64 %r250, i64* %r236
%r259 = alloca i8*
call void @llvm.gcroot(i8** %r259, i8* null)
%r234 = bitcast i8** %r259 to i64*
%r258 = call i64 @f6(i64* %r235, i64* %r236) ; @ensure
store i64 %r258, i64* %r234
%r264 = alloca i8*
call void @llvm.gcroot(i8** %r264, i8* null)
%r260 = bitcast i8** %r264 to i64*
%r263 = load i64* %vector
store i64 %r263, i64* %r260
%r266 = alloca i8*
call void @llvm.gcroot(i8** %r266, i8* null)
%r261 = bitcast i8** %r266 to i64*
%r265 = load i64* %index
store i64 %r265, i64* %r261
%r268 = alloca i8*
call void @llvm.gcroot(i8** %r268, i8* null)
%r262 = bitcast i8** %r268 to i64*
%r267 = load i64* %value
store i64 %r267, i64* %r262
%r270 = alloca i8*
call void @llvm.gcroot(i8** %r270, i8* null)
%r190 = bitcast i8** %r270 to i64*
%r269 = call i64 @object-set(i64* %r260, i64* %r261, i64* %r262) ; @object-set!
store i64 %r269, i64* %r190
%r271 = load i64* %r190
ret i64 %r271
}

; @set-enclosing-env!
define i64 @f14(i64* %env, i64* %enclosing-env) gc "shadow-stack" {
%r278 = alloca i8*
call void @llvm.gcroot(i8** %r278, i8* null)
%r274 = bitcast i8** %r278 to i64*
%r277 = load i64* %env
store i64 %r277, i64* %r274
%r280 = alloca i8*
call void @llvm.gcroot(i8** %r280, i8* null)
%r275 = bitcast i8** %r280 to i64*
%r279 = add i64 0, 0
store i64 %r279, i64* %r275
%r282 = alloca i8*
call void @llvm.gcroot(i8** %r282, i8* null)
%r276 = bitcast i8** %r282 to i64*
%r281 = load i64* %enclosing-env
store i64 %r281, i64* %r276
%r284 = alloca i8*
call void @llvm.gcroot(i8** %r284, i8* null)
%r273 = bitcast i8** %r284 to i64*
%r283 = call i64 @f13(i64* %r274, i64* %r275, i64* %r276) ; @vector-set!
store i64 %r283, i64* %r273
%r285 = load i64* %r273
ret i64 %r285
}

; @get-enclosing-env
define i64 @f15(i64* %env) gc "shadow-stack" {
%r291 = alloca i8*
call void @llvm.gcroot(i8** %r291, i8* null)
%r288 = bitcast i8** %r291 to i64*
%r290 = load i64* %env
store i64 %r290, i64* %r288
%r293 = alloca i8*
call void @llvm.gcroot(i8** %r293, i8* null)
%r289 = bitcast i8** %r293 to i64*
%r292 = add i64 0, 0
store i64 %r292, i64* %r289
%r295 = alloca i8*
call void @llvm.gcroot(i8** %r295, i8* null)
%r287 = bitcast i8** %r295 to i64*
%r294 = call i64 @f12(i64* %r288, i64* %r289) ; @vector-ref
store i64 %r294, i64* %r287
%r296 = load i64* %r287
ret i64 %r296
}

; @make-env
define i64 @f17(i64* %nparams, i64* %env) gc "shadow-stack" {
%r305 = alloca i8*
call void @llvm.gcroot(i8** %r305, i8* null)
%r302 = bitcast i8** %r305 to i64*
%r304 = load i64* %nparams
store i64 %r304, i64* %r302
%r307 = alloca i8*
call void @llvm.gcroot(i8** %r307, i8* null)
%r303 = bitcast i8** %r307 to i64*
%r306 = add i64 0, 8
store i64 %r306, i64* %r303
%r309 = alloca i8*
call void @llvm.gcroot(i8** %r309, i8* null)
%r301 = bitcast i8** %r309 to i64*
%r308 = call i64 @f16(i64* %r302, i64* %r303) ; @+
store i64 %r308, i64* %r301
%r311 = alloca i8*
call void @llvm.gcroot(i8** %r311, i8* null)
%r299 = bitcast i8** %r311 to i64*
%r310 = call i64 @f7(i64* %r301) ; @make-vector
store i64 %r310, i64* %r299
%r313 = alloca i8*
call void @llvm.gcroot(i8** %r313, i8* null)
%r300 = bitcast i8** %r313 to i64*
%r312 = load i64* %env
store i64 %r312, i64* %r300
%r315 = alloca i8*
call void @llvm.gcroot(i8** %r315, i8* null)
%r298 = bitcast i8** %r315 to i64*
%r314 = call i64 @f14(i64* %r299, i64* %r300) ; @set-enclosing-env!
store i64 %r314, i64* %r298
%r316 = load i64* %r298
ret i64 %r316
}

; @get-procedure-env
define i64 @f18(i64* %procedure) gc "shadow-stack" {
%r324 = alloca i8*
call void @llvm.gcroot(i8** %r324, i8* null)
%r322 = bitcast i8** %r324 to i64*
%r323 = load i64* %procedure
store i64 %r323, i64* %r322
%r326 = alloca i8*
call void @llvm.gcroot(i8** %r326, i8* null)
%r320 = bitcast i8** %r326 to i64*
%r325 = call i64 @procedure(i64* %r322) ; @procedure?
store i64 %r325, i64* %r320
%r328 = ptrtoint [36 x i8]* @g327 to i64
%r330 = alloca i8*
call void @llvm.gcroot(i8** %r330, i8* null)
%r321 = bitcast i8** %r330 to i64*
%r333 = alloca i8*
call void @llvm.gcroot(i8** %r333, i8* null)
%r331 = bitcast i8** %r333 to i64*
%r332 = add i64 0, 140
store i64 %r332, i64* %r331
%r336 = alloca i8*
call void @llvm.gcroot(i8** %r336, i8* null)
%r334 = bitcast i8** %r336 to i64*
%r335 = add i64 0, 0
store i64 %r335, i64* %r334
%r329 = call i64 @make-string-or-symbol(i64 %r328, i64* %r331, i64* %r334)
store i64 %r329, i64* %r321
%r338 = alloca i8*
call void @llvm.gcroot(i8** %r338, i8* null)
%r319 = bitcast i8** %r338 to i64*
%r337 = call i64 @f6(i64* %r320, i64* %r321) ; @ensure
store i64 %r337, i64* %r319
%r342 = alloca i8*
call void @llvm.gcroot(i8** %r342, i8* null)
%r339 = bitcast i8** %r342 to i64*
%r341 = load i64* %procedure
store i64 %r341, i64* %r339
%r344 = alloca i8*
call void @llvm.gcroot(i8** %r344, i8* null)
%r340 = bitcast i8** %r344 to i64*
%r343 = add i64 0, 4
store i64 %r343, i64* %r340
%r346 = alloca i8*
call void @llvm.gcroot(i8** %r346, i8* null)
%r318 = bitcast i8** %r346 to i64*
%r345 = call i64 @object-ref(i64* %r339, i64* %r340) ; @object-ref
store i64 %r345, i64* %r318
%r347 = load i64* %r318
ret i64 %r347
}

; @get-procedure-nparams
define i64 @f19(i64* %procedure) gc "shadow-stack" {
%r353 = alloca i8*
call void @llvm.gcroot(i8** %r353, i8* null)
%r350 = bitcast i8** %r353 to i64*
%r352 = load i64* %procedure
store i64 %r352, i64* %r350
%r355 = alloca i8*
call void @llvm.gcroot(i8** %r355, i8* null)
%r351 = bitcast i8** %r355 to i64*
%r354 = add i64 0, 8
store i64 %r354, i64* %r351
%r357 = alloca i8*
call void @llvm.gcroot(i8** %r357, i8* null)
%r349 = bitcast i8** %r357 to i64*
%r356 = call i64 @object-ref(i64* %r350, i64* %r351) ; @object-ref
store i64 %r356, i64* %r349
%r358 = load i64* %r349
ret i64 %r358
}

; @fix-arb-procs
define i64 @f20(i64* %n-params, i64* %end, i64* %call-env) gc "shadow-stack" {
%r362 = alloca i8*
call void @llvm.gcroot(i8** %r362, i8* null)
%r360 = bitcast i8** %r362 to i64*
%r366 = alloca i8*
call void @llvm.gcroot(i8** %r366, i8* null)
%r363 = bitcast i8** %r366 to i64*
%r365 = load i64* %n-params
store i64 %r365, i64* %r363
%r368 = alloca i8*
call void @llvm.gcroot(i8** %r368, i8* null)
%r364 = bitcast i8** %r368 to i64*
%r367 = load i64* %end
store i64 %r367, i64* %r364
%r370 = alloca i8*
call void @llvm.gcroot(i8** %r370, i8* null)
%r361 = bitcast i8** %r370 to i64*
%r369 = call i64 @f9(i64* %r363, i64* %r364) ; @=
store i64 %r369, i64* %r361
%r371 = call i64 @f2(i64* %r361) ; @raw-number
%r372 = trunc i64 %r371 to i1
br i1 %r372, label %label16, label %label17
label16:
%r374 = alloca i8*
call void @llvm.gcroot(i8** %r374, i8* null)
%r360 = bitcast i8** %r374 to i64*
%r373 = call i64 @make-null() ; @make-null
store i64 %r373, i64* %r360
br label %label18
label17:
%r380 = alloca i8*
call void @llvm.gcroot(i8** %r380, i8* null)
%r377 = bitcast i8** %r380 to i64*
%r379 = load i64* %call-env
store i64 %r379, i64* %r377
%r382 = alloca i8*
call void @llvm.gcroot(i8** %r382, i8* null)
%r378 = bitcast i8** %r382 to i64*
%r381 = load i64* %n-params
store i64 %r381, i64* %r378
%r384 = alloca i8*
call void @llvm.gcroot(i8** %r384, i8* null)
%r375 = bitcast i8** %r384 to i64*
%r383 = call i64 @f12(i64* %r377, i64* %r378) ; @vector-ref
store i64 %r383, i64* %r375
%r391 = alloca i8*
call void @llvm.gcroot(i8** %r391, i8* null)
%r388 = bitcast i8** %r391 to i64*
%r390 = load i64* %n-params
store i64 %r390, i64* %r388
%r393 = alloca i8*
call void @llvm.gcroot(i8** %r393, i8* null)
%r389 = bitcast i8** %r393 to i64*
%r392 = add i64 0, 4
store i64 %r392, i64* %r389
%r395 = alloca i8*
call void @llvm.gcroot(i8** %r395, i8* null)
%r385 = bitcast i8** %r395 to i64*
%r394 = call i64 @f16(i64* %r388, i64* %r389) ; @+
store i64 %r394, i64* %r385
%r397 = alloca i8*
call void @llvm.gcroot(i8** %r397, i8* null)
%r386 = bitcast i8** %r397 to i64*
%r396 = load i64* %end
store i64 %r396, i64* %r386
%r399 = alloca i8*
call void @llvm.gcroot(i8** %r399, i8* null)
%r387 = bitcast i8** %r399 to i64*
%r398 = load i64* %call-env
store i64 %r398, i64* %r387
%r401 = alloca i8*
call void @llvm.gcroot(i8** %r401, i8* null)
%r376 = bitcast i8** %r401 to i64*
%r400 = call i64 @f20(i64* %r385, i64* %r386, i64* %r387) ; @fix-arb-procs
store i64 %r400, i64* %r376
%r403 = alloca i8*
call void @llvm.gcroot(i8** %r403, i8* null)
%r360 = bitcast i8** %r403 to i64*
%r402 = call i64 @f21(i64* %r375, i64* %r376) ; @cons
store i64 %r402, i64* %r360
br label %label18
label18:
%r404 = load i64* %r360
ret i64 %r404
}

; @fix-arbitrary-procs
define i64 @f23(i64* %n-params, i64* %call-env) gc "shadow-stack" {
%r408 = alloca i8*
call void @llvm.gcroot(i8** %r408, i8* null)
%r406 = bitcast i8** %r408 to i64*
%r412 = alloca i8*
call void @llvm.gcroot(i8** %r412, i8* null)
%r409 = bitcast i8** %r412 to i64*
%r411 = load i64* %n-params
store i64 %r411, i64* %r409
%r414 = alloca i8*
call void @llvm.gcroot(i8** %r414, i8* null)
%r410 = bitcast i8** %r414 to i64*
%r413 = add i64 0, 0
store i64 %r413, i64* %r410
%r416 = alloca i8*
call void @llvm.gcroot(i8** %r416, i8* null)
%r407 = bitcast i8** %r416 to i64*
%r415 = call i64 @f9(i64* %r409, i64* %r410) ; @=
store i64 %r415, i64* %r407
%r417 = call i64 @f2(i64* %r407) ; @raw-number
%r418 = trunc i64 %r417 to i1
br i1 %r418, label %label19, label %label20
label19:
%r420 = alloca i8*
call void @llvm.gcroot(i8** %r420, i8* null)
%r406 = bitcast i8** %r420 to i64*
%r419 = add i64 0, 4
store i64 %r419, i64* %r406
br label %label21
label20:
%r425 = alloca i8*
call void @llvm.gcroot(i8** %r425, i8* null)
%r421 = bitcast i8** %r425 to i64*
%r424 = load i64* %call-env
store i64 %r424, i64* %r421
%r427 = alloca i8*
call void @llvm.gcroot(i8** %r427, i8* null)
%r422 = bitcast i8** %r427 to i64*
%r426 = load i64* %n-params
store i64 %r426, i64* %r422
%r432 = alloca i8*
call void @llvm.gcroot(i8** %r432, i8* null)
%r428 = bitcast i8** %r432 to i64*
%r431 = load i64* %n-params
store i64 %r431, i64* %r428
%r437 = alloca i8*
call void @llvm.gcroot(i8** %r437, i8* null)
%r435 = bitcast i8** %r437 to i64*
%r436 = load i64* %call-env
store i64 %r436, i64* %r435
%r439 = alloca i8*
call void @llvm.gcroot(i8** %r439, i8* null)
%r433 = bitcast i8** %r439 to i64*
%r438 = call i64 @object-size(i64* %r435) ; @object-size
store i64 %r438, i64* %r433
%r441 = alloca i8*
call void @llvm.gcroot(i8** %r441, i8* null)
%r434 = bitcast i8** %r441 to i64*
%r440 = add i64 0, 4
store i64 %r440, i64* %r434
%r443 = alloca i8*
call void @llvm.gcroot(i8** %r443, i8* null)
%r429 = bitcast i8** %r443 to i64*
%r442 = call i64 @f22(i64* %r433, i64* %r434) ; @-
store i64 %r442, i64* %r429
%r445 = alloca i8*
call void @llvm.gcroot(i8** %r445, i8* null)
%r430 = bitcast i8** %r445 to i64*
%r444 = load i64* %call-env
store i64 %r444, i64* %r430
%r447 = alloca i8*
call void @llvm.gcroot(i8** %r447, i8* null)
%r423 = bitcast i8** %r447 to i64*
%r446 = call i64 @f20(i64* %r428, i64* %r429, i64* %r430) ; @fix-arb-procs
store i64 %r446, i64* %r423
%r449 = alloca i8*
call void @llvm.gcroot(i8** %r449, i8* null)
%r406 = bitcast i8** %r449 to i64*
%r448 = call i64 @f13(i64* %r421, i64* %r422, i64* %r423) ; @vector-set!
store i64 %r448, i64* %r406
br label %label21
label21:
%r450 = load i64* %r406
ret i64 %r450
}

; @string?
define i64 @f24(i64* %x) gc "shadow-stack" {
%r454 = alloca i8*
call void @llvm.gcroot(i8** %r454, i8* null)
%r452 = bitcast i8** %r454 to i64*
%r457 = alloca i8*
call void @llvm.gcroot(i8** %r457, i8* null)
%r455 = bitcast i8** %r457 to i64*
%r456 = load i64* %x
store i64 %r456, i64* %r455
%r459 = alloca i8*
call void @llvm.gcroot(i8** %r459, i8* null)
%r453 = bitcast i8** %r459 to i64*
%r458 = call i64 @string-or-symbol(i64* %r455) ; @string/symbol?
store i64 %r458, i64* %r453
%r460 = call i64 @f2(i64* %r453) ; @raw-number
%r461 = trunc i64 %r460 to i1
br i1 %r461, label %label22, label %label23
label22:
%r467 = alloca i8*
call void @llvm.gcroot(i8** %r467, i8* null)
%r464 = bitcast i8** %r467 to i64*
%r466 = load i64* %x
store i64 %r466, i64* %r464
%r469 = alloca i8*
call void @llvm.gcroot(i8** %r469, i8* null)
%r465 = bitcast i8** %r469 to i64*
%r468 = add i64 0, 8
store i64 %r468, i64* %r465
%r471 = alloca i8*
call void @llvm.gcroot(i8** %r471, i8* null)
%r462 = bitcast i8** %r471 to i64*
%r470 = call i64 @object-ref(i64* %r464, i64* %r465) ; @object-ref
store i64 %r470, i64* %r462
%r473 = alloca i8*
call void @llvm.gcroot(i8** %r473, i8* null)
%r463 = bitcast i8** %r473 to i64*
%r472 = add i64 0, 0
store i64 %r472, i64* %r463
%r475 = alloca i8*
call void @llvm.gcroot(i8** %r475, i8* null)
%r452 = bitcast i8** %r475 to i64*
%r474 = call i64 @f9(i64* %r462, i64* %r463) ; @=
store i64 %r474, i64* %r452
br label %label24
label23:
%r477 = alloca i8*
call void @llvm.gcroot(i8** %r477, i8* null)
%r452 = bitcast i8** %r477 to i64*
%r476 = call i64 @make-null() ; @make-null
store i64 %r476, i64* %r452
br label %label24
label24:
%r478 = load i64* %r452
ret i64 %r478
}

; @symbol?
define i64 @f25(i64* %x) gc "shadow-stack" {
%r482 = alloca i8*
call void @llvm.gcroot(i8** %r482, i8* null)
%r480 = bitcast i8** %r482 to i64*
%r485 = alloca i8*
call void @llvm.gcroot(i8** %r485, i8* null)
%r483 = bitcast i8** %r485 to i64*
%r484 = load i64* %x
store i64 %r484, i64* %r483
%r487 = alloca i8*
call void @llvm.gcroot(i8** %r487, i8* null)
%r481 = bitcast i8** %r487 to i64*
%r486 = call i64 @string-or-symbol(i64* %r483) ; @string/symbol?
store i64 %r486, i64* %r481
%r488 = call i64 @f2(i64* %r481) ; @raw-number
%r489 = trunc i64 %r488 to i1
br i1 %r489, label %label25, label %label26
label25:
%r495 = alloca i8*
call void @llvm.gcroot(i8** %r495, i8* null)
%r492 = bitcast i8** %r495 to i64*
%r494 = load i64* %x
store i64 %r494, i64* %r492
%r497 = alloca i8*
call void @llvm.gcroot(i8** %r497, i8* null)
%r493 = bitcast i8** %r497 to i64*
%r496 = add i64 0, 8
store i64 %r496, i64* %r493
%r499 = alloca i8*
call void @llvm.gcroot(i8** %r499, i8* null)
%r490 = bitcast i8** %r499 to i64*
%r498 = call i64 @object-ref(i64* %r492, i64* %r493) ; @object-ref
store i64 %r498, i64* %r490
%r501 = alloca i8*
call void @llvm.gcroot(i8** %r501, i8* null)
%r491 = bitcast i8** %r501 to i64*
%r500 = add i64 0, 4
store i64 %r500, i64* %r491
%r503 = alloca i8*
call void @llvm.gcroot(i8** %r503, i8* null)
%r480 = bitcast i8** %r503 to i64*
%r502 = call i64 @f9(i64* %r490, i64* %r491) ; @=
store i64 %r502, i64* %r480
br label %label27
label26:
%r505 = alloca i8*
call void @llvm.gcroot(i8** %r505, i8* null)
%r480 = bitcast i8** %r505 to i64*
%r504 = call i64 @make-null() ; @make-null
store i64 %r504, i64* %r480
br label %label27
label27:
%r506 = load i64* %r480
ret i64 %r506
}

; @string-length
define i64 @f26(i64* %str) gc "shadow-stack" {
%r512 = alloca i8*
call void @llvm.gcroot(i8** %r512, i8* null)
%r509 = bitcast i8** %r512 to i64*
%r511 = load i64* %str
store i64 %r511, i64* %r509
%r514 = alloca i8*
call void @llvm.gcroot(i8** %r514, i8* null)
%r510 = bitcast i8** %r514 to i64*
%r513 = add i64 0, 4
store i64 %r513, i64* %r510
%r516 = alloca i8*
call void @llvm.gcroot(i8** %r516, i8* null)
%r508 = bitcast i8** %r516 to i64*
%r515 = call i64 @object-ref(i64* %r509, i64* %r510) ; @object-ref
store i64 %r515, i64* %r508
%r517 = load i64* %r508
ret i64 %r517
}

; @string->symbol
define i64 @f27(i64* %str) gc "shadow-stack" {
%r525 = alloca i8*
call void @llvm.gcroot(i8** %r525, i8* null)
%r523 = bitcast i8** %r525 to i64*
%r524 = load i64* %str
store i64 %r524, i64* %r523
%r527 = alloca i8*
call void @llvm.gcroot(i8** %r527, i8* null)
%r521 = bitcast i8** %r527 to i64*
%r526 = call i64 @f24(i64* %r523) ; @string?
store i64 %r526, i64* %r521
%r529 = ptrtoint [29 x i8]* @g528 to i64
%r531 = alloca i8*
call void @llvm.gcroot(i8** %r531, i8* null)
%r522 = bitcast i8** %r531 to i64*
%r534 = alloca i8*
call void @llvm.gcroot(i8** %r534, i8* null)
%r532 = bitcast i8** %r534 to i64*
%r533 = add i64 0, 112
store i64 %r533, i64* %r532
%r537 = alloca i8*
call void @llvm.gcroot(i8** %r537, i8* null)
%r535 = bitcast i8** %r537 to i64*
%r536 = add i64 0, 0
store i64 %r536, i64* %r535
%r530 = call i64 @make-string-or-symbol(i64 %r529, i64* %r532, i64* %r535)
store i64 %r530, i64* %r522
%r539 = alloca i8*
call void @llvm.gcroot(i8** %r539, i8* null)
%r520 = bitcast i8** %r539 to i64*
%r538 = call i64 @f6(i64* %r521, i64* %r522) ; @ensure
store i64 %r538, i64* %r520
%r547 = alloca i8*
call void @llvm.gcroot(i8** %r547, i8* null)
%r543 = bitcast i8** %r547 to i64*
%r546 = load i64* %str
store i64 %r546, i64* %r543
%r551 = alloca i8*
call void @llvm.gcroot(i8** %r551, i8* null)
%r548 = bitcast i8** %r551 to i64*
%r550 = add i64 0, 12
store i64 %r550, i64* %r548
%r553 = alloca i8*
call void @llvm.gcroot(i8** %r553, i8* null)
%r549 = bitcast i8** %r553 to i64*
%r552 = add i64 0, 8
store i64 %r552, i64* %r549
%r555 = alloca i8*
call void @llvm.gcroot(i8** %r555, i8* null)
%r544 = bitcast i8** %r555 to i64*
%r554 = call i64 @allocate-object(i64* %r548, i64* %r549) ; @allocate-object
store i64 %r554, i64* %r544
%r557 = alloca i8*
call void @llvm.gcroot(i8** %r557, i8* null)
%r545 = bitcast i8** %r557 to i64*
%r556 = add i64 0, 96
store i64 %r556, i64* %r545
%r559 = alloca i8*
call void @llvm.gcroot(i8** %r559, i8* null)
%r540 = bitcast i8** %r559 to i64*
%r558 = call i64 @mem-cpy(i64* %r543, i64* %r544, i64* %r545) ; @mem-cpy
store i64 %r558, i64* %r540
%r561 = alloca i8*
call void @llvm.gcroot(i8** %r561, i8* null)
%r541 = bitcast i8** %r561 to i64*
%r560 = add i64 0, 8
store i64 %r560, i64* %r541
%r563 = alloca i8*
call void @llvm.gcroot(i8** %r563, i8* null)
%r542 = bitcast i8** %r563 to i64*
%r562 = add i64 0, 4
store i64 %r562, i64* %r542
%r565 = alloca i8*
call void @llvm.gcroot(i8** %r565, i8* null)
%r519 = bitcast i8** %r565 to i64*
%r564 = call i64 @object-set(i64* %r540, i64* %r541, i64* %r542) ; @object-set!
store i64 %r564, i64* %r519
%r566 = load i64* %r519
ret i64 %r566
}

; @symbol->string
define i64 @f28(i64* %sym) gc "shadow-stack" {
%r574 = alloca i8*
call void @llvm.gcroot(i8** %r574, i8* null)
%r572 = bitcast i8** %r574 to i64*
%r573 = load i64* %sym
store i64 %r573, i64* %r572
%r576 = alloca i8*
call void @llvm.gcroot(i8** %r576, i8* null)
%r570 = bitcast i8** %r576 to i64*
%r575 = call i64 @f25(i64* %r572) ; @symbol?
store i64 %r575, i64* %r570
%r578 = ptrtoint [29 x i8]* @g577 to i64
%r580 = alloca i8*
call void @llvm.gcroot(i8** %r580, i8* null)
%r571 = bitcast i8** %r580 to i64*
%r583 = alloca i8*
call void @llvm.gcroot(i8** %r583, i8* null)
%r581 = bitcast i8** %r583 to i64*
%r582 = add i64 0, 112
store i64 %r582, i64* %r581
%r586 = alloca i8*
call void @llvm.gcroot(i8** %r586, i8* null)
%r584 = bitcast i8** %r586 to i64*
%r585 = add i64 0, 0
store i64 %r585, i64* %r584
%r579 = call i64 @make-string-or-symbol(i64 %r578, i64* %r581, i64* %r584)
store i64 %r579, i64* %r571
%r588 = alloca i8*
call void @llvm.gcroot(i8** %r588, i8* null)
%r569 = bitcast i8** %r588 to i64*
%r587 = call i64 @f6(i64* %r570, i64* %r571) ; @ensure
store i64 %r587, i64* %r569
%r596 = alloca i8*
call void @llvm.gcroot(i8** %r596, i8* null)
%r592 = bitcast i8** %r596 to i64*
%r595 = load i64* %sym
store i64 %r595, i64* %r592
%r600 = alloca i8*
call void @llvm.gcroot(i8** %r600, i8* null)
%r597 = bitcast i8** %r600 to i64*
%r599 = add i64 0, 12
store i64 %r599, i64* %r597
%r602 = alloca i8*
call void @llvm.gcroot(i8** %r602, i8* null)
%r598 = bitcast i8** %r602 to i64*
%r601 = add i64 0, 8
store i64 %r601, i64* %r598
%r604 = alloca i8*
call void @llvm.gcroot(i8** %r604, i8* null)
%r593 = bitcast i8** %r604 to i64*
%r603 = call i64 @allocate-object(i64* %r597, i64* %r598) ; @allocate-object
store i64 %r603, i64* %r593
%r606 = alloca i8*
call void @llvm.gcroot(i8** %r606, i8* null)
%r594 = bitcast i8** %r606 to i64*
%r605 = add i64 0, 96
store i64 %r605, i64* %r594
%r608 = alloca i8*
call void @llvm.gcroot(i8** %r608, i8* null)
%r589 = bitcast i8** %r608 to i64*
%r607 = call i64 @mem-cpy(i64* %r592, i64* %r593, i64* %r594) ; @mem-cpy
store i64 %r607, i64* %r589
%r610 = alloca i8*
call void @llvm.gcroot(i8** %r610, i8* null)
%r590 = bitcast i8** %r610 to i64*
%r609 = add i64 0, 8
store i64 %r609, i64* %r590
%r612 = alloca i8*
call void @llvm.gcroot(i8** %r612, i8* null)
%r591 = bitcast i8** %r612 to i64*
%r611 = add i64 0, 0
store i64 %r611, i64* %r591
%r614 = alloca i8*
call void @llvm.gcroot(i8** %r614, i8* null)
%r568 = bitcast i8** %r614 to i64*
%r613 = call i64 @object-set(i64* %r589, i64* %r590, i64* %r591) ; @object-set!
store i64 %r613, i64* %r568
%r615 = load i64* %r568
ret i64 %r615
}

; @list->string-helper
define i64 @f31(i64* %str, i64* %lst, i64* %pos) gc "shadow-stack" {
%r619 = alloca i8*
call void @llvm.gcroot(i8** %r619, i8* null)
%r617 = bitcast i8** %r619 to i64*
%r622 = alloca i8*
call void @llvm.gcroot(i8** %r622, i8* null)
%r620 = bitcast i8** %r622 to i64*
%r621 = load i64* %lst
store i64 %r621, i64* %r620
%r624 = alloca i8*
call void @llvm.gcroot(i8** %r624, i8* null)
%r618 = bitcast i8** %r624 to i64*
%r623 = call i64 @null(i64* %r620) ; @null?
store i64 %r623, i64* %r618
%r625 = call i64 @f2(i64* %r618) ; @raw-number
%r626 = trunc i64 %r625 to i1
br i1 %r626, label %label28, label %label29
label28:
%r631 = alloca i8*
call void @llvm.gcroot(i8** %r631, i8* null)
%r627 = bitcast i8** %r631 to i64*
%r630 = load i64* %str
store i64 %r630, i64* %r627
%r633 = alloca i8*
call void @llvm.gcroot(i8** %r633, i8* null)
%r628 = bitcast i8** %r633 to i64*
%r632 = load i64* %pos
store i64 %r632, i64* %r628
%r635 = alloca i8*
call void @llvm.gcroot(i8** %r635, i8* null)
%r629 = bitcast i8** %r635 to i64*
%r634 = add i64 0, 0
store i64 %r634, i64* %r629
%r637 = alloca i8*
call void @llvm.gcroot(i8** %r637, i8* null)
%r617 = bitcast i8** %r637 to i64*
%r636 = call i64 @string-set(i64* %r627, i64* %r628, i64* %r629) ; @string-set!
store i64 %r636, i64* %r617
br label %label30
label29:
%r643 = alloca i8*
call void @llvm.gcroot(i8** %r643, i8* null)
%r639 = bitcast i8** %r643 to i64*
%r642 = load i64* %str
store i64 %r642, i64* %r639
%r645 = alloca i8*
call void @llvm.gcroot(i8** %r645, i8* null)
%r640 = bitcast i8** %r645 to i64*
%r644 = load i64* %pos
store i64 %r644, i64* %r640
%r648 = alloca i8*
call void @llvm.gcroot(i8** %r648, i8* null)
%r646 = bitcast i8** %r648 to i64*
%r647 = load i64* %lst
store i64 %r647, i64* %r646
%r650 = alloca i8*
call void @llvm.gcroot(i8** %r650, i8* null)
%r641 = bitcast i8** %r650 to i64*
%r649 = call i64 @f29(i64* %r646) ; @car
store i64 %r649, i64* %r641
%r652 = alloca i8*
call void @llvm.gcroot(i8** %r652, i8* null)
%r638 = bitcast i8** %r652 to i64*
%r651 = call i64 @string-set(i64* %r639, i64* %r640, i64* %r641) ; @string-set!
store i64 %r651, i64* %r638
%r657 = alloca i8*
call void @llvm.gcroot(i8** %r657, i8* null)
%r653 = bitcast i8** %r657 to i64*
%r656 = load i64* %str
store i64 %r656, i64* %r653
%r660 = alloca i8*
call void @llvm.gcroot(i8** %r660, i8* null)
%r658 = bitcast i8** %r660 to i64*
%r659 = load i64* %lst
store i64 %r659, i64* %r658
%r662 = alloca i8*
call void @llvm.gcroot(i8** %r662, i8* null)
%r654 = bitcast i8** %r662 to i64*
%r661 = call i64 @f30(i64* %r658) ; @cdr
store i64 %r661, i64* %r654
%r666 = alloca i8*
call void @llvm.gcroot(i8** %r666, i8* null)
%r663 = bitcast i8** %r666 to i64*
%r665 = load i64* %pos
store i64 %r665, i64* %r663
%r668 = alloca i8*
call void @llvm.gcroot(i8** %r668, i8* null)
%r664 = bitcast i8** %r668 to i64*
%r667 = add i64 0, 4
store i64 %r667, i64* %r664
%r670 = alloca i8*
call void @llvm.gcroot(i8** %r670, i8* null)
%r655 = bitcast i8** %r670 to i64*
%r669 = call i64 @f16(i64* %r663, i64* %r664) ; @+
store i64 %r669, i64* %r655
%r672 = alloca i8*
call void @llvm.gcroot(i8** %r672, i8* null)
%r617 = bitcast i8** %r672 to i64*
%r671 = call i64 @f31(i64* %r653, i64* %r654, i64* %r655) ; @list->string-helper
store i64 %r671, i64* %r617
br label %label30
label30:
%r673 = load i64* %r617
ret i64 %r673
}

; @string->list-helper
define i64 @f32(i64* %str, i64* %pos, i64* %end) gc "shadow-stack" {
%r677 = alloca i8*
call void @llvm.gcroot(i8** %r677, i8* null)
%r675 = bitcast i8** %r677 to i64*
%r681 = alloca i8*
call void @llvm.gcroot(i8** %r681, i8* null)
%r678 = bitcast i8** %r681 to i64*
%r680 = load i64* %pos
store i64 %r680, i64* %r678
%r683 = alloca i8*
call void @llvm.gcroot(i8** %r683, i8* null)
%r679 = bitcast i8** %r683 to i64*
%r682 = load i64* %end
store i64 %r682, i64* %r679
%r685 = alloca i8*
call void @llvm.gcroot(i8** %r685, i8* null)
%r676 = bitcast i8** %r685 to i64*
%r684 = call i64 @f9(i64* %r678, i64* %r679) ; @=
store i64 %r684, i64* %r676
%r686 = call i64 @f2(i64* %r676) ; @raw-number
%r687 = trunc i64 %r686 to i1
br i1 %r687, label %label31, label %label32
label31:
%r689 = alloca i8*
call void @llvm.gcroot(i8** %r689, i8* null)
%r675 = bitcast i8** %r689 to i64*
%r688 = call i64 @make-null() ; @make-null
store i64 %r688, i64* %r675
br label %label33
label32:
%r695 = alloca i8*
call void @llvm.gcroot(i8** %r695, i8* null)
%r692 = bitcast i8** %r695 to i64*
%r694 = load i64* %str
store i64 %r694, i64* %r692
%r697 = alloca i8*
call void @llvm.gcroot(i8** %r697, i8* null)
%r693 = bitcast i8** %r697 to i64*
%r696 = load i64* %pos
store i64 %r696, i64* %r693
%r699 = alloca i8*
call void @llvm.gcroot(i8** %r699, i8* null)
%r690 = bitcast i8** %r699 to i64*
%r698 = call i64 @string-ref(i64* %r692, i64* %r693) ; @string-ref
store i64 %r698, i64* %r690
%r704 = alloca i8*
call void @llvm.gcroot(i8** %r704, i8* null)
%r700 = bitcast i8** %r704 to i64*
%r703 = load i64* %str
store i64 %r703, i64* %r700
%r708 = alloca i8*
call void @llvm.gcroot(i8** %r708, i8* null)
%r705 = bitcast i8** %r708 to i64*
%r707 = load i64* %pos
store i64 %r707, i64* %r705
%r710 = alloca i8*
call void @llvm.gcroot(i8** %r710, i8* null)
%r706 = bitcast i8** %r710 to i64*
%r709 = add i64 0, 4
store i64 %r709, i64* %r706
%r712 = alloca i8*
call void @llvm.gcroot(i8** %r712, i8* null)
%r701 = bitcast i8** %r712 to i64*
%r711 = call i64 @f16(i64* %r705, i64* %r706) ; @+
store i64 %r711, i64* %r701
%r714 = alloca i8*
call void @llvm.gcroot(i8** %r714, i8* null)
%r702 = bitcast i8** %r714 to i64*
%r713 = load i64* %end
store i64 %r713, i64* %r702
%r716 = alloca i8*
call void @llvm.gcroot(i8** %r716, i8* null)
%r691 = bitcast i8** %r716 to i64*
%r715 = call i64 @f32(i64* %r700, i64* %r701, i64* %r702) ; @string->list-helper
store i64 %r715, i64* %r691
%r718 = alloca i8*
call void @llvm.gcroot(i8** %r718, i8* null)
%r675 = bitcast i8** %r718 to i64*
%r717 = call i64 @f21(i64* %r690, i64* %r691) ; @cons
store i64 %r717, i64* %r675
br label %label33
label33:
%r719 = load i64* %r675
ret i64 %r719
}

; @string->list
define i64 @f33(i64* %str) gc "shadow-stack" {
%r727 = alloca i8*
call void @llvm.gcroot(i8** %r727, i8* null)
%r725 = bitcast i8** %r727 to i64*
%r726 = load i64* %str
store i64 %r726, i64* %r725
%r729 = alloca i8*
call void @llvm.gcroot(i8** %r729, i8* null)
%r723 = bitcast i8** %r729 to i64*
%r728 = call i64 @f24(i64* %r725) ; @string?
store i64 %r728, i64* %r723
%r731 = ptrtoint [27 x i8]* @g730 to i64
%r733 = alloca i8*
call void @llvm.gcroot(i8** %r733, i8* null)
%r724 = bitcast i8** %r733 to i64*
%r736 = alloca i8*
call void @llvm.gcroot(i8** %r736, i8* null)
%r734 = bitcast i8** %r736 to i64*
%r735 = add i64 0, 104
store i64 %r735, i64* %r734
%r739 = alloca i8*
call void @llvm.gcroot(i8** %r739, i8* null)
%r737 = bitcast i8** %r739 to i64*
%r738 = add i64 0, 0
store i64 %r738, i64* %r737
%r732 = call i64 @make-string-or-symbol(i64 %r731, i64* %r734, i64* %r737)
store i64 %r732, i64* %r724
%r741 = alloca i8*
call void @llvm.gcroot(i8** %r741, i8* null)
%r722 = bitcast i8** %r741 to i64*
%r740 = call i64 @f6(i64* %r723, i64* %r724) ; @ensure
store i64 %r740, i64* %r722
%r746 = alloca i8*
call void @llvm.gcroot(i8** %r746, i8* null)
%r742 = bitcast i8** %r746 to i64*
%r745 = load i64* %str
store i64 %r745, i64* %r742
%r748 = alloca i8*
call void @llvm.gcroot(i8** %r748, i8* null)
%r743 = bitcast i8** %r748 to i64*
%r747 = add i64 0, 0
store i64 %r747, i64* %r743
%r751 = alloca i8*
call void @llvm.gcroot(i8** %r751, i8* null)
%r749 = bitcast i8** %r751 to i64*
%r750 = load i64* %str
store i64 %r750, i64* %r749
%r753 = alloca i8*
call void @llvm.gcroot(i8** %r753, i8* null)
%r744 = bitcast i8** %r753 to i64*
%r752 = call i64 @f26(i64* %r749) ; @string-length
store i64 %r752, i64* %r744
%r755 = alloca i8*
call void @llvm.gcroot(i8** %r755, i8* null)
%r721 = bitcast i8** %r755 to i64*
%r754 = call i64 @f32(i64* %r742, i64* %r743, i64* %r744) ; @string->list-helper
store i64 %r754, i64* %r721
%r756 = load i64* %r721
ret i64 %r756
}

; @char->integer
define i64 @f34(i64* %ch) gc "shadow-stack" {
%r760 = alloca i8*
call void @llvm.gcroot(i8** %r760, i8* null)
%r758 = bitcast i8** %r760 to i64*
%r759 = load i64* %ch
store i64 %r759, i64* %r758
%r761 = load i64* %r758
ret i64 %r761
}

; @integer->char
define i64 @f35(i64* %ch) gc "shadow-stack" {
%r765 = alloca i8*
call void @llvm.gcroot(i8** %r765, i8* null)
%r763 = bitcast i8** %r765 to i64*
%r764 = load i64* %ch
store i64 %r764, i64* %r763
%r766 = load i64* %r763
ret i64 %r766
}

; @lookup-variable
define i64 @f36(i64* %env, i64* %scope, i64* %index) gc "shadow-stack" {
%r770 = alloca i8*
call void @llvm.gcroot(i8** %r770, i8* null)
%r768 = bitcast i8** %r770 to i64*
%r774 = alloca i8*
call void @llvm.gcroot(i8** %r774, i8* null)
%r771 = bitcast i8** %r774 to i64*
%r773 = add i64 0, 0
store i64 %r773, i64* %r771
%r776 = alloca i8*
call void @llvm.gcroot(i8** %r776, i8* null)
%r772 = bitcast i8** %r776 to i64*
%r775 = load i64* %scope
store i64 %r775, i64* %r772
%r778 = alloca i8*
call void @llvm.gcroot(i8** %r778, i8* null)
%r769 = bitcast i8** %r778 to i64*
%r777 = call i64 @f9(i64* %r771, i64* %r772) ; @=
store i64 %r777, i64* %r769
%r779 = call i64 @f2(i64* %r769) ; @raw-number
%r780 = trunc i64 %r779 to i1
br i1 %r780, label %label34, label %label35
label34:
%r784 = alloca i8*
call void @llvm.gcroot(i8** %r784, i8* null)
%r781 = bitcast i8** %r784 to i64*
%r783 = load i64* %env
store i64 %r783, i64* %r781
%r786 = alloca i8*
call void @llvm.gcroot(i8** %r786, i8* null)
%r782 = bitcast i8** %r786 to i64*
%r785 = load i64* %index
store i64 %r785, i64* %r782
%r788 = alloca i8*
call void @llvm.gcroot(i8** %r788, i8* null)
%r768 = bitcast i8** %r788 to i64*
%r787 = call i64 @f12(i64* %r781, i64* %r782) ; @vector-ref
store i64 %r787, i64* %r768
br label %label36
label35:
%r795 = alloca i8*
call void @llvm.gcroot(i8** %r795, i8* null)
%r792 = bitcast i8** %r795 to i64*
%r794 = load i64* %env
store i64 %r794, i64* %r792
%r797 = alloca i8*
call void @llvm.gcroot(i8** %r797, i8* null)
%r793 = bitcast i8** %r797 to i64*
%r796 = add i64 0, 0
store i64 %r796, i64* %r793
%r799 = alloca i8*
call void @llvm.gcroot(i8** %r799, i8* null)
%r789 = bitcast i8** %r799 to i64*
%r798 = call i64 @f12(i64* %r792, i64* %r793) ; @vector-ref
store i64 %r798, i64* %r789
%r803 = alloca i8*
call void @llvm.gcroot(i8** %r803, i8* null)
%r800 = bitcast i8** %r803 to i64*
%r802 = load i64* %scope
store i64 %r802, i64* %r800
%r805 = alloca i8*
call void @llvm.gcroot(i8** %r805, i8* null)
%r801 = bitcast i8** %r805 to i64*
%r804 = add i64 0, 4
store i64 %r804, i64* %r801
%r807 = alloca i8*
call void @llvm.gcroot(i8** %r807, i8* null)
%r790 = bitcast i8** %r807 to i64*
%r806 = call i64 @f22(i64* %r800, i64* %r801) ; @-
store i64 %r806, i64* %r790
%r809 = alloca i8*
call void @llvm.gcroot(i8** %r809, i8* null)
%r791 = bitcast i8** %r809 to i64*
%r808 = load i64* %index
store i64 %r808, i64* %r791
%r811 = alloca i8*
call void @llvm.gcroot(i8** %r811, i8* null)
%r768 = bitcast i8** %r811 to i64*
%r810 = call i64 @f36(i64* %r789, i64* %r790, i64* %r791) ; @lookup-variable
store i64 %r810, i64* %r768
br label %label36
label36:
%r812 = load i64* %r768
ret i64 %r812
}

; @set-variable!
define i64 @f37(i64* %env, i64* %scope, i64* %index, i64* %value) gc "shadow-stack" {
%r816 = alloca i8*
call void @llvm.gcroot(i8** %r816, i8* null)
%r814 = bitcast i8** %r816 to i64*
%r820 = alloca i8*
call void @llvm.gcroot(i8** %r820, i8* null)
%r817 = bitcast i8** %r820 to i64*
%r819 = add i64 0, 0
store i64 %r819, i64* %r817
%r822 = alloca i8*
call void @llvm.gcroot(i8** %r822, i8* null)
%r818 = bitcast i8** %r822 to i64*
%r821 = load i64* %scope
store i64 %r821, i64* %r818
%r824 = alloca i8*
call void @llvm.gcroot(i8** %r824, i8* null)
%r815 = bitcast i8** %r824 to i64*
%r823 = call i64 @f9(i64* %r817, i64* %r818) ; @=
store i64 %r823, i64* %r815
%r825 = call i64 @f2(i64* %r815) ; @raw-number
%r826 = trunc i64 %r825 to i1
br i1 %r826, label %label37, label %label38
label37:
%r831 = alloca i8*
call void @llvm.gcroot(i8** %r831, i8* null)
%r827 = bitcast i8** %r831 to i64*
%r830 = load i64* %env
store i64 %r830, i64* %r827
%r833 = alloca i8*
call void @llvm.gcroot(i8** %r833, i8* null)
%r828 = bitcast i8** %r833 to i64*
%r832 = load i64* %index
store i64 %r832, i64* %r828
%r835 = alloca i8*
call void @llvm.gcroot(i8** %r835, i8* null)
%r829 = bitcast i8** %r835 to i64*
%r834 = load i64* %value
store i64 %r834, i64* %r829
%r837 = alloca i8*
call void @llvm.gcroot(i8** %r837, i8* null)
%r814 = bitcast i8** %r837 to i64*
%r836 = call i64 @f13(i64* %r827, i64* %r828, i64* %r829) ; @vector-set!
store i64 %r836, i64* %r814
br label %label39
label38:
%r845 = alloca i8*
call void @llvm.gcroot(i8** %r845, i8* null)
%r842 = bitcast i8** %r845 to i64*
%r844 = load i64* %env
store i64 %r844, i64* %r842
%r847 = alloca i8*
call void @llvm.gcroot(i8** %r847, i8* null)
%r843 = bitcast i8** %r847 to i64*
%r846 = add i64 0, 0
store i64 %r846, i64* %r843
%r849 = alloca i8*
call void @llvm.gcroot(i8** %r849, i8* null)
%r838 = bitcast i8** %r849 to i64*
%r848 = call i64 @f12(i64* %r842, i64* %r843) ; @vector-ref
store i64 %r848, i64* %r838
%r853 = alloca i8*
call void @llvm.gcroot(i8** %r853, i8* null)
%r850 = bitcast i8** %r853 to i64*
%r852 = load i64* %scope
store i64 %r852, i64* %r850
%r855 = alloca i8*
call void @llvm.gcroot(i8** %r855, i8* null)
%r851 = bitcast i8** %r855 to i64*
%r854 = add i64 0, 4
store i64 %r854, i64* %r851
%r857 = alloca i8*
call void @llvm.gcroot(i8** %r857, i8* null)
%r839 = bitcast i8** %r857 to i64*
%r856 = call i64 @f22(i64* %r850, i64* %r851) ; @-
store i64 %r856, i64* %r839
%r859 = alloca i8*
call void @llvm.gcroot(i8** %r859, i8* null)
%r840 = bitcast i8** %r859 to i64*
%r858 = load i64* %index
store i64 %r858, i64* %r840
%r861 = alloca i8*
call void @llvm.gcroot(i8** %r861, i8* null)
%r841 = bitcast i8** %r861 to i64*
%r860 = load i64* %value
store i64 %r860, i64* %r841
%r863 = alloca i8*
call void @llvm.gcroot(i8** %r863, i8* null)
%r814 = bitcast i8** %r863 to i64*
%r862 = call i64 @f37(i64* %r838, i64* %r839, i64* %r840, i64* %r841) ; @set-variable!
store i64 %r862, i64* %r814
br label %label39
label39:
%r864 = load i64* %r814
ret i64 %r864
}

; @cons
define i64 @f21(i64* %x, i64* %y) gc "shadow-stack" {
%r875 = alloca i8*
call void @llvm.gcroot(i8** %r875, i8* null)
%r873 = bitcast i8** %r875 to i64*
%r874 = add i64 0, 8
store i64 %r874, i64* %r873
%r877 = alloca i8*
call void @llvm.gcroot(i8** %r877, i8* null)
%r870 = bitcast i8** %r877 to i64*
%r876 = call i64 @f7(i64* %r873) ; @make-vector
store i64 %r876, i64* %r870
%r879 = alloca i8*
call void @llvm.gcroot(i8** %r879, i8* null)
%r871 = bitcast i8** %r879 to i64*
%r878 = add i64 0, 0
store i64 %r878, i64* %r871
%r881 = alloca i8*
call void @llvm.gcroot(i8** %r881, i8* null)
%r872 = bitcast i8** %r881 to i64*
%r880 = load i64* %x
store i64 %r880, i64* %r872
%r883 = alloca i8*
call void @llvm.gcroot(i8** %r883, i8* null)
%r867 = bitcast i8** %r883 to i64*
%r882 = call i64 @object-set(i64* %r870, i64* %r871, i64* %r872) ; @object-set!
store i64 %r882, i64* %r867
%r885 = alloca i8*
call void @llvm.gcroot(i8** %r885, i8* null)
%r868 = bitcast i8** %r885 to i64*
%r884 = add i64 0, 4
store i64 %r884, i64* %r868
%r887 = alloca i8*
call void @llvm.gcroot(i8** %r887, i8* null)
%r869 = bitcast i8** %r887 to i64*
%r886 = load i64* %y
store i64 %r886, i64* %r869
%r889 = alloca i8*
call void @llvm.gcroot(i8** %r889, i8* null)
%r866 = bitcast i8** %r889 to i64*
%r888 = call i64 @object-set(i64* %r867, i64* %r868, i64* %r869) ; @object-set!
store i64 %r888, i64* %r866
%r890 = load i64* %r866
ret i64 %r890
}

; @car
define i64 @f29(i64* %cell) gc "shadow-stack" {
%r896 = alloca i8*
call void @llvm.gcroot(i8** %r896, i8* null)
%r893 = bitcast i8** %r896 to i64*
%r895 = load i64* %cell
store i64 %r895, i64* %r893
%r898 = alloca i8*
call void @llvm.gcroot(i8** %r898, i8* null)
%r894 = bitcast i8** %r898 to i64*
%r897 = add i64 0, 0
store i64 %r897, i64* %r894
%r900 = alloca i8*
call void @llvm.gcroot(i8** %r900, i8* null)
%r892 = bitcast i8** %r900 to i64*
%r899 = call i64 @f12(i64* %r893, i64* %r894) ; @vector-ref
store i64 %r899, i64* %r892
%r901 = load i64* %r892
ret i64 %r901
}

; @cdr
define i64 @f30(i64* %cell) gc "shadow-stack" {
%r907 = alloca i8*
call void @llvm.gcroot(i8** %r907, i8* null)
%r904 = bitcast i8** %r907 to i64*
%r906 = load i64* %cell
store i64 %r906, i64* %r904
%r909 = alloca i8*
call void @llvm.gcroot(i8** %r909, i8* null)
%r905 = bitcast i8** %r909 to i64*
%r908 = add i64 0, 4
store i64 %r908, i64* %r905
%r911 = alloca i8*
call void @llvm.gcroot(i8** %r911, i8* null)
%r903 = bitcast i8** %r911 to i64*
%r910 = call i64 @f12(i64* %r904, i64* %r905) ; @vector-ref
store i64 %r910, i64* %r903
%r912 = load i64* %r903
ret i64 %r912
}

; @cddr
define i64 @f38(i64* %x) gc "shadow-stack" {
%r918 = alloca i8*
call void @llvm.gcroot(i8** %r918, i8* null)
%r916 = bitcast i8** %r918 to i64*
%r917 = load i64* %x
store i64 %r917, i64* %r916
%r920 = alloca i8*
call void @llvm.gcroot(i8** %r920, i8* null)
%r915 = bitcast i8** %r920 to i64*
%r919 = call i64 @f30(i64* %r916) ; @cdr
store i64 %r919, i64* %r915
%r922 = alloca i8*
call void @llvm.gcroot(i8** %r922, i8* null)
%r914 = bitcast i8** %r922 to i64*
%r921 = call i64 @f30(i64* %r915) ; @cdr
store i64 %r921, i64* %r914
%r923 = load i64* %r914
ret i64 %r923
}

; @cdddr
define i64 @f39(i64* %x) gc "shadow-stack" {
%r930 = alloca i8*
call void @llvm.gcroot(i8** %r930, i8* null)
%r928 = bitcast i8** %r930 to i64*
%r929 = load i64* %x
store i64 %r929, i64* %r928
%r932 = alloca i8*
call void @llvm.gcroot(i8** %r932, i8* null)
%r927 = bitcast i8** %r932 to i64*
%r931 = call i64 @f30(i64* %r928) ; @cdr
store i64 %r931, i64* %r927
%r934 = alloca i8*
call void @llvm.gcroot(i8** %r934, i8* null)
%r926 = bitcast i8** %r934 to i64*
%r933 = call i64 @f30(i64* %r927) ; @cdr
store i64 %r933, i64* %r926
%r936 = alloca i8*
call void @llvm.gcroot(i8** %r936, i8* null)
%r925 = bitcast i8** %r936 to i64*
%r935 = call i64 @f30(i64* %r926) ; @cdr
store i64 %r935, i64* %r925
%r937 = load i64* %r925
ret i64 %r937
}

; @cadr
define i64 @f40(i64* %x) gc "shadow-stack" {
%r943 = alloca i8*
call void @llvm.gcroot(i8** %r943, i8* null)
%r941 = bitcast i8** %r943 to i64*
%r942 = load i64* %x
store i64 %r942, i64* %r941
%r945 = alloca i8*
call void @llvm.gcroot(i8** %r945, i8* null)
%r940 = bitcast i8** %r945 to i64*
%r944 = call i64 @f30(i64* %r941) ; @cdr
store i64 %r944, i64* %r940
%r947 = alloca i8*
call void @llvm.gcroot(i8** %r947, i8* null)
%r939 = bitcast i8** %r947 to i64*
%r946 = call i64 @f29(i64* %r940) ; @car
store i64 %r946, i64* %r939
%r948 = load i64* %r939
ret i64 %r948
}

; @cdadr
define i64 @f41(i64* %x) gc "shadow-stack" {
%r955 = alloca i8*
call void @llvm.gcroot(i8** %r955, i8* null)
%r953 = bitcast i8** %r955 to i64*
%r954 = load i64* %x
store i64 %r954, i64* %r953
%r957 = alloca i8*
call void @llvm.gcroot(i8** %r957, i8* null)
%r952 = bitcast i8** %r957 to i64*
%r956 = call i64 @f30(i64* %r953) ; @cdr
store i64 %r956, i64* %r952
%r959 = alloca i8*
call void @llvm.gcroot(i8** %r959, i8* null)
%r951 = bitcast i8** %r959 to i64*
%r958 = call i64 @f29(i64* %r952) ; @car
store i64 %r958, i64* %r951
%r961 = alloca i8*
call void @llvm.gcroot(i8** %r961, i8* null)
%r950 = bitcast i8** %r961 to i64*
%r960 = call i64 @f30(i64* %r951) ; @cdr
store i64 %r960, i64* %r950
%r962 = load i64* %r950
ret i64 %r962
}

; @caadr
define i64 @f42(i64* %x) gc "shadow-stack" {
%r969 = alloca i8*
call void @llvm.gcroot(i8** %r969, i8* null)
%r967 = bitcast i8** %r969 to i64*
%r968 = load i64* %x
store i64 %r968, i64* %r967
%r971 = alloca i8*
call void @llvm.gcroot(i8** %r971, i8* null)
%r966 = bitcast i8** %r971 to i64*
%r970 = call i64 @f30(i64* %r967) ; @cdr
store i64 %r970, i64* %r966
%r973 = alloca i8*
call void @llvm.gcroot(i8** %r973, i8* null)
%r965 = bitcast i8** %r973 to i64*
%r972 = call i64 @f29(i64* %r966) ; @car
store i64 %r972, i64* %r965
%r975 = alloca i8*
call void @llvm.gcroot(i8** %r975, i8* null)
%r964 = bitcast i8** %r975 to i64*
%r974 = call i64 @f29(i64* %r965) ; @car
store i64 %r974, i64* %r964
%r976 = load i64* %r964
ret i64 %r976
}

; @caddr
define i64 @f43(i64* %x) gc "shadow-stack" {
%r983 = alloca i8*
call void @llvm.gcroot(i8** %r983, i8* null)
%r981 = bitcast i8** %r983 to i64*
%r982 = load i64* %x
store i64 %r982, i64* %r981
%r985 = alloca i8*
call void @llvm.gcroot(i8** %r985, i8* null)
%r980 = bitcast i8** %r985 to i64*
%r984 = call i64 @f30(i64* %r981) ; @cdr
store i64 %r984, i64* %r980
%r987 = alloca i8*
call void @llvm.gcroot(i8** %r987, i8* null)
%r979 = bitcast i8** %r987 to i64*
%r986 = call i64 @f30(i64* %r980) ; @cdr
store i64 %r986, i64* %r979
%r989 = alloca i8*
call void @llvm.gcroot(i8** %r989, i8* null)
%r978 = bitcast i8** %r989 to i64*
%r988 = call i64 @f29(i64* %r979) ; @car
store i64 %r988, i64* %r978
%r990 = load i64* %r978
ret i64 %r990
}

; @cadddr
define i64 @f44(i64* %x) gc "shadow-stack" {
%r998 = alloca i8*
call void @llvm.gcroot(i8** %r998, i8* null)
%r996 = bitcast i8** %r998 to i64*
%r997 = load i64* %x
store i64 %r997, i64* %r996
%r1000 = alloca i8*
call void @llvm.gcroot(i8** %r1000, i8* null)
%r995 = bitcast i8** %r1000 to i64*
%r999 = call i64 @f30(i64* %r996) ; @cdr
store i64 %r999, i64* %r995
%r1002 = alloca i8*
call void @llvm.gcroot(i8** %r1002, i8* null)
%r994 = bitcast i8** %r1002 to i64*
%r1001 = call i64 @f30(i64* %r995) ; @cdr
store i64 %r1001, i64* %r994
%r1004 = alloca i8*
call void @llvm.gcroot(i8** %r1004, i8* null)
%r993 = bitcast i8** %r1004 to i64*
%r1003 = call i64 @f30(i64* %r994) ; @cdr
store i64 %r1003, i64* %r993
%r1006 = alloca i8*
call void @llvm.gcroot(i8** %r1006, i8* null)
%r992 = bitcast i8** %r1006 to i64*
%r1005 = call i64 @f29(i64* %r993) ; @car
store i64 %r1005, i64* %r992
%r1007 = load i64* %r992
ret i64 %r1007
}

; @set-car!
define i64 @f45(i64* %cell, i64* %val) gc "shadow-stack" {
%r1014 = alloca i8*
call void @llvm.gcroot(i8** %r1014, i8* null)
%r1010 = bitcast i8** %r1014 to i64*
%r1013 = load i64* %cell
store i64 %r1013, i64* %r1010
%r1016 = alloca i8*
call void @llvm.gcroot(i8** %r1016, i8* null)
%r1011 = bitcast i8** %r1016 to i64*
%r1015 = add i64 0, 0
store i64 %r1015, i64* %r1011
%r1018 = alloca i8*
call void @llvm.gcroot(i8** %r1018, i8* null)
%r1012 = bitcast i8** %r1018 to i64*
%r1017 = load i64* %val
store i64 %r1017, i64* %r1012
%r1020 = alloca i8*
call void @llvm.gcroot(i8** %r1020, i8* null)
%r1009 = bitcast i8** %r1020 to i64*
%r1019 = call i64 @f13(i64* %r1010, i64* %r1011, i64* %r1012) ; @vector-set!
store i64 %r1019, i64* %r1009
%r1021 = load i64* %r1009
ret i64 %r1021
}

; @set-cdr!
define i64 @f46(i64* %cell, i64* %val) gc "shadow-stack" {
%r1028 = alloca i8*
call void @llvm.gcroot(i8** %r1028, i8* null)
%r1024 = bitcast i8** %r1028 to i64*
%r1027 = load i64* %cell
store i64 %r1027, i64* %r1024
%r1030 = alloca i8*
call void @llvm.gcroot(i8** %r1030, i8* null)
%r1025 = bitcast i8** %r1030 to i64*
%r1029 = add i64 0, 4
store i64 %r1029, i64* %r1025
%r1032 = alloca i8*
call void @llvm.gcroot(i8** %r1032, i8* null)
%r1026 = bitcast i8** %r1032 to i64*
%r1031 = load i64* %val
store i64 %r1031, i64* %r1026
%r1034 = alloca i8*
call void @llvm.gcroot(i8** %r1034, i8* null)
%r1023 = bitcast i8** %r1034 to i64*
%r1033 = call i64 @f13(i64* %r1024, i64* %r1025, i64* %r1026) ; @vector-set!
store i64 %r1033, i64* %r1023
%r1035 = load i64* %r1023
ret i64 %r1035
}

; @*
define i64 @f47(i64* %x, i64* %y) gc "shadow-stack" {
%r1043 = alloca i8*
call void @llvm.gcroot(i8** %r1043, i8* null)
%r1041 = bitcast i8** %r1043 to i64*
%r1042 = load i64* %x
store i64 %r1042, i64* %r1041
%r1045 = alloca i8*
call void @llvm.gcroot(i8** %r1045, i8* null)
%r1039 = bitcast i8** %r1045 to i64*
%r1044 = call i64 @number(i64* %r1041) ; @number?
store i64 %r1044, i64* %r1039
%r1047 = ptrtoint [35 x i8]* @g1046 to i64
%r1049 = alloca i8*
call void @llvm.gcroot(i8** %r1049, i8* null)
%r1040 = bitcast i8** %r1049 to i64*
%r1052 = alloca i8*
call void @llvm.gcroot(i8** %r1052, i8* null)
%r1050 = bitcast i8** %r1052 to i64*
%r1051 = add i64 0, 136
store i64 %r1051, i64* %r1050
%r1055 = alloca i8*
call void @llvm.gcroot(i8** %r1055, i8* null)
%r1053 = bitcast i8** %r1055 to i64*
%r1054 = add i64 0, 0
store i64 %r1054, i64* %r1053
%r1048 = call i64 @make-string-or-symbol(i64 %r1047, i64* %r1050, i64* %r1053)
store i64 %r1048, i64* %r1040
%r1057 = alloca i8*
call void @llvm.gcroot(i8** %r1057, i8* null)
%r1038 = bitcast i8** %r1057 to i64*
%r1056 = call i64 @f6(i64* %r1039, i64* %r1040) ; @ensure
store i64 %r1056, i64* %r1038
%r1063 = alloca i8*
call void @llvm.gcroot(i8** %r1063, i8* null)
%r1061 = bitcast i8** %r1063 to i64*
%r1062 = load i64* %y
store i64 %r1062, i64* %r1061
%r1065 = alloca i8*
call void @llvm.gcroot(i8** %r1065, i8* null)
%r1059 = bitcast i8** %r1065 to i64*
%r1064 = call i64 @number(i64* %r1061) ; @number?
store i64 %r1064, i64* %r1059
%r1067 = ptrtoint [36 x i8]* @g1066 to i64
%r1069 = alloca i8*
call void @llvm.gcroot(i8** %r1069, i8* null)
%r1060 = bitcast i8** %r1069 to i64*
%r1072 = alloca i8*
call void @llvm.gcroot(i8** %r1072, i8* null)
%r1070 = bitcast i8** %r1072 to i64*
%r1071 = add i64 0, 140
store i64 %r1071, i64* %r1070
%r1075 = alloca i8*
call void @llvm.gcroot(i8** %r1075, i8* null)
%r1073 = bitcast i8** %r1075 to i64*
%r1074 = add i64 0, 0
store i64 %r1074, i64* %r1073
%r1068 = call i64 @make-string-or-symbol(i64 %r1067, i64* %r1070, i64* %r1073)
store i64 %r1068, i64* %r1060
%r1077 = alloca i8*
call void @llvm.gcroot(i8** %r1077, i8* null)
%r1058 = bitcast i8** %r1077 to i64*
%r1076 = call i64 @f6(i64* %r1059, i64* %r1060) ; @ensure
store i64 %r1076, i64* %r1058
%r1078 = load i64* %x
%r1079 = load i64* %y
%r1080 = lshr i64 %r1078, 2
%r1081 = lshr i64 %r1079, 2
%r1082 = mul i64 %r1080, %r1081
%r1084 = alloca i8*
call void @llvm.gcroot(i8** %r1084, i8* null)
%r1037 = bitcast i8** %r1084 to i64*
%r1083 = call i64 @make-number(i64 %r1082)
store i64 %r1083, i64* %r1037
%r1085 = load i64* %r1037
ret i64 %r1085
}

; @-
define i64 @f22(i64* %x, i64* %y) gc "shadow-stack" {
%r1093 = alloca i8*
call void @llvm.gcroot(i8** %r1093, i8* null)
%r1091 = bitcast i8** %r1093 to i64*
%r1092 = load i64* %x
store i64 %r1092, i64* %r1091
%r1095 = alloca i8*
call void @llvm.gcroot(i8** %r1095, i8* null)
%r1089 = bitcast i8** %r1095 to i64*
%r1094 = call i64 @number(i64* %r1091) ; @number?
store i64 %r1094, i64* %r1089
%r1097 = ptrtoint [35 x i8]* @g1096 to i64
%r1099 = alloca i8*
call void @llvm.gcroot(i8** %r1099, i8* null)
%r1090 = bitcast i8** %r1099 to i64*
%r1102 = alloca i8*
call void @llvm.gcroot(i8** %r1102, i8* null)
%r1100 = bitcast i8** %r1102 to i64*
%r1101 = add i64 0, 136
store i64 %r1101, i64* %r1100
%r1105 = alloca i8*
call void @llvm.gcroot(i8** %r1105, i8* null)
%r1103 = bitcast i8** %r1105 to i64*
%r1104 = add i64 0, 0
store i64 %r1104, i64* %r1103
%r1098 = call i64 @make-string-or-symbol(i64 %r1097, i64* %r1100, i64* %r1103)
store i64 %r1098, i64* %r1090
%r1107 = alloca i8*
call void @llvm.gcroot(i8** %r1107, i8* null)
%r1088 = bitcast i8** %r1107 to i64*
%r1106 = call i64 @f6(i64* %r1089, i64* %r1090) ; @ensure
store i64 %r1106, i64* %r1088
%r1113 = alloca i8*
call void @llvm.gcroot(i8** %r1113, i8* null)
%r1111 = bitcast i8** %r1113 to i64*
%r1112 = load i64* %y
store i64 %r1112, i64* %r1111
%r1115 = alloca i8*
call void @llvm.gcroot(i8** %r1115, i8* null)
%r1109 = bitcast i8** %r1115 to i64*
%r1114 = call i64 @number(i64* %r1111) ; @number?
store i64 %r1114, i64* %r1109
%r1117 = ptrtoint [36 x i8]* @g1116 to i64
%r1119 = alloca i8*
call void @llvm.gcroot(i8** %r1119, i8* null)
%r1110 = bitcast i8** %r1119 to i64*
%r1122 = alloca i8*
call void @llvm.gcroot(i8** %r1122, i8* null)
%r1120 = bitcast i8** %r1122 to i64*
%r1121 = add i64 0, 140
store i64 %r1121, i64* %r1120
%r1125 = alloca i8*
call void @llvm.gcroot(i8** %r1125, i8* null)
%r1123 = bitcast i8** %r1125 to i64*
%r1124 = add i64 0, 0
store i64 %r1124, i64* %r1123
%r1118 = call i64 @make-string-or-symbol(i64 %r1117, i64* %r1120, i64* %r1123)
store i64 %r1118, i64* %r1110
%r1127 = alloca i8*
call void @llvm.gcroot(i8** %r1127, i8* null)
%r1108 = bitcast i8** %r1127 to i64*
%r1126 = call i64 @f6(i64* %r1109, i64* %r1110) ; @ensure
store i64 %r1126, i64* %r1108
%r1128 = load i64* %x
%r1129 = load i64* %y
%r1130 = lshr i64 %r1128, 2
%r1131 = lshr i64 %r1129, 2
%r1132 = sub i64 %r1130, %r1131
%r1134 = alloca i8*
call void @llvm.gcroot(i8** %r1134, i8* null)
%r1087 = bitcast i8** %r1134 to i64*
%r1133 = call i64 @make-number(i64 %r1132)
store i64 %r1133, i64* %r1087
%r1135 = load i64* %r1087
ret i64 %r1135
}

; @+
define i64 @f16(i64* %x, i64* %y) gc "shadow-stack" {
%r1143 = alloca i8*
call void @llvm.gcroot(i8** %r1143, i8* null)
%r1141 = bitcast i8** %r1143 to i64*
%r1142 = load i64* %x
store i64 %r1142, i64* %r1141
%r1145 = alloca i8*
call void @llvm.gcroot(i8** %r1145, i8* null)
%r1139 = bitcast i8** %r1145 to i64*
%r1144 = call i64 @number(i64* %r1141) ; @number?
store i64 %r1144, i64* %r1139
%r1147 = ptrtoint [35 x i8]* @g1146 to i64
%r1149 = alloca i8*
call void @llvm.gcroot(i8** %r1149, i8* null)
%r1140 = bitcast i8** %r1149 to i64*
%r1152 = alloca i8*
call void @llvm.gcroot(i8** %r1152, i8* null)
%r1150 = bitcast i8** %r1152 to i64*
%r1151 = add i64 0, 136
store i64 %r1151, i64* %r1150
%r1155 = alloca i8*
call void @llvm.gcroot(i8** %r1155, i8* null)
%r1153 = bitcast i8** %r1155 to i64*
%r1154 = add i64 0, 0
store i64 %r1154, i64* %r1153
%r1148 = call i64 @make-string-or-symbol(i64 %r1147, i64* %r1150, i64* %r1153)
store i64 %r1148, i64* %r1140
%r1157 = alloca i8*
call void @llvm.gcroot(i8** %r1157, i8* null)
%r1138 = bitcast i8** %r1157 to i64*
%r1156 = call i64 @f6(i64* %r1139, i64* %r1140) ; @ensure
store i64 %r1156, i64* %r1138
%r1163 = alloca i8*
call void @llvm.gcroot(i8** %r1163, i8* null)
%r1161 = bitcast i8** %r1163 to i64*
%r1162 = load i64* %y
store i64 %r1162, i64* %r1161
%r1165 = alloca i8*
call void @llvm.gcroot(i8** %r1165, i8* null)
%r1159 = bitcast i8** %r1165 to i64*
%r1164 = call i64 @number(i64* %r1161) ; @number?
store i64 %r1164, i64* %r1159
%r1167 = ptrtoint [36 x i8]* @g1166 to i64
%r1169 = alloca i8*
call void @llvm.gcroot(i8** %r1169, i8* null)
%r1160 = bitcast i8** %r1169 to i64*
%r1172 = alloca i8*
call void @llvm.gcroot(i8** %r1172, i8* null)
%r1170 = bitcast i8** %r1172 to i64*
%r1171 = add i64 0, 140
store i64 %r1171, i64* %r1170
%r1175 = alloca i8*
call void @llvm.gcroot(i8** %r1175, i8* null)
%r1173 = bitcast i8** %r1175 to i64*
%r1174 = add i64 0, 0
store i64 %r1174, i64* %r1173
%r1168 = call i64 @make-string-or-symbol(i64 %r1167, i64* %r1170, i64* %r1173)
store i64 %r1168, i64* %r1160
%r1177 = alloca i8*
call void @llvm.gcroot(i8** %r1177, i8* null)
%r1158 = bitcast i8** %r1177 to i64*
%r1176 = call i64 @f6(i64* %r1159, i64* %r1160) ; @ensure
store i64 %r1176, i64* %r1158
%r1178 = load i64* %x
%r1179 = load i64* %y
%r1180 = lshr i64 %r1178, 2
%r1181 = lshr i64 %r1179, 2
%r1182 = add i64 %r1180, %r1181
%r1184 = alloca i8*
call void @llvm.gcroot(i8** %r1184, i8* null)
%r1137 = bitcast i8** %r1184 to i64*
%r1183 = call i64 @make-number(i64 %r1182)
store i64 %r1183, i64* %r1137
%r1185 = load i64* %r1137
ret i64 %r1185
}

; @/
define i64 @f48(i64* %x, i64* %y) gc "shadow-stack" {
%r1193 = alloca i8*
call void @llvm.gcroot(i8** %r1193, i8* null)
%r1191 = bitcast i8** %r1193 to i64*
%r1192 = load i64* %x
store i64 %r1192, i64* %r1191
%r1195 = alloca i8*
call void @llvm.gcroot(i8** %r1195, i8* null)
%r1189 = bitcast i8** %r1195 to i64*
%r1194 = call i64 @number(i64* %r1191) ; @number?
store i64 %r1194, i64* %r1189
%r1197 = ptrtoint [35 x i8]* @g1196 to i64
%r1199 = alloca i8*
call void @llvm.gcroot(i8** %r1199, i8* null)
%r1190 = bitcast i8** %r1199 to i64*
%r1202 = alloca i8*
call void @llvm.gcroot(i8** %r1202, i8* null)
%r1200 = bitcast i8** %r1202 to i64*
%r1201 = add i64 0, 136
store i64 %r1201, i64* %r1200
%r1205 = alloca i8*
call void @llvm.gcroot(i8** %r1205, i8* null)
%r1203 = bitcast i8** %r1205 to i64*
%r1204 = add i64 0, 0
store i64 %r1204, i64* %r1203
%r1198 = call i64 @make-string-or-symbol(i64 %r1197, i64* %r1200, i64* %r1203)
store i64 %r1198, i64* %r1190
%r1207 = alloca i8*
call void @llvm.gcroot(i8** %r1207, i8* null)
%r1188 = bitcast i8** %r1207 to i64*
%r1206 = call i64 @f6(i64* %r1189, i64* %r1190) ; @ensure
store i64 %r1206, i64* %r1188
%r1213 = alloca i8*
call void @llvm.gcroot(i8** %r1213, i8* null)
%r1211 = bitcast i8** %r1213 to i64*
%r1212 = load i64* %y
store i64 %r1212, i64* %r1211
%r1215 = alloca i8*
call void @llvm.gcroot(i8** %r1215, i8* null)
%r1209 = bitcast i8** %r1215 to i64*
%r1214 = call i64 @number(i64* %r1211) ; @number?
store i64 %r1214, i64* %r1209
%r1217 = ptrtoint [36 x i8]* @g1216 to i64
%r1219 = alloca i8*
call void @llvm.gcroot(i8** %r1219, i8* null)
%r1210 = bitcast i8** %r1219 to i64*
%r1222 = alloca i8*
call void @llvm.gcroot(i8** %r1222, i8* null)
%r1220 = bitcast i8** %r1222 to i64*
%r1221 = add i64 0, 140
store i64 %r1221, i64* %r1220
%r1225 = alloca i8*
call void @llvm.gcroot(i8** %r1225, i8* null)
%r1223 = bitcast i8** %r1225 to i64*
%r1224 = add i64 0, 0
store i64 %r1224, i64* %r1223
%r1218 = call i64 @make-string-or-symbol(i64 %r1217, i64* %r1220, i64* %r1223)
store i64 %r1218, i64* %r1210
%r1227 = alloca i8*
call void @llvm.gcroot(i8** %r1227, i8* null)
%r1208 = bitcast i8** %r1227 to i64*
%r1226 = call i64 @f6(i64* %r1209, i64* %r1210) ; @ensure
store i64 %r1226, i64* %r1208
%r1228 = load i64* %x
%r1229 = load i64* %y
%r1230 = lshr i64 %r1228, 2
%r1231 = lshr i64 %r1229, 2
%r1232 = udiv i64 %r1230, %r1231
%r1234 = alloca i8*
call void @llvm.gcroot(i8** %r1234, i8* null)
%r1187 = bitcast i8** %r1234 to i64*
%r1233 = call i64 @make-number(i64 %r1232)
store i64 %r1233, i64* %r1187
%r1235 = load i64* %r1187
ret i64 %r1235
}

; @%
define i64 @f49(i64* %x, i64* %y) gc "shadow-stack" {
%r1243 = alloca i8*
call void @llvm.gcroot(i8** %r1243, i8* null)
%r1241 = bitcast i8** %r1243 to i64*
%r1242 = load i64* %x
store i64 %r1242, i64* %r1241
%r1245 = alloca i8*
call void @llvm.gcroot(i8** %r1245, i8* null)
%r1239 = bitcast i8** %r1245 to i64*
%r1244 = call i64 @number(i64* %r1241) ; @number?
store i64 %r1244, i64* %r1239
%r1247 = ptrtoint [35 x i8]* @g1246 to i64
%r1249 = alloca i8*
call void @llvm.gcroot(i8** %r1249, i8* null)
%r1240 = bitcast i8** %r1249 to i64*
%r1252 = alloca i8*
call void @llvm.gcroot(i8** %r1252, i8* null)
%r1250 = bitcast i8** %r1252 to i64*
%r1251 = add i64 0, 136
store i64 %r1251, i64* %r1250
%r1255 = alloca i8*
call void @llvm.gcroot(i8** %r1255, i8* null)
%r1253 = bitcast i8** %r1255 to i64*
%r1254 = add i64 0, 0
store i64 %r1254, i64* %r1253
%r1248 = call i64 @make-string-or-symbol(i64 %r1247, i64* %r1250, i64* %r1253)
store i64 %r1248, i64* %r1240
%r1257 = alloca i8*
call void @llvm.gcroot(i8** %r1257, i8* null)
%r1238 = bitcast i8** %r1257 to i64*
%r1256 = call i64 @f6(i64* %r1239, i64* %r1240) ; @ensure
store i64 %r1256, i64* %r1238
%r1263 = alloca i8*
call void @llvm.gcroot(i8** %r1263, i8* null)
%r1261 = bitcast i8** %r1263 to i64*
%r1262 = load i64* %y
store i64 %r1262, i64* %r1261
%r1265 = alloca i8*
call void @llvm.gcroot(i8** %r1265, i8* null)
%r1259 = bitcast i8** %r1265 to i64*
%r1264 = call i64 @number(i64* %r1261) ; @number?
store i64 %r1264, i64* %r1259
%r1267 = ptrtoint [36 x i8]* @g1266 to i64
%r1269 = alloca i8*
call void @llvm.gcroot(i8** %r1269, i8* null)
%r1260 = bitcast i8** %r1269 to i64*
%r1272 = alloca i8*
call void @llvm.gcroot(i8** %r1272, i8* null)
%r1270 = bitcast i8** %r1272 to i64*
%r1271 = add i64 0, 140
store i64 %r1271, i64* %r1270
%r1275 = alloca i8*
call void @llvm.gcroot(i8** %r1275, i8* null)
%r1273 = bitcast i8** %r1275 to i64*
%r1274 = add i64 0, 0
store i64 %r1274, i64* %r1273
%r1268 = call i64 @make-string-or-symbol(i64 %r1267, i64* %r1270, i64* %r1273)
store i64 %r1268, i64* %r1260
%r1277 = alloca i8*
call void @llvm.gcroot(i8** %r1277, i8* null)
%r1258 = bitcast i8** %r1277 to i64*
%r1276 = call i64 @f6(i64* %r1259, i64* %r1260) ; @ensure
store i64 %r1276, i64* %r1258
%r1278 = load i64* %x
%r1279 = load i64* %y
%r1280 = lshr i64 %r1278, 2
%r1281 = lshr i64 %r1279, 2
%r1282 = urem i64 %r1280, %r1281
%r1284 = alloca i8*
call void @llvm.gcroot(i8** %r1284, i8* null)
%r1237 = bitcast i8** %r1284 to i64*
%r1283 = call i64 @make-number(i64 %r1282)
store i64 %r1283, i64* %r1237
%r1285 = load i64* %r1237
ret i64 %r1285
}

; @=
define i64 @f9(i64* %x, i64* %y) gc "shadow-stack" {
%r1289 = alloca i8*
call void @llvm.gcroot(i8** %r1289, i8* null)
%r1287 = bitcast i8** %r1289 to i64*
%r1294 = alloca i8*
call void @llvm.gcroot(i8** %r1294, i8* null)
%r1292 = bitcast i8** %r1294 to i64*
%r1293 = load i64* %x
store i64 %r1293, i64* %r1292
%r1296 = alloca i8*
call void @llvm.gcroot(i8** %r1296, i8* null)
%r1290 = bitcast i8** %r1296 to i64*
%r1295 = call i64 @number(i64* %r1292) ; @number?
store i64 %r1295, i64* %r1290
%r1299 = alloca i8*
call void @llvm.gcroot(i8** %r1299, i8* null)
%r1297 = bitcast i8** %r1299 to i64*
%r1298 = load i64* %y
store i64 %r1298, i64* %r1297
%r1301 = alloca i8*
call void @llvm.gcroot(i8** %r1301, i8* null)
%r1291 = bitcast i8** %r1301 to i64*
%r1300 = call i64 @number(i64* %r1297) ; @number?
store i64 %r1300, i64* %r1291
%r1303 = alloca i8*
call void @llvm.gcroot(i8** %r1303, i8* null)
%r1288 = bitcast i8** %r1303 to i64*
%r1302 = call i64 @f3(i64* %r1290, i64* %r1291) ; @and
store i64 %r1302, i64* %r1288
%r1304 = call i64 @f2(i64* %r1288) ; @raw-number
%r1305 = trunc i64 %r1304 to i1
br i1 %r1305, label %label40, label %label41
label40:
%r1306 = load i64* %x
%r1307 = load i64* %y
%r1308 = lshr i64 %r1306, 2
%r1309 = lshr i64 %r1307, 2
%r1311 = icmp eq i64 %r1308, %r1309
%r1310 = zext i1 %r1311 to i64
%r1313 = alloca i8*
call void @llvm.gcroot(i8** %r1313, i8* null)
%r1287 = bitcast i8** %r1313 to i64*
%r1312 = call i64 @make-number(i64 %r1310)
store i64 %r1312, i64* %r1287
br label %label42
label41:
%r1317 = alloca i8*
call void @llvm.gcroot(i8** %r1317, i8* null)
%r1314 = bitcast i8** %r1317 to i64*
%r1316 = add i64 0, 0
store i64 %r1316, i64* %r1314
%r1319 = ptrtoint [24 x i8]* @g1318 to i64
%r1321 = alloca i8*
call void @llvm.gcroot(i8** %r1321, i8* null)
%r1315 = bitcast i8** %r1321 to i64*
%r1324 = alloca i8*
call void @llvm.gcroot(i8** %r1324, i8* null)
%r1322 = bitcast i8** %r1324 to i64*
%r1323 = add i64 0, 92
store i64 %r1323, i64* %r1322
%r1327 = alloca i8*
call void @llvm.gcroot(i8** %r1327, i8* null)
%r1325 = bitcast i8** %r1327 to i64*
%r1326 = add i64 0, 0
store i64 %r1326, i64* %r1325
%r1320 = call i64 @make-string-or-symbol(i64 %r1319, i64* %r1322, i64* %r1325)
store i64 %r1320, i64* %r1315
%r1329 = alloca i8*
call void @llvm.gcroot(i8** %r1329, i8* null)
%r1287 = bitcast i8** %r1329 to i64*
%r1328 = call i64 @f6(i64* %r1314, i64* %r1315) ; @ensure
store i64 %r1328, i64* %r1287
br label %label42
label42:
%r1330 = load i64* %r1287
ret i64 %r1330
}

; @>
define i64 @f50(i64* %x, i64* %y) gc "shadow-stack" {
%r1334 = alloca i8*
call void @llvm.gcroot(i8** %r1334, i8* null)
%r1332 = bitcast i8** %r1334 to i64*
%r1339 = alloca i8*
call void @llvm.gcroot(i8** %r1339, i8* null)
%r1337 = bitcast i8** %r1339 to i64*
%r1338 = load i64* %x
store i64 %r1338, i64* %r1337
%r1341 = alloca i8*
call void @llvm.gcroot(i8** %r1341, i8* null)
%r1335 = bitcast i8** %r1341 to i64*
%r1340 = call i64 @number(i64* %r1337) ; @number?
store i64 %r1340, i64* %r1335
%r1344 = alloca i8*
call void @llvm.gcroot(i8** %r1344, i8* null)
%r1342 = bitcast i8** %r1344 to i64*
%r1343 = load i64* %y
store i64 %r1343, i64* %r1342
%r1346 = alloca i8*
call void @llvm.gcroot(i8** %r1346, i8* null)
%r1336 = bitcast i8** %r1346 to i64*
%r1345 = call i64 @number(i64* %r1342) ; @number?
store i64 %r1345, i64* %r1336
%r1348 = alloca i8*
call void @llvm.gcroot(i8** %r1348, i8* null)
%r1333 = bitcast i8** %r1348 to i64*
%r1347 = call i64 @f3(i64* %r1335, i64* %r1336) ; @and
store i64 %r1347, i64* %r1333
%r1349 = call i64 @f2(i64* %r1333) ; @raw-number
%r1350 = trunc i64 %r1349 to i1
br i1 %r1350, label %label43, label %label44
label43:
%r1351 = load i64* %x
%r1352 = load i64* %y
%r1353 = lshr i64 %r1351, 2
%r1354 = lshr i64 %r1352, 2
%r1356 = icmp ugt i64 %r1353, %r1354
%r1355 = zext i1 %r1356 to i64
%r1358 = alloca i8*
call void @llvm.gcroot(i8** %r1358, i8* null)
%r1332 = bitcast i8** %r1358 to i64*
%r1357 = call i64 @make-number(i64 %r1355)
store i64 %r1357, i64* %r1332
br label %label45
label44:
%r1362 = alloca i8*
call void @llvm.gcroot(i8** %r1362, i8* null)
%r1359 = bitcast i8** %r1362 to i64*
%r1361 = add i64 0, 0
store i64 %r1361, i64* %r1359
%r1364 = ptrtoint [24 x i8]* @g1363 to i64
%r1366 = alloca i8*
call void @llvm.gcroot(i8** %r1366, i8* null)
%r1360 = bitcast i8** %r1366 to i64*
%r1369 = alloca i8*
call void @llvm.gcroot(i8** %r1369, i8* null)
%r1367 = bitcast i8** %r1369 to i64*
%r1368 = add i64 0, 92
store i64 %r1368, i64* %r1367
%r1372 = alloca i8*
call void @llvm.gcroot(i8** %r1372, i8* null)
%r1370 = bitcast i8** %r1372 to i64*
%r1371 = add i64 0, 0
store i64 %r1371, i64* %r1370
%r1365 = call i64 @make-string-or-symbol(i64 %r1364, i64* %r1367, i64* %r1370)
store i64 %r1365, i64* %r1360
%r1374 = alloca i8*
call void @llvm.gcroot(i8** %r1374, i8* null)
%r1332 = bitcast i8** %r1374 to i64*
%r1373 = call i64 @f6(i64* %r1359, i64* %r1360) ; @ensure
store i64 %r1373, i64* %r1332
br label %label45
label45:
%r1375 = load i64* %r1332
ret i64 %r1375
}

; @<
define i64 @f11(i64* %x, i64* %y) gc "shadow-stack" {
%r1379 = alloca i8*
call void @llvm.gcroot(i8** %r1379, i8* null)
%r1377 = bitcast i8** %r1379 to i64*
%r1384 = alloca i8*
call void @llvm.gcroot(i8** %r1384, i8* null)
%r1382 = bitcast i8** %r1384 to i64*
%r1383 = load i64* %x
store i64 %r1383, i64* %r1382
%r1386 = alloca i8*
call void @llvm.gcroot(i8** %r1386, i8* null)
%r1380 = bitcast i8** %r1386 to i64*
%r1385 = call i64 @number(i64* %r1382) ; @number?
store i64 %r1385, i64* %r1380
%r1389 = alloca i8*
call void @llvm.gcroot(i8** %r1389, i8* null)
%r1387 = bitcast i8** %r1389 to i64*
%r1388 = load i64* %y
store i64 %r1388, i64* %r1387
%r1391 = alloca i8*
call void @llvm.gcroot(i8** %r1391, i8* null)
%r1381 = bitcast i8** %r1391 to i64*
%r1390 = call i64 @number(i64* %r1387) ; @number?
store i64 %r1390, i64* %r1381
%r1393 = alloca i8*
call void @llvm.gcroot(i8** %r1393, i8* null)
%r1378 = bitcast i8** %r1393 to i64*
%r1392 = call i64 @f3(i64* %r1380, i64* %r1381) ; @and
store i64 %r1392, i64* %r1378
%r1394 = call i64 @f2(i64* %r1378) ; @raw-number
%r1395 = trunc i64 %r1394 to i1
br i1 %r1395, label %label46, label %label47
label46:
%r1396 = load i64* %x
%r1397 = load i64* %y
%r1398 = lshr i64 %r1396, 2
%r1399 = lshr i64 %r1397, 2
%r1401 = icmp ult i64 %r1398, %r1399
%r1400 = zext i1 %r1401 to i64
%r1403 = alloca i8*
call void @llvm.gcroot(i8** %r1403, i8* null)
%r1377 = bitcast i8** %r1403 to i64*
%r1402 = call i64 @make-number(i64 %r1400)
store i64 %r1402, i64* %r1377
br label %label48
label47:
%r1407 = alloca i8*
call void @llvm.gcroot(i8** %r1407, i8* null)
%r1404 = bitcast i8** %r1407 to i64*
%r1406 = add i64 0, 0
store i64 %r1406, i64* %r1404
%r1409 = ptrtoint [24 x i8]* @g1408 to i64
%r1411 = alloca i8*
call void @llvm.gcroot(i8** %r1411, i8* null)
%r1405 = bitcast i8** %r1411 to i64*
%r1414 = alloca i8*
call void @llvm.gcroot(i8** %r1414, i8* null)
%r1412 = bitcast i8** %r1414 to i64*
%r1413 = add i64 0, 92
store i64 %r1413, i64* %r1412
%r1417 = alloca i8*
call void @llvm.gcroot(i8** %r1417, i8* null)
%r1415 = bitcast i8** %r1417 to i64*
%r1416 = add i64 0, 0
store i64 %r1416, i64* %r1415
%r1410 = call i64 @make-string-or-symbol(i64 %r1409, i64* %r1412, i64* %r1415)
store i64 %r1410, i64* %r1405
%r1419 = alloca i8*
call void @llvm.gcroot(i8** %r1419, i8* null)
%r1377 = bitcast i8** %r1419 to i64*
%r1418 = call i64 @f6(i64* %r1404, i64* %r1405) ; @ensure
store i64 %r1418, i64* %r1377
br label %label48
label48:
%r1420 = load i64* %r1377
ret i64 %r1420
}

; @display
define i64 @f51(i64* %x) gc "shadow-stack" {
%r1425 = alloca i8*
call void @llvm.gcroot(i8** %r1425, i8* null)
%r1423 = bitcast i8** %r1425 to i64*
%r1428 = alloca i8*
call void @llvm.gcroot(i8** %r1428, i8* null)
%r1426 = bitcast i8** %r1428 to i64*
%r1427 = load i64* %x
store i64 %r1427, i64* %r1426
%r1430 = alloca i8*
call void @llvm.gcroot(i8** %r1430, i8* null)
%r1424 = bitcast i8** %r1430 to i64*
%r1429 = call i64 @number(i64* %r1426) ; @number?
store i64 %r1429, i64* %r1424
%r1431 = call i64 @f2(i64* %r1424) ; @raw-number
%r1432 = trunc i64 %r1431 to i1
br i1 %r1432, label %label49, label %label50
label49:
%r1436 = ptrtoint [3 x i8]* @g1435 to i64
%r1438 = alloca i8*
call void @llvm.gcroot(i8** %r1438, i8* null)
%r1433 = bitcast i8** %r1438 to i64*
%r1441 = alloca i8*
call void @llvm.gcroot(i8** %r1441, i8* null)
%r1439 = bitcast i8** %r1441 to i64*
%r1440 = add i64 0, 8
store i64 %r1440, i64* %r1439
%r1444 = alloca i8*
call void @llvm.gcroot(i8** %r1444, i8* null)
%r1442 = bitcast i8** %r1444 to i64*
%r1443 = add i64 0, 0
store i64 %r1443, i64* %r1442
%r1437 = call i64 @make-string-or-symbol(i64 %r1436, i64* %r1439, i64* %r1442)
store i64 %r1437, i64* %r1433
%r1446 = alloca i8*
call void @llvm.gcroot(i8** %r1446, i8* null)
%r1434 = bitcast i8** %r1446 to i64*
%r1445 = load i64* %x
store i64 %r1445, i64* %r1434
%r1448 = alloca i8*
call void @llvm.gcroot(i8** %r1448, i8* null)
%r1423 = bitcast i8** %r1448 to i64*
%r1447 = call i64 @print-number(i64* %r1433, i64* %r1434) ; @print-number
store i64 %r1447, i64* %r1423
br label %label51
label50:
%r1450 = alloca i8*
call void @llvm.gcroot(i8** %r1450, i8* null)
%r1423 = bitcast i8** %r1450 to i64*
%r1453 = alloca i8*
call void @llvm.gcroot(i8** %r1453, i8* null)
%r1451 = bitcast i8** %r1453 to i64*
%r1452 = load i64* %x
store i64 %r1452, i64* %r1451
%r1455 = alloca i8*
call void @llvm.gcroot(i8** %r1455, i8* null)
%r1449 = bitcast i8** %r1455 to i64*
%r1454 = call i64 @f24(i64* %r1451) ; @string?
store i64 %r1454, i64* %r1449
%r1456 = call i64 @f2(i64* %r1449) ; @raw-number
%r1457 = trunc i64 %r1456 to i1
br i1 %r1457, label %label52, label %label53
label52:
%r1460 = alloca i8*
call void @llvm.gcroot(i8** %r1460, i8* null)
%r1458 = bitcast i8** %r1460 to i64*
%r1459 = load i64* %x
store i64 %r1459, i64* %r1458
%r1462 = alloca i8*
call void @llvm.gcroot(i8** %r1462, i8* null)
%r1423 = bitcast i8** %r1462 to i64*
%r1461 = call i64 @print-string-or-symbol(i64* %r1458) ; @print-string/symbol
store i64 %r1461, i64* %r1423
br label %label54
label53:
%r1464 = alloca i8*
call void @llvm.gcroot(i8** %r1464, i8* null)
%r1423 = bitcast i8** %r1464 to i64*
%r1467 = alloca i8*
call void @llvm.gcroot(i8** %r1467, i8* null)
%r1465 = bitcast i8** %r1467 to i64*
%r1466 = load i64* %x
store i64 %r1466, i64* %r1465
%r1469 = alloca i8*
call void @llvm.gcroot(i8** %r1469, i8* null)
%r1463 = bitcast i8** %r1469 to i64*
%r1468 = call i64 @f25(i64* %r1465) ; @symbol?
store i64 %r1468, i64* %r1463
%r1470 = call i64 @f2(i64* %r1463) ; @raw-number
%r1471 = trunc i64 %r1470 to i1
br i1 %r1471, label %label55, label %label56
label55:
%r1475 = ptrtoint [2 x i8]* @g1474 to i64
%r1477 = alloca i8*
call void @llvm.gcroot(i8** %r1477, i8* null)
%r1473 = bitcast i8** %r1477 to i64*
%r1480 = alloca i8*
call void @llvm.gcroot(i8** %r1480, i8* null)
%r1478 = bitcast i8** %r1480 to i64*
%r1479 = add i64 0, 4
store i64 %r1479, i64* %r1478
%r1483 = alloca i8*
call void @llvm.gcroot(i8** %r1483, i8* null)
%r1481 = bitcast i8** %r1483 to i64*
%r1482 = add i64 0, 0
store i64 %r1482, i64* %r1481
%r1476 = call i64 @make-string-or-symbol(i64 %r1475, i64* %r1478, i64* %r1481)
store i64 %r1476, i64* %r1473
%r1485 = alloca i8*
call void @llvm.gcroot(i8** %r1485, i8* null)
%r1472 = bitcast i8** %r1485 to i64*
%r1484 = call i64 @print-string-or-symbol(i64* %r1473) ; @print-string/symbol
store i64 %r1484, i64* %r1472
%r1488 = alloca i8*
call void @llvm.gcroot(i8** %r1488, i8* null)
%r1486 = bitcast i8** %r1488 to i64*
%r1487 = load i64* %x
store i64 %r1487, i64* %r1486
%r1490 = alloca i8*
call void @llvm.gcroot(i8** %r1490, i8* null)
%r1423 = bitcast i8** %r1490 to i64*
%r1489 = call i64 @print-string-or-symbol(i64* %r1486) ; @print-string/symbol
store i64 %r1489, i64* %r1423
br label %label57
label56:
%r1492 = alloca i8*
call void @llvm.gcroot(i8** %r1492, i8* null)
%r1423 = bitcast i8** %r1492 to i64*
%r1495 = alloca i8*
call void @llvm.gcroot(i8** %r1495, i8* null)
%r1493 = bitcast i8** %r1495 to i64*
%r1494 = load i64* %x
store i64 %r1494, i64* %r1493
%r1497 = alloca i8*
call void @llvm.gcroot(i8** %r1497, i8* null)
%r1491 = bitcast i8** %r1497 to i64*
%r1496 = call i64 @null(i64* %r1493) ; @null?
store i64 %r1496, i64* %r1491
%r1498 = call i64 @f2(i64* %r1491) ; @raw-number
%r1499 = trunc i64 %r1498 to i1
br i1 %r1499, label %label58, label %label59
label58:
%r1502 = ptrtoint [4 x i8]* @g1501 to i64
%r1504 = alloca i8*
call void @llvm.gcroot(i8** %r1504, i8* null)
%r1500 = bitcast i8** %r1504 to i64*
%r1507 = alloca i8*
call void @llvm.gcroot(i8** %r1507, i8* null)
%r1505 = bitcast i8** %r1507 to i64*
%r1506 = add i64 0, 12
store i64 %r1506, i64* %r1505
%r1510 = alloca i8*
call void @llvm.gcroot(i8** %r1510, i8* null)
%r1508 = bitcast i8** %r1510 to i64*
%r1509 = add i64 0, 0
store i64 %r1509, i64* %r1508
%r1503 = call i64 @make-string-or-symbol(i64 %r1502, i64* %r1505, i64* %r1508)
store i64 %r1503, i64* %r1500
%r1512 = alloca i8*
call void @llvm.gcroot(i8** %r1512, i8* null)
%r1423 = bitcast i8** %r1512 to i64*
%r1511 = call i64 @print-string-or-symbol(i64* %r1500) ; @print-string/symbol
store i64 %r1511, i64* %r1423
br label %label60
label59:
%r1514 = alloca i8*
call void @llvm.gcroot(i8** %r1514, i8* null)
%r1423 = bitcast i8** %r1514 to i64*
%r1517 = alloca i8*
call void @llvm.gcroot(i8** %r1517, i8* null)
%r1515 = bitcast i8** %r1517 to i64*
%r1516 = load i64* %x
store i64 %r1516, i64* %r1515
%r1519 = alloca i8*
call void @llvm.gcroot(i8** %r1519, i8* null)
%r1513 = bitcast i8** %r1519 to i64*
%r1518 = call i64 @f10(i64* %r1515) ; @pair?
store i64 %r1518, i64* %r1513
%r1520 = call i64 @f2(i64* %r1513) ; @raw-number
%r1521 = trunc i64 %r1520 to i1
br i1 %r1521, label %label61, label %label62
label61:
%r1525 = ptrtoint [2 x i8]* @g1524 to i64
%r1527 = alloca i8*
call void @llvm.gcroot(i8** %r1527, i8* null)
%r1523 = bitcast i8** %r1527 to i64*
%r1530 = alloca i8*
call void @llvm.gcroot(i8** %r1530, i8* null)
%r1528 = bitcast i8** %r1530 to i64*
%r1529 = add i64 0, 4
store i64 %r1529, i64* %r1528
%r1533 = alloca i8*
call void @llvm.gcroot(i8** %r1533, i8* null)
%r1531 = bitcast i8** %r1533 to i64*
%r1532 = add i64 0, 0
store i64 %r1532, i64* %r1531
%r1526 = call i64 @make-string-or-symbol(i64 %r1525, i64* %r1528, i64* %r1531)
store i64 %r1526, i64* %r1523
%r1535 = alloca i8*
call void @llvm.gcroot(i8** %r1535, i8* null)
%r1522 = bitcast i8** %r1535 to i64*
%r1534 = call i64 @print-string-or-symbol(i64* %r1523) ; @print-string/symbol
store i64 %r1534, i64* %r1522
%r1540 = alloca i8*
call void @llvm.gcroot(i8** %r1540, i8* null)
%r1538 = bitcast i8** %r1540 to i64*
%r1539 = load i64* %x
store i64 %r1539, i64* %r1538
%r1542 = alloca i8*
call void @llvm.gcroot(i8** %r1542, i8* null)
%r1537 = bitcast i8** %r1542 to i64*
%r1541 = call i64 @f29(i64* %r1538) ; @car
store i64 %r1541, i64* %r1537
%r1544 = alloca i8*
call void @llvm.gcroot(i8** %r1544, i8* null)
%r1536 = bitcast i8** %r1544 to i64*
%r1543 = call i64 @f51(i64* %r1537) ; @display
store i64 %r1543, i64* %r1536
%r1548 = ptrtoint [4 x i8]* @g1547 to i64
%r1550 = alloca i8*
call void @llvm.gcroot(i8** %r1550, i8* null)
%r1546 = bitcast i8** %r1550 to i64*
%r1553 = alloca i8*
call void @llvm.gcroot(i8** %r1553, i8* null)
%r1551 = bitcast i8** %r1553 to i64*
%r1552 = add i64 0, 12
store i64 %r1552, i64* %r1551
%r1556 = alloca i8*
call void @llvm.gcroot(i8** %r1556, i8* null)
%r1554 = bitcast i8** %r1556 to i64*
%r1555 = add i64 0, 0
store i64 %r1555, i64* %r1554
%r1549 = call i64 @make-string-or-symbol(i64 %r1548, i64* %r1551, i64* %r1554)
store i64 %r1549, i64* %r1546
%r1558 = alloca i8*
call void @llvm.gcroot(i8** %r1558, i8* null)
%r1545 = bitcast i8** %r1558 to i64*
%r1557 = call i64 @print-string-or-symbol(i64* %r1546) ; @print-string/symbol
store i64 %r1557, i64* %r1545
%r1563 = alloca i8*
call void @llvm.gcroot(i8** %r1563, i8* null)
%r1561 = bitcast i8** %r1563 to i64*
%r1562 = load i64* %x
store i64 %r1562, i64* %r1561
%r1565 = alloca i8*
call void @llvm.gcroot(i8** %r1565, i8* null)
%r1560 = bitcast i8** %r1565 to i64*
%r1564 = call i64 @f30(i64* %r1561) ; @cdr
store i64 %r1564, i64* %r1560
%r1567 = alloca i8*
call void @llvm.gcroot(i8** %r1567, i8* null)
%r1559 = bitcast i8** %r1567 to i64*
%r1566 = call i64 @f51(i64* %r1560) ; @display
store i64 %r1566, i64* %r1559
%r1570 = ptrtoint [2 x i8]* @g1569 to i64
%r1572 = alloca i8*
call void @llvm.gcroot(i8** %r1572, i8* null)
%r1568 = bitcast i8** %r1572 to i64*
%r1575 = alloca i8*
call void @llvm.gcroot(i8** %r1575, i8* null)
%r1573 = bitcast i8** %r1575 to i64*
%r1574 = add i64 0, 4
store i64 %r1574, i64* %r1573
%r1578 = alloca i8*
call void @llvm.gcroot(i8** %r1578, i8* null)
%r1576 = bitcast i8** %r1578 to i64*
%r1577 = add i64 0, 0
store i64 %r1577, i64* %r1576
%r1571 = call i64 @make-string-or-symbol(i64 %r1570, i64* %r1573, i64* %r1576)
store i64 %r1571, i64* %r1568
%r1580 = alloca i8*
call void @llvm.gcroot(i8** %r1580, i8* null)
%r1423 = bitcast i8** %r1580 to i64*
%r1579 = call i64 @print-string-or-symbol(i64* %r1568) ; @print-string/symbol
store i64 %r1579, i64* %r1423
br label %label63
label62:
%r1583 = ptrtoint [29 x i8]* @g1582 to i64
%r1585 = alloca i8*
call void @llvm.gcroot(i8** %r1585, i8* null)
%r1581 = bitcast i8** %r1585 to i64*
%r1588 = alloca i8*
call void @llvm.gcroot(i8** %r1588, i8* null)
%r1586 = bitcast i8** %r1588 to i64*
%r1587 = add i64 0, 112
store i64 %r1587, i64* %r1586
%r1591 = alloca i8*
call void @llvm.gcroot(i8** %r1591, i8* null)
%r1589 = bitcast i8** %r1591 to i64*
%r1590 = add i64 0, 0
store i64 %r1590, i64* %r1589
%r1584 = call i64 @make-string-or-symbol(i64 %r1583, i64* %r1586, i64* %r1589)
store i64 %r1584, i64* %r1581
%r1593 = alloca i8*
call void @llvm.gcroot(i8** %r1593, i8* null)
%r1423 = bitcast i8** %r1593 to i64*
%r1592 = call i64 @print-string-or-symbol(i64* %r1581) ; @print-string/symbol
store i64 %r1592, i64* %r1423
br label %label63
label63:
br label %label60
label60:
br label %label57
label57:
br label %label54
label54:
br label %label51
label51:
%r1595 = alloca i8*
call void @llvm.gcroot(i8** %r1595, i8* null)
%r1422 = bitcast i8** %r1595 to i64*
%r1594 = load i64* %x
store i64 %r1594, i64* %r1422
%r1596 = load i64* %r1422
ret i64 %r1596
}

; @f52
define i64 @f53(i64* %env) gc "shadow-stack" {
%r1606 = alloca i8*
call void @llvm.gcroot(i8** %r1606, i8* null)
%r1604 = bitcast i8** %r1606 to i64*
%r1609 = alloca i8*
call void @llvm.gcroot(i8** %r1609, i8* null)
%r1607 = bitcast i8** %r1609 to i64*
%r1608 = add i64 0, 0
store i64 %r1608, i64* %r1607
%r1612 = alloca i8*
call void @llvm.gcroot(i8** %r1612, i8* null)
%r1610 = bitcast i8** %r1612 to i64*
%r1611 = add i64 0, 4
store i64 %r1611, i64* %r1610
%r1605 = call i64 @f36(i64* %env, i64* %r1607, i64* %r1610) ; @lookup-variable
store i64 %r1605, i64* %r1604
%r1614 = alloca i8*
call void @llvm.gcroot(i8** %r1614, i8* null)
%r1602 = bitcast i8** %r1614 to i64*
%r1613 = call i64 @vector(i64* %r1604) ; @vector?
store i64 %r1613, i64* %r1602
%r1616 = ptrtoint [25 x i8]* @g1615 to i64
%r1618 = alloca i8*
call void @llvm.gcroot(i8** %r1618, i8* null)
%r1603 = bitcast i8** %r1618 to i64*
%r1621 = alloca i8*
call void @llvm.gcroot(i8** %r1621, i8* null)
%r1619 = bitcast i8** %r1621 to i64*
%r1620 = add i64 0, 96
store i64 %r1620, i64* %r1619
%r1624 = alloca i8*
call void @llvm.gcroot(i8** %r1624, i8* null)
%r1622 = bitcast i8** %r1624 to i64*
%r1623 = add i64 0, 0
store i64 %r1623, i64* %r1622
%r1617 = call i64 @make-string-or-symbol(i64 %r1616, i64* %r1619, i64* %r1622)
store i64 %r1617, i64* %r1603
%r1626 = alloca i8*
call void @llvm.gcroot(i8** %r1626, i8* null)
%r1601 = bitcast i8** %r1626 to i64*
%r1625 = call i64 @f6(i64* %r1602, i64* %r1603) ; @ensure
store i64 %r1625, i64* %r1601
%r1639 = alloca i8*
call void @llvm.gcroot(i8** %r1639, i8* null)
%r1634 = bitcast i8** %r1639 to i64*
%r1642 = alloca i8*
call void @llvm.gcroot(i8** %r1642, i8* null)
%r1640 = bitcast i8** %r1642 to i64*
%r1641 = add i64 0, 4
store i64 %r1641, i64* %r1640
%r1645 = alloca i8*
call void @llvm.gcroot(i8** %r1645, i8* null)
%r1643 = bitcast i8** %r1645 to i64*
%r1644 = add i64 0, 24
store i64 %r1644, i64* %r1643
%r1638 = call i64 @f36(i64* %env, i64* %r1640, i64* %r1643) ; @lookup-variable
store i64 %r1638, i64* %r1634
%r1647 = alloca i8*
call void @llvm.gcroot(i8** %r1647, i8* null)
%r1635 = bitcast i8** %r1647 to i64*
%r1646 = call i64 @f18(i64* %r1634) ; @get-procedure-env
store i64 %r1646, i64* %r1635
%r1649 = alloca i8*
call void @llvm.gcroot(i8** %r1649, i8* null)
%r1637 = bitcast i8** %r1649 to i64*
%r1652 = alloca i8*
call void @llvm.gcroot(i8** %r1652, i8* null)
%r1650 = bitcast i8** %r1652 to i64*
%r1651 = add i64 0, 4
store i64 %r1651, i64* %r1650
%r1648 = call i64 @f17(i64* %r1650, i64* %r1635) ; @make-env
store i64 %r1648, i64* %r1637
%r1655 = alloca i8*
call void @llvm.gcroot(i8** %r1655, i8* null)
%r1653 = bitcast i8** %r1655 to i64*
%r1658 = alloca i8*
call void @llvm.gcroot(i8** %r1658, i8* null)
%r1656 = bitcast i8** %r1658 to i64*
%r1657 = add i64 0, 0
store i64 %r1657, i64* %r1656
%r1661 = alloca i8*
call void @llvm.gcroot(i8** %r1661, i8* null)
%r1659 = bitcast i8** %r1661 to i64*
%r1660 = add i64 0, 4
store i64 %r1660, i64* %r1659
%r1654 = call i64 @f36(i64* %env, i64* %r1656, i64* %r1659) ; @lookup-variable
store i64 %r1654, i64* %r1653
%r1665 = alloca i8*
call void @llvm.gcroot(i8** %r1665, i8* null)
%r1663 = bitcast i8** %r1665 to i64*
%r1664 = add i64 0, 4
store i64 %r1664, i64* %r1663
%r1662 = call i64 @f13(i64* %r1637, i64* %r1663, i64* %r1653) ; @vector-set!
%r1667 = alloca i8*
call void @llvm.gcroot(i8** %r1667, i8* null)
%r1636 = bitcast i8** %r1667 to i64*
%r1666 = call i64 @f19(i64* %r1634) ; @get-procedure-nparams
store i64 %r1666, i64* %r1636
%r1668 = call i64 @f23(i64* %r1636, i64* %r1637) ; @fix-arbitrary-procs
%r1670 = bitcast [20 x i8]* @g1669 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r1670, i32 1, i64* %r1637)
%r1672 = alloca i8*
call void @llvm.gcroot(i8** %r1672, i8* null)
%r1632 = bitcast i8** %r1672 to i64*
%r1671 = call i64 @apply-procedure(i64* %r1634, i64* %r1637) ; @apply-procedure
store i64 %r1671, i64* %r1632
%r1674 = alloca i8*
call void @llvm.gcroot(i8** %r1674, i8* null)
%r1633 = bitcast i8** %r1674 to i64*
%r1673 = add i64 0, 4
store i64 %r1673, i64* %r1633
%r1676 = alloca i8*
call void @llvm.gcroot(i8** %r1676, i8* null)
%r1630 = bitcast i8** %r1676 to i64*
%r1675 = call i64 @f16(i64* %r1632, i64* %r1633) ; @+
store i64 %r1675, i64* %r1630
%r1678 = alloca i8*
call void @llvm.gcroot(i8** %r1678, i8* null)
%r1631 = bitcast i8** %r1678 to i64*
%r1677 = add i64 0, 0
store i64 %r1677, i64* %r1631
%r1680 = alloca i8*
call void @llvm.gcroot(i8** %r1680, i8* null)
%r1627 = bitcast i8** %r1680 to i64*
%r1679 = call i64 @allocate-string-or-symbol(i64* %r1630, i64* %r1631) ; @allocate-string/symbol
store i64 %r1679, i64* %r1627
%r1682 = alloca i8*
call void @llvm.gcroot(i8** %r1682, i8* null)
%r1628 = bitcast i8** %r1682 to i64*
%r1685 = alloca i8*
call void @llvm.gcroot(i8** %r1685, i8* null)
%r1683 = bitcast i8** %r1685 to i64*
%r1684 = add i64 0, 0
store i64 %r1684, i64* %r1683
%r1688 = alloca i8*
call void @llvm.gcroot(i8** %r1688, i8* null)
%r1686 = bitcast i8** %r1688 to i64*
%r1687 = add i64 0, 4
store i64 %r1687, i64* %r1686
%r1681 = call i64 @f36(i64* %env, i64* %r1683, i64* %r1686) ; @lookup-variable
store i64 %r1681, i64* %r1628
%r1690 = alloca i8*
call void @llvm.gcroot(i8** %r1690, i8* null)
%r1629 = bitcast i8** %r1690 to i64*
%r1689 = add i64 0, 0
store i64 %r1689, i64* %r1629
%r1692 = alloca i8*
call void @llvm.gcroot(i8** %r1692, i8* null)
%r1599 = bitcast i8** %r1692 to i64*
%r1691 = call i64 @f31(i64* %r1627, i64* %r1628, i64* %r1629) ; @list->string-helper
store i64 %r1691, i64* %r1599
%r1693 = load i64* %r1599
ret i64 %r1693
}

; @f54
define i64 @f55(i64* %env) gc "shadow-stack" {
%r1717 = alloca i8*
call void @llvm.gcroot(i8** %r1717, i8* null)
%r1712 = bitcast i8** %r1717 to i64*
%r1720 = alloca i8*
call void @llvm.gcroot(i8** %r1720, i8* null)
%r1718 = bitcast i8** %r1720 to i64*
%r1719 = add i64 0, 4
store i64 %r1719, i64* %r1718
%r1723 = alloca i8*
call void @llvm.gcroot(i8** %r1723, i8* null)
%r1721 = bitcast i8** %r1723 to i64*
%r1722 = add i64 0, 4
store i64 %r1722, i64* %r1721
%r1716 = call i64 @f36(i64* %env, i64* %r1718, i64* %r1721) ; @lookup-variable
store i64 %r1716, i64* %r1712
%r1725 = alloca i8*
call void @llvm.gcroot(i8** %r1725, i8* null)
%r1713 = bitcast i8** %r1725 to i64*
%r1724 = call i64 @f18(i64* %r1712) ; @get-procedure-env
store i64 %r1724, i64* %r1713
%r1727 = alloca i8*
call void @llvm.gcroot(i8** %r1727, i8* null)
%r1715 = bitcast i8** %r1727 to i64*
%r1730 = alloca i8*
call void @llvm.gcroot(i8** %r1730, i8* null)
%r1728 = bitcast i8** %r1730 to i64*
%r1729 = add i64 0, 4
store i64 %r1729, i64* %r1728
%r1726 = call i64 @f17(i64* %r1728, i64* %r1713) ; @make-env
store i64 %r1726, i64* %r1715
%r1735 = alloca i8*
call void @llvm.gcroot(i8** %r1735, i8* null)
%r1732 = bitcast i8** %r1735 to i64*
%r1734 = add i64 0, 40
store i64 %r1734, i64* %r1732
%r1737 = alloca i8*
call void @llvm.gcroot(i8** %r1737, i8* null)
%r1733 = bitcast i8** %r1737 to i64*
%r1736 = call i64 @make-null() ; @make-null
store i64 %r1736, i64* %r1733
%r1739 = alloca i8*
call void @llvm.gcroot(i8** %r1739, i8* null)
%r1731 = bitcast i8** %r1739 to i64*
%r1738 = call i64 @f21(i64* %r1732, i64* %r1733) ; @cons
store i64 %r1738, i64* %r1731
%r1743 = alloca i8*
call void @llvm.gcroot(i8** %r1743, i8* null)
%r1741 = bitcast i8** %r1743 to i64*
%r1742 = add i64 0, 4
store i64 %r1742, i64* %r1741
%r1740 = call i64 @f13(i64* %r1715, i64* %r1741, i64* %r1731) ; @vector-set!
%r1745 = alloca i8*
call void @llvm.gcroot(i8** %r1745, i8* null)
%r1714 = bitcast i8** %r1745 to i64*
%r1744 = call i64 @f19(i64* %r1712) ; @get-procedure-nparams
store i64 %r1744, i64* %r1714
%r1746 = call i64 @f23(i64* %r1714, i64* %r1715) ; @fix-arbitrary-procs
%r1748 = bitcast [20 x i8]* @g1747 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r1748, i32 1, i64* %r1715)
%r1750 = alloca i8*
call void @llvm.gcroot(i8** %r1750, i8* null)
%r1711 = bitcast i8** %r1750 to i64*
%r1749 = call i64 @apply-procedure(i64* %r1712, i64* %r1715) ; @apply-procedure
store i64 %r1749, i64* %r1711
%r1752 = alloca i8*
call void @llvm.gcroot(i8** %r1752, i8* null)
%r1709 = bitcast i8** %r1752 to i64*
%r1751 = call i64 @f51(i64* %r1711) ; @display
store i64 %r1751, i64* %r1709
%r1753 = load i64* %r1709
ret i64 %r1753
}

; @f56
define i64 @f57(i64* %env) gc "shadow-stack" {
%r1772 = alloca i8*
call void @llvm.gcroot(i8** %r1772, i8* null)
%r1769 = bitcast i8** %r1772 to i64*
%r1776 = alloca i8*
call void @llvm.gcroot(i8** %r1776, i8* null)
%r1773 = bitcast i8** %r1776 to i64*
%r1779 = alloca i8*
call void @llvm.gcroot(i8** %r1779, i8* null)
%r1777 = bitcast i8** %r1779 to i64*
%r1778 = add i64 0, 0
store i64 %r1778, i64* %r1777
%r1782 = alloca i8*
call void @llvm.gcroot(i8** %r1782, i8* null)
%r1780 = bitcast i8** %r1782 to i64*
%r1781 = add i64 0, 12
store i64 %r1781, i64* %r1780
%r1775 = call i64 @f36(i64* %env, i64* %r1777, i64* %r1780) ; @lookup-variable
store i64 %r1775, i64* %r1773
%r1784 = alloca i8*
call void @llvm.gcroot(i8** %r1784, i8* null)
%r1774 = bitcast i8** %r1784 to i64*
%r1787 = alloca i8*
call void @llvm.gcroot(i8** %r1787, i8* null)
%r1785 = bitcast i8** %r1787 to i64*
%r1786 = add i64 0, 0
store i64 %r1786, i64* %r1785
%r1790 = alloca i8*
call void @llvm.gcroot(i8** %r1790, i8* null)
%r1788 = bitcast i8** %r1790 to i64*
%r1789 = add i64 0, 16
store i64 %r1789, i64* %r1788
%r1783 = call i64 @f36(i64* %env, i64* %r1785, i64* %r1788) ; @lookup-variable
store i64 %r1783, i64* %r1774
%r1792 = alloca i8*
call void @llvm.gcroot(i8** %r1792, i8* null)
%r1771 = bitcast i8** %r1792 to i64*
%r1791 = call i64 @f9(i64* %r1773, i64* %r1774) ; @=
store i64 %r1791, i64* %r1771
%r1793 = call i64 @f2(i64* %r1771) ; @raw-number
%r1794 = trunc i64 %r1793 to i1
br i1 %r1794, label %label64, label %label65
label64:
%r1796 = alloca i8*
call void @llvm.gcroot(i8** %r1796, i8* null)
%r1769 = bitcast i8** %r1796 to i64*
%r1795 = add i64 0, 4
store i64 %r1795, i64* %r1769
br label %label66
label65:
%r1798 = alloca i8*
call void @llvm.gcroot(i8** %r1798, i8* null)
%r1769 = bitcast i8** %r1798 to i64*
%r1804 = alloca i8*
call void @llvm.gcroot(i8** %r1804, i8* null)
%r1801 = bitcast i8** %r1804 to i64*
%r1807 = alloca i8*
call void @llvm.gcroot(i8** %r1807, i8* null)
%r1805 = bitcast i8** %r1807 to i64*
%r1806 = add i64 0, 0
store i64 %r1806, i64* %r1805
%r1810 = alloca i8*
call void @llvm.gcroot(i8** %r1810, i8* null)
%r1808 = bitcast i8** %r1810 to i64*
%r1809 = add i64 0, 4
store i64 %r1809, i64* %r1808
%r1803 = call i64 @f36(i64* %env, i64* %r1805, i64* %r1808) ; @lookup-variable
store i64 %r1803, i64* %r1801
%r1812 = alloca i8*
call void @llvm.gcroot(i8** %r1812, i8* null)
%r1802 = bitcast i8** %r1812 to i64*
%r1815 = alloca i8*
call void @llvm.gcroot(i8** %r1815, i8* null)
%r1813 = bitcast i8** %r1815 to i64*
%r1814 = add i64 0, 0
store i64 %r1814, i64* %r1813
%r1818 = alloca i8*
call void @llvm.gcroot(i8** %r1818, i8* null)
%r1816 = bitcast i8** %r1818 to i64*
%r1817 = add i64 0, 12
store i64 %r1817, i64* %r1816
%r1811 = call i64 @f36(i64* %env, i64* %r1813, i64* %r1816) ; @lookup-variable
store i64 %r1811, i64* %r1802
%r1820 = alloca i8*
call void @llvm.gcroot(i8** %r1820, i8* null)
%r1799 = bitcast i8** %r1820 to i64*
%r1819 = call i64 @string-ref(i64* %r1801, i64* %r1802) ; @string-ref
store i64 %r1819, i64* %r1799
%r1824 = alloca i8*
call void @llvm.gcroot(i8** %r1824, i8* null)
%r1821 = bitcast i8** %r1824 to i64*
%r1827 = alloca i8*
call void @llvm.gcroot(i8** %r1827, i8* null)
%r1825 = bitcast i8** %r1827 to i64*
%r1826 = add i64 0, 0
store i64 %r1826, i64* %r1825
%r1830 = alloca i8*
call void @llvm.gcroot(i8** %r1830, i8* null)
%r1828 = bitcast i8** %r1830 to i64*
%r1829 = add i64 0, 8
store i64 %r1829, i64* %r1828
%r1823 = call i64 @f36(i64* %env, i64* %r1825, i64* %r1828) ; @lookup-variable
store i64 %r1823, i64* %r1821
%r1832 = alloca i8*
call void @llvm.gcroot(i8** %r1832, i8* null)
%r1822 = bitcast i8** %r1832 to i64*
%r1835 = alloca i8*
call void @llvm.gcroot(i8** %r1835, i8* null)
%r1833 = bitcast i8** %r1835 to i64*
%r1834 = add i64 0, 0
store i64 %r1834, i64* %r1833
%r1838 = alloca i8*
call void @llvm.gcroot(i8** %r1838, i8* null)
%r1836 = bitcast i8** %r1838 to i64*
%r1837 = add i64 0, 12
store i64 %r1837, i64* %r1836
%r1831 = call i64 @f36(i64* %env, i64* %r1833, i64* %r1836) ; @lookup-variable
store i64 %r1831, i64* %r1822
%r1840 = alloca i8*
call void @llvm.gcroot(i8** %r1840, i8* null)
%r1800 = bitcast i8** %r1840 to i64*
%r1839 = call i64 @string-ref(i64* %r1821, i64* %r1822) ; @string-ref
store i64 %r1839, i64* %r1800
%r1842 = alloca i8*
call void @llvm.gcroot(i8** %r1842, i8* null)
%r1797 = bitcast i8** %r1842 to i64*
%r1841 = call i64 @f9(i64* %r1799, i64* %r1800) ; @=
store i64 %r1841, i64* %r1797
%r1843 = call i64 @f2(i64* %r1797) ; @raw-number
%r1844 = trunc i64 %r1843 to i1
br i1 %r1844, label %label67, label %label68
label67:
%r1850 = alloca i8*
call void @llvm.gcroot(i8** %r1850, i8* null)
%r1845 = bitcast i8** %r1850 to i64*
%r1853 = alloca i8*
call void @llvm.gcroot(i8** %r1853, i8* null)
%r1851 = bitcast i8** %r1853 to i64*
%r1852 = add i64 0, 4
store i64 %r1852, i64* %r1851
%r1856 = alloca i8*
call void @llvm.gcroot(i8** %r1856, i8* null)
%r1854 = bitcast i8** %r1856 to i64*
%r1855 = add i64 0, 12
store i64 %r1855, i64* %r1854
%r1849 = call i64 @f36(i64* %env, i64* %r1851, i64* %r1854) ; @lookup-variable
store i64 %r1849, i64* %r1845
%r1858 = alloca i8*
call void @llvm.gcroot(i8** %r1858, i8* null)
%r1846 = bitcast i8** %r1858 to i64*
%r1857 = call i64 @f18(i64* %r1845) ; @get-procedure-env
store i64 %r1857, i64* %r1846
%r1860 = alloca i8*
call void @llvm.gcroot(i8** %r1860, i8* null)
%r1848 = bitcast i8** %r1860 to i64*
%r1863 = alloca i8*
call void @llvm.gcroot(i8** %r1863, i8* null)
%r1861 = bitcast i8** %r1863 to i64*
%r1862 = add i64 0, 16
store i64 %r1862, i64* %r1861
%r1859 = call i64 @f17(i64* %r1861, i64* %r1846) ; @make-env
store i64 %r1859, i64* %r1848
%r1866 = alloca i8*
call void @llvm.gcroot(i8** %r1866, i8* null)
%r1864 = bitcast i8** %r1866 to i64*
%r1869 = alloca i8*
call void @llvm.gcroot(i8** %r1869, i8* null)
%r1867 = bitcast i8** %r1869 to i64*
%r1868 = add i64 0, 0
store i64 %r1868, i64* %r1867
%r1872 = alloca i8*
call void @llvm.gcroot(i8** %r1872, i8* null)
%r1870 = bitcast i8** %r1872 to i64*
%r1871 = add i64 0, 4
store i64 %r1871, i64* %r1870
%r1865 = call i64 @f36(i64* %env, i64* %r1867, i64* %r1870) ; @lookup-variable
store i64 %r1865, i64* %r1864
%r1876 = alloca i8*
call void @llvm.gcroot(i8** %r1876, i8* null)
%r1874 = bitcast i8** %r1876 to i64*
%r1875 = add i64 0, 4
store i64 %r1875, i64* %r1874
%r1873 = call i64 @f13(i64* %r1848, i64* %r1874, i64* %r1864) ; @vector-set!
%r1879 = alloca i8*
call void @llvm.gcroot(i8** %r1879, i8* null)
%r1877 = bitcast i8** %r1879 to i64*
%r1882 = alloca i8*
call void @llvm.gcroot(i8** %r1882, i8* null)
%r1880 = bitcast i8** %r1882 to i64*
%r1881 = add i64 0, 0
store i64 %r1881, i64* %r1880
%r1885 = alloca i8*
call void @llvm.gcroot(i8** %r1885, i8* null)
%r1883 = bitcast i8** %r1885 to i64*
%r1884 = add i64 0, 8
store i64 %r1884, i64* %r1883
%r1878 = call i64 @f36(i64* %env, i64* %r1880, i64* %r1883) ; @lookup-variable
store i64 %r1878, i64* %r1877
%r1889 = alloca i8*
call void @llvm.gcroot(i8** %r1889, i8* null)
%r1887 = bitcast i8** %r1889 to i64*
%r1888 = add i64 0, 8
store i64 %r1888, i64* %r1887
%r1886 = call i64 @f13(i64* %r1848, i64* %r1887, i64* %r1877) ; @vector-set!
%r1894 = alloca i8*
call void @llvm.gcroot(i8** %r1894, i8* null)
%r1891 = bitcast i8** %r1894 to i64*
%r1897 = alloca i8*
call void @llvm.gcroot(i8** %r1897, i8* null)
%r1895 = bitcast i8** %r1897 to i64*
%r1896 = add i64 0, 0
store i64 %r1896, i64* %r1895
%r1900 = alloca i8*
call void @llvm.gcroot(i8** %r1900, i8* null)
%r1898 = bitcast i8** %r1900 to i64*
%r1899 = add i64 0, 12
store i64 %r1899, i64* %r1898
%r1893 = call i64 @f36(i64* %env, i64* %r1895, i64* %r1898) ; @lookup-variable
store i64 %r1893, i64* %r1891
%r1902 = alloca i8*
call void @llvm.gcroot(i8** %r1902, i8* null)
%r1892 = bitcast i8** %r1902 to i64*
%r1901 = add i64 0, 4
store i64 %r1901, i64* %r1892
%r1904 = alloca i8*
call void @llvm.gcroot(i8** %r1904, i8* null)
%r1890 = bitcast i8** %r1904 to i64*
%r1903 = call i64 @f16(i64* %r1891, i64* %r1892) ; @+
store i64 %r1903, i64* %r1890
%r1908 = alloca i8*
call void @llvm.gcroot(i8** %r1908, i8* null)
%r1906 = bitcast i8** %r1908 to i64*
%r1907 = add i64 0, 12
store i64 %r1907, i64* %r1906
%r1905 = call i64 @f13(i64* %r1848, i64* %r1906, i64* %r1890) ; @vector-set!
%r1911 = alloca i8*
call void @llvm.gcroot(i8** %r1911, i8* null)
%r1909 = bitcast i8** %r1911 to i64*
%r1914 = alloca i8*
call void @llvm.gcroot(i8** %r1914, i8* null)
%r1912 = bitcast i8** %r1914 to i64*
%r1913 = add i64 0, 0
store i64 %r1913, i64* %r1912
%r1917 = alloca i8*
call void @llvm.gcroot(i8** %r1917, i8* null)
%r1915 = bitcast i8** %r1917 to i64*
%r1916 = add i64 0, 16
store i64 %r1916, i64* %r1915
%r1910 = call i64 @f36(i64* %env, i64* %r1912, i64* %r1915) ; @lookup-variable
store i64 %r1910, i64* %r1909
%r1921 = alloca i8*
call void @llvm.gcroot(i8** %r1921, i8* null)
%r1919 = bitcast i8** %r1921 to i64*
%r1920 = add i64 0, 16
store i64 %r1920, i64* %r1919
%r1918 = call i64 @f13(i64* %r1848, i64* %r1919, i64* %r1909) ; @vector-set!
%r1923 = alloca i8*
call void @llvm.gcroot(i8** %r1923, i8* null)
%r1847 = bitcast i8** %r1923 to i64*
%r1922 = call i64 @f19(i64* %r1845) ; @get-procedure-nparams
store i64 %r1922, i64* %r1847
%r1924 = call i64 @f23(i64* %r1847, i64* %r1848) ; @fix-arbitrary-procs
%r1926 = bitcast [20 x i8]* @g1925 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r1926, i32 1, i64* %r1848)
%r1928 = alloca i8*
call void @llvm.gcroot(i8** %r1928, i8* null)
%r1769 = bitcast i8** %r1928 to i64*
%r1927 = call i64 @apply-procedure(i64* %r1845, i64* %r1848) ; @apply-procedure
store i64 %r1927, i64* %r1769
br label %label69
label68:
%r1930 = alloca i8*
call void @llvm.gcroot(i8** %r1930, i8* null)
%r1769 = bitcast i8** %r1930 to i64*
%r1929 = call i64 @make-null() ; @make-null
store i64 %r1929, i64* %r1769
br label %label69
label69:
br label %label66
label66:
%r1931 = load i64* %r1769
ret i64 %r1931
}

; @f58
define i64 @f59(i64* %env) gc "shadow-stack" {
%r1950 = alloca i8*
call void @llvm.gcroot(i8** %r1950, i8* null)
%r1947 = bitcast i8** %r1950 to i64*
%r1955 = alloca i8*
call void @llvm.gcroot(i8** %r1955, i8* null)
%r1953 = bitcast i8** %r1955 to i64*
%r1958 = alloca i8*
call void @llvm.gcroot(i8** %r1958, i8* null)
%r1956 = bitcast i8** %r1958 to i64*
%r1957 = add i64 0, 0
store i64 %r1957, i64* %r1956
%r1961 = alloca i8*
call void @llvm.gcroot(i8** %r1961, i8* null)
%r1959 = bitcast i8** %r1961 to i64*
%r1960 = add i64 0, 4
store i64 %r1960, i64* %r1959
%r1954 = call i64 @f36(i64* %env, i64* %r1956, i64* %r1959) ; @lookup-variable
store i64 %r1954, i64* %r1953
%r1963 = alloca i8*
call void @llvm.gcroot(i8** %r1963, i8* null)
%r1951 = bitcast i8** %r1963 to i64*
%r1962 = call i64 @number(i64* %r1953) ; @number?
store i64 %r1962, i64* %r1951
%r1966 = alloca i8*
call void @llvm.gcroot(i8** %r1966, i8* null)
%r1964 = bitcast i8** %r1966 to i64*
%r1969 = alloca i8*
call void @llvm.gcroot(i8** %r1969, i8* null)
%r1967 = bitcast i8** %r1969 to i64*
%r1968 = add i64 0, 0
store i64 %r1968, i64* %r1967
%r1972 = alloca i8*
call void @llvm.gcroot(i8** %r1972, i8* null)
%r1970 = bitcast i8** %r1972 to i64*
%r1971 = add i64 0, 8
store i64 %r1971, i64* %r1970
%r1965 = call i64 @f36(i64* %env, i64* %r1967, i64* %r1970) ; @lookup-variable
store i64 %r1965, i64* %r1964
%r1974 = alloca i8*
call void @llvm.gcroot(i8** %r1974, i8* null)
%r1952 = bitcast i8** %r1974 to i64*
%r1973 = call i64 @number(i64* %r1964) ; @number?
store i64 %r1973, i64* %r1952
%r1976 = alloca i8*
call void @llvm.gcroot(i8** %r1976, i8* null)
%r1949 = bitcast i8** %r1976 to i64*
%r1975 = call i64 @f3(i64* %r1951, i64* %r1952) ; @and
store i64 %r1975, i64* %r1949
%r1977 = call i64 @f2(i64* %r1949) ; @raw-number
%r1978 = trunc i64 %r1977 to i1
br i1 %r1978, label %label70, label %label71
label70:
%r1982 = alloca i8*
call void @llvm.gcroot(i8** %r1982, i8* null)
%r1979 = bitcast i8** %r1982 to i64*
%r1985 = alloca i8*
call void @llvm.gcroot(i8** %r1985, i8* null)
%r1983 = bitcast i8** %r1985 to i64*
%r1984 = add i64 0, 0
store i64 %r1984, i64* %r1983
%r1988 = alloca i8*
call void @llvm.gcroot(i8** %r1988, i8* null)
%r1986 = bitcast i8** %r1988 to i64*
%r1987 = add i64 0, 4
store i64 %r1987, i64* %r1986
%r1981 = call i64 @f36(i64* %env, i64* %r1983, i64* %r1986) ; @lookup-variable
store i64 %r1981, i64* %r1979
%r1990 = alloca i8*
call void @llvm.gcroot(i8** %r1990, i8* null)
%r1980 = bitcast i8** %r1990 to i64*
%r1993 = alloca i8*
call void @llvm.gcroot(i8** %r1993, i8* null)
%r1991 = bitcast i8** %r1993 to i64*
%r1992 = add i64 0, 0
store i64 %r1992, i64* %r1991
%r1996 = alloca i8*
call void @llvm.gcroot(i8** %r1996, i8* null)
%r1994 = bitcast i8** %r1996 to i64*
%r1995 = add i64 0, 8
store i64 %r1995, i64* %r1994
%r1989 = call i64 @f36(i64* %env, i64* %r1991, i64* %r1994) ; @lookup-variable
store i64 %r1989, i64* %r1980
%r1998 = alloca i8*
call void @llvm.gcroot(i8** %r1998, i8* null)
%r1947 = bitcast i8** %r1998 to i64*
%r1997 = call i64 @f9(i64* %r1979, i64* %r1980) ; @=
store i64 %r1997, i64* %r1947
br label %label72
label71:
%r2000 = alloca i8*
call void @llvm.gcroot(i8** %r2000, i8* null)
%r1947 = bitcast i8** %r2000 to i64*
%r2005 = alloca i8*
call void @llvm.gcroot(i8** %r2005, i8* null)
%r2003 = bitcast i8** %r2005 to i64*
%r2008 = alloca i8*
call void @llvm.gcroot(i8** %r2008, i8* null)
%r2006 = bitcast i8** %r2008 to i64*
%r2007 = add i64 0, 0
store i64 %r2007, i64* %r2006
%r2011 = alloca i8*
call void @llvm.gcroot(i8** %r2011, i8* null)
%r2009 = bitcast i8** %r2011 to i64*
%r2010 = add i64 0, 4
store i64 %r2010, i64* %r2009
%r2004 = call i64 @f36(i64* %env, i64* %r2006, i64* %r2009) ; @lookup-variable
store i64 %r2004, i64* %r2003
%r2013 = alloca i8*
call void @llvm.gcroot(i8** %r2013, i8* null)
%r2001 = bitcast i8** %r2013 to i64*
%r2012 = call i64 @f24(i64* %r2003) ; @string?
store i64 %r2012, i64* %r2001
%r2016 = alloca i8*
call void @llvm.gcroot(i8** %r2016, i8* null)
%r2014 = bitcast i8** %r2016 to i64*
%r2019 = alloca i8*
call void @llvm.gcroot(i8** %r2019, i8* null)
%r2017 = bitcast i8** %r2019 to i64*
%r2018 = add i64 0, 0
store i64 %r2018, i64* %r2017
%r2022 = alloca i8*
call void @llvm.gcroot(i8** %r2022, i8* null)
%r2020 = bitcast i8** %r2022 to i64*
%r2021 = add i64 0, 8
store i64 %r2021, i64* %r2020
%r2015 = call i64 @f36(i64* %env, i64* %r2017, i64* %r2020) ; @lookup-variable
store i64 %r2015, i64* %r2014
%r2024 = alloca i8*
call void @llvm.gcroot(i8** %r2024, i8* null)
%r2002 = bitcast i8** %r2024 to i64*
%r2023 = call i64 @f24(i64* %r2014) ; @string?
store i64 %r2023, i64* %r2002
%r2026 = alloca i8*
call void @llvm.gcroot(i8** %r2026, i8* null)
%r1999 = bitcast i8** %r2026 to i64*
%r2025 = call i64 @f3(i64* %r2001, i64* %r2002) ; @and
store i64 %r2025, i64* %r1999
%r2027 = call i64 @f2(i64* %r1999) ; @raw-number
%r2028 = trunc i64 %r2027 to i1
br i1 %r2028, label %label73, label %label74
label73:
%r2030 = alloca i8*
call void @llvm.gcroot(i8** %r2030, i8* null)
%r1947 = bitcast i8** %r2030 to i64*
%r2035 = alloca i8*
call void @llvm.gcroot(i8** %r2035, i8* null)
%r2033 = bitcast i8** %r2035 to i64*
%r2038 = alloca i8*
call void @llvm.gcroot(i8** %r2038, i8* null)
%r2036 = bitcast i8** %r2038 to i64*
%r2037 = add i64 0, 0
store i64 %r2037, i64* %r2036
%r2041 = alloca i8*
call void @llvm.gcroot(i8** %r2041, i8* null)
%r2039 = bitcast i8** %r2041 to i64*
%r2040 = add i64 0, 4
store i64 %r2040, i64* %r2039
%r2034 = call i64 @f36(i64* %env, i64* %r2036, i64* %r2039) ; @lookup-variable
store i64 %r2034, i64* %r2033
%r2043 = alloca i8*
call void @llvm.gcroot(i8** %r2043, i8* null)
%r2031 = bitcast i8** %r2043 to i64*
%r2042 = call i64 @f26(i64* %r2033) ; @string-length
store i64 %r2042, i64* %r2031
%r2046 = alloca i8*
call void @llvm.gcroot(i8** %r2046, i8* null)
%r2044 = bitcast i8** %r2046 to i64*
%r2049 = alloca i8*
call void @llvm.gcroot(i8** %r2049, i8* null)
%r2047 = bitcast i8** %r2049 to i64*
%r2048 = add i64 0, 0
store i64 %r2048, i64* %r2047
%r2052 = alloca i8*
call void @llvm.gcroot(i8** %r2052, i8* null)
%r2050 = bitcast i8** %r2052 to i64*
%r2051 = add i64 0, 8
store i64 %r2051, i64* %r2050
%r2045 = call i64 @f36(i64* %env, i64* %r2047, i64* %r2050) ; @lookup-variable
store i64 %r2045, i64* %r2044
%r2054 = alloca i8*
call void @llvm.gcroot(i8** %r2054, i8* null)
%r2032 = bitcast i8** %r2054 to i64*
%r2053 = call i64 @f26(i64* %r2044) ; @string-length
store i64 %r2053, i64* %r2032
%r2056 = alloca i8*
call void @llvm.gcroot(i8** %r2056, i8* null)
%r2029 = bitcast i8** %r2056 to i64*
%r2055 = call i64 @f9(i64* %r2031, i64* %r2032) ; @=
store i64 %r2055, i64* %r2029
%r2057 = call i64 @f2(i64* %r2029) ; @raw-number
%r2058 = trunc i64 %r2057 to i1
br i1 %r2058, label %label76, label %label77
label76:
%r2064 = alloca i8*
call void @llvm.gcroot(i8** %r2064, i8* null)
%r2059 = bitcast i8** %r2064 to i64*
%r2067 = alloca i8*
call void @llvm.gcroot(i8** %r2067, i8* null)
%r2065 = bitcast i8** %r2067 to i64*
%r2066 = add i64 0, 4
store i64 %r2066, i64* %r2065
%r2070 = alloca i8*
call void @llvm.gcroot(i8** %r2070, i8* null)
%r2068 = bitcast i8** %r2070 to i64*
%r2069 = add i64 0, 12
store i64 %r2069, i64* %r2068
%r2063 = call i64 @f36(i64* %env, i64* %r2065, i64* %r2068) ; @lookup-variable
store i64 %r2063, i64* %r2059
%r2072 = alloca i8*
call void @llvm.gcroot(i8** %r2072, i8* null)
%r2060 = bitcast i8** %r2072 to i64*
%r2071 = call i64 @f18(i64* %r2059) ; @get-procedure-env
store i64 %r2071, i64* %r2060
%r2074 = alloca i8*
call void @llvm.gcroot(i8** %r2074, i8* null)
%r2062 = bitcast i8** %r2074 to i64*
%r2077 = alloca i8*
call void @llvm.gcroot(i8** %r2077, i8* null)
%r2075 = bitcast i8** %r2077 to i64*
%r2076 = add i64 0, 16
store i64 %r2076, i64* %r2075
%r2073 = call i64 @f17(i64* %r2075, i64* %r2060) ; @make-env
store i64 %r2073, i64* %r2062
%r2080 = alloca i8*
call void @llvm.gcroot(i8** %r2080, i8* null)
%r2078 = bitcast i8** %r2080 to i64*
%r2083 = alloca i8*
call void @llvm.gcroot(i8** %r2083, i8* null)
%r2081 = bitcast i8** %r2083 to i64*
%r2082 = add i64 0, 0
store i64 %r2082, i64* %r2081
%r2086 = alloca i8*
call void @llvm.gcroot(i8** %r2086, i8* null)
%r2084 = bitcast i8** %r2086 to i64*
%r2085 = add i64 0, 4
store i64 %r2085, i64* %r2084
%r2079 = call i64 @f36(i64* %env, i64* %r2081, i64* %r2084) ; @lookup-variable
store i64 %r2079, i64* %r2078
%r2090 = alloca i8*
call void @llvm.gcroot(i8** %r2090, i8* null)
%r2088 = bitcast i8** %r2090 to i64*
%r2089 = add i64 0, 4
store i64 %r2089, i64* %r2088
%r2087 = call i64 @f13(i64* %r2062, i64* %r2088, i64* %r2078) ; @vector-set!
%r2093 = alloca i8*
call void @llvm.gcroot(i8** %r2093, i8* null)
%r2091 = bitcast i8** %r2093 to i64*
%r2096 = alloca i8*
call void @llvm.gcroot(i8** %r2096, i8* null)
%r2094 = bitcast i8** %r2096 to i64*
%r2095 = add i64 0, 0
store i64 %r2095, i64* %r2094
%r2099 = alloca i8*
call void @llvm.gcroot(i8** %r2099, i8* null)
%r2097 = bitcast i8** %r2099 to i64*
%r2098 = add i64 0, 8
store i64 %r2098, i64* %r2097
%r2092 = call i64 @f36(i64* %env, i64* %r2094, i64* %r2097) ; @lookup-variable
store i64 %r2092, i64* %r2091
%r2103 = alloca i8*
call void @llvm.gcroot(i8** %r2103, i8* null)
%r2101 = bitcast i8** %r2103 to i64*
%r2102 = add i64 0, 8
store i64 %r2102, i64* %r2101
%r2100 = call i64 @f13(i64* %r2062, i64* %r2101, i64* %r2091) ; @vector-set!
%r2106 = alloca i8*
call void @llvm.gcroot(i8** %r2106, i8* null)
%r2104 = bitcast i8** %r2106 to i64*
%r2105 = add i64 0, 0
store i64 %r2105, i64* %r2104
%r2110 = alloca i8*
call void @llvm.gcroot(i8** %r2110, i8* null)
%r2108 = bitcast i8** %r2110 to i64*
%r2109 = add i64 0, 12
store i64 %r2109, i64* %r2108
%r2107 = call i64 @f13(i64* %r2062, i64* %r2108, i64* %r2104) ; @vector-set!
%r2114 = alloca i8*
call void @llvm.gcroot(i8** %r2114, i8* null)
%r2112 = bitcast i8** %r2114 to i64*
%r2117 = alloca i8*
call void @llvm.gcroot(i8** %r2117, i8* null)
%r2115 = bitcast i8** %r2117 to i64*
%r2116 = add i64 0, 0
store i64 %r2116, i64* %r2115
%r2120 = alloca i8*
call void @llvm.gcroot(i8** %r2120, i8* null)
%r2118 = bitcast i8** %r2120 to i64*
%r2119 = add i64 0, 4
store i64 %r2119, i64* %r2118
%r2113 = call i64 @f36(i64* %env, i64* %r2115, i64* %r2118) ; @lookup-variable
store i64 %r2113, i64* %r2112
%r2122 = alloca i8*
call void @llvm.gcroot(i8** %r2122, i8* null)
%r2111 = bitcast i8** %r2122 to i64*
%r2121 = call i64 @f26(i64* %r2112) ; @string-length
store i64 %r2121, i64* %r2111
%r2126 = alloca i8*
call void @llvm.gcroot(i8** %r2126, i8* null)
%r2124 = bitcast i8** %r2126 to i64*
%r2125 = add i64 0, 16
store i64 %r2125, i64* %r2124
%r2123 = call i64 @f13(i64* %r2062, i64* %r2124, i64* %r2111) ; @vector-set!
%r2128 = alloca i8*
call void @llvm.gcroot(i8** %r2128, i8* null)
%r2061 = bitcast i8** %r2128 to i64*
%r2127 = call i64 @f19(i64* %r2059) ; @get-procedure-nparams
store i64 %r2127, i64* %r2061
%r2129 = call i64 @f23(i64* %r2061, i64* %r2062) ; @fix-arbitrary-procs
%r2131 = bitcast [20 x i8]* @g2130 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r2131, i32 1, i64* %r2062)
%r2133 = alloca i8*
call void @llvm.gcroot(i8** %r2133, i8* null)
%r1947 = bitcast i8** %r2133 to i64*
%r2132 = call i64 @apply-procedure(i64* %r2059, i64* %r2062) ; @apply-procedure
store i64 %r2132, i64* %r1947
br label %label78
label77:
%r2135 = alloca i8*
call void @llvm.gcroot(i8** %r2135, i8* null)
%r1947 = bitcast i8** %r2135 to i64*
%r2134 = call i64 @make-null() ; @make-null
store i64 %r2134, i64* %r1947
br label %label78
label78:
br label %label75
label74:
%r2137 = alloca i8*
call void @llvm.gcroot(i8** %r2137, i8* null)
%r1947 = bitcast i8** %r2137 to i64*
%r2142 = alloca i8*
call void @llvm.gcroot(i8** %r2142, i8* null)
%r2140 = bitcast i8** %r2142 to i64*
%r2145 = alloca i8*
call void @llvm.gcroot(i8** %r2145, i8* null)
%r2143 = bitcast i8** %r2145 to i64*
%r2144 = add i64 0, 0
store i64 %r2144, i64* %r2143
%r2148 = alloca i8*
call void @llvm.gcroot(i8** %r2148, i8* null)
%r2146 = bitcast i8** %r2148 to i64*
%r2147 = add i64 0, 4
store i64 %r2147, i64* %r2146
%r2141 = call i64 @f36(i64* %env, i64* %r2143, i64* %r2146) ; @lookup-variable
store i64 %r2141, i64* %r2140
%r2150 = alloca i8*
call void @llvm.gcroot(i8** %r2150, i8* null)
%r2138 = bitcast i8** %r2150 to i64*
%r2149 = call i64 @f25(i64* %r2140) ; @symbol?
store i64 %r2149, i64* %r2138
%r2153 = alloca i8*
call void @llvm.gcroot(i8** %r2153, i8* null)
%r2151 = bitcast i8** %r2153 to i64*
%r2156 = alloca i8*
call void @llvm.gcroot(i8** %r2156, i8* null)
%r2154 = bitcast i8** %r2156 to i64*
%r2155 = add i64 0, 0
store i64 %r2155, i64* %r2154
%r2159 = alloca i8*
call void @llvm.gcroot(i8** %r2159, i8* null)
%r2157 = bitcast i8** %r2159 to i64*
%r2158 = add i64 0, 8
store i64 %r2158, i64* %r2157
%r2152 = call i64 @f36(i64* %env, i64* %r2154, i64* %r2157) ; @lookup-variable
store i64 %r2152, i64* %r2151
%r2161 = alloca i8*
call void @llvm.gcroot(i8** %r2161, i8* null)
%r2139 = bitcast i8** %r2161 to i64*
%r2160 = call i64 @f25(i64* %r2151) ; @symbol?
store i64 %r2160, i64* %r2139
%r2163 = alloca i8*
call void @llvm.gcroot(i8** %r2163, i8* null)
%r2136 = bitcast i8** %r2163 to i64*
%r2162 = call i64 @f3(i64* %r2138, i64* %r2139) ; @and
store i64 %r2162, i64* %r2136
%r2164 = call i64 @f2(i64* %r2136) ; @raw-number
%r2165 = trunc i64 %r2164 to i1
br i1 %r2165, label %label79, label %label80
label79:
%r2167 = alloca i8*
call void @llvm.gcroot(i8** %r2167, i8* null)
%r1947 = bitcast i8** %r2167 to i64*
%r2172 = alloca i8*
call void @llvm.gcroot(i8** %r2172, i8* null)
%r2170 = bitcast i8** %r2172 to i64*
%r2175 = alloca i8*
call void @llvm.gcroot(i8** %r2175, i8* null)
%r2173 = bitcast i8** %r2175 to i64*
%r2174 = add i64 0, 0
store i64 %r2174, i64* %r2173
%r2178 = alloca i8*
call void @llvm.gcroot(i8** %r2178, i8* null)
%r2176 = bitcast i8** %r2178 to i64*
%r2177 = add i64 0, 4
store i64 %r2177, i64* %r2176
%r2171 = call i64 @f36(i64* %env, i64* %r2173, i64* %r2176) ; @lookup-variable
store i64 %r2171, i64* %r2170
%r2180 = alloca i8*
call void @llvm.gcroot(i8** %r2180, i8* null)
%r2168 = bitcast i8** %r2180 to i64*
%r2179 = call i64 @f26(i64* %r2170) ; @string-length
store i64 %r2179, i64* %r2168
%r2183 = alloca i8*
call void @llvm.gcroot(i8** %r2183, i8* null)
%r2181 = bitcast i8** %r2183 to i64*
%r2186 = alloca i8*
call void @llvm.gcroot(i8** %r2186, i8* null)
%r2184 = bitcast i8** %r2186 to i64*
%r2185 = add i64 0, 0
store i64 %r2185, i64* %r2184
%r2189 = alloca i8*
call void @llvm.gcroot(i8** %r2189, i8* null)
%r2187 = bitcast i8** %r2189 to i64*
%r2188 = add i64 0, 8
store i64 %r2188, i64* %r2187
%r2182 = call i64 @f36(i64* %env, i64* %r2184, i64* %r2187) ; @lookup-variable
store i64 %r2182, i64* %r2181
%r2191 = alloca i8*
call void @llvm.gcroot(i8** %r2191, i8* null)
%r2169 = bitcast i8** %r2191 to i64*
%r2190 = call i64 @f26(i64* %r2181) ; @string-length
store i64 %r2190, i64* %r2169
%r2193 = alloca i8*
call void @llvm.gcroot(i8** %r2193, i8* null)
%r2166 = bitcast i8** %r2193 to i64*
%r2192 = call i64 @f9(i64* %r2168, i64* %r2169) ; @=
store i64 %r2192, i64* %r2166
%r2194 = call i64 @f2(i64* %r2166) ; @raw-number
%r2195 = trunc i64 %r2194 to i1
br i1 %r2195, label %label82, label %label83
label82:
%r2201 = alloca i8*
call void @llvm.gcroot(i8** %r2201, i8* null)
%r2196 = bitcast i8** %r2201 to i64*
%r2204 = alloca i8*
call void @llvm.gcroot(i8** %r2204, i8* null)
%r2202 = bitcast i8** %r2204 to i64*
%r2203 = add i64 0, 4
store i64 %r2203, i64* %r2202
%r2207 = alloca i8*
call void @llvm.gcroot(i8** %r2207, i8* null)
%r2205 = bitcast i8** %r2207 to i64*
%r2206 = add i64 0, 12
store i64 %r2206, i64* %r2205
%r2200 = call i64 @f36(i64* %env, i64* %r2202, i64* %r2205) ; @lookup-variable
store i64 %r2200, i64* %r2196
%r2209 = alloca i8*
call void @llvm.gcroot(i8** %r2209, i8* null)
%r2197 = bitcast i8** %r2209 to i64*
%r2208 = call i64 @f18(i64* %r2196) ; @get-procedure-env
store i64 %r2208, i64* %r2197
%r2211 = alloca i8*
call void @llvm.gcroot(i8** %r2211, i8* null)
%r2199 = bitcast i8** %r2211 to i64*
%r2214 = alloca i8*
call void @llvm.gcroot(i8** %r2214, i8* null)
%r2212 = bitcast i8** %r2214 to i64*
%r2213 = add i64 0, 16
store i64 %r2213, i64* %r2212
%r2210 = call i64 @f17(i64* %r2212, i64* %r2197) ; @make-env
store i64 %r2210, i64* %r2199
%r2217 = alloca i8*
call void @llvm.gcroot(i8** %r2217, i8* null)
%r2215 = bitcast i8** %r2217 to i64*
%r2220 = alloca i8*
call void @llvm.gcroot(i8** %r2220, i8* null)
%r2218 = bitcast i8** %r2220 to i64*
%r2219 = add i64 0, 0
store i64 %r2219, i64* %r2218
%r2223 = alloca i8*
call void @llvm.gcroot(i8** %r2223, i8* null)
%r2221 = bitcast i8** %r2223 to i64*
%r2222 = add i64 0, 4
store i64 %r2222, i64* %r2221
%r2216 = call i64 @f36(i64* %env, i64* %r2218, i64* %r2221) ; @lookup-variable
store i64 %r2216, i64* %r2215
%r2227 = alloca i8*
call void @llvm.gcroot(i8** %r2227, i8* null)
%r2225 = bitcast i8** %r2227 to i64*
%r2226 = add i64 0, 4
store i64 %r2226, i64* %r2225
%r2224 = call i64 @f13(i64* %r2199, i64* %r2225, i64* %r2215) ; @vector-set!
%r2230 = alloca i8*
call void @llvm.gcroot(i8** %r2230, i8* null)
%r2228 = bitcast i8** %r2230 to i64*
%r2233 = alloca i8*
call void @llvm.gcroot(i8** %r2233, i8* null)
%r2231 = bitcast i8** %r2233 to i64*
%r2232 = add i64 0, 0
store i64 %r2232, i64* %r2231
%r2236 = alloca i8*
call void @llvm.gcroot(i8** %r2236, i8* null)
%r2234 = bitcast i8** %r2236 to i64*
%r2235 = add i64 0, 8
store i64 %r2235, i64* %r2234
%r2229 = call i64 @f36(i64* %env, i64* %r2231, i64* %r2234) ; @lookup-variable
store i64 %r2229, i64* %r2228
%r2240 = alloca i8*
call void @llvm.gcroot(i8** %r2240, i8* null)
%r2238 = bitcast i8** %r2240 to i64*
%r2239 = add i64 0, 8
store i64 %r2239, i64* %r2238
%r2237 = call i64 @f13(i64* %r2199, i64* %r2238, i64* %r2228) ; @vector-set!
%r2243 = alloca i8*
call void @llvm.gcroot(i8** %r2243, i8* null)
%r2241 = bitcast i8** %r2243 to i64*
%r2242 = add i64 0, 0
store i64 %r2242, i64* %r2241
%r2247 = alloca i8*
call void @llvm.gcroot(i8** %r2247, i8* null)
%r2245 = bitcast i8** %r2247 to i64*
%r2246 = add i64 0, 12
store i64 %r2246, i64* %r2245
%r2244 = call i64 @f13(i64* %r2199, i64* %r2245, i64* %r2241) ; @vector-set!
%r2251 = alloca i8*
call void @llvm.gcroot(i8** %r2251, i8* null)
%r2249 = bitcast i8** %r2251 to i64*
%r2254 = alloca i8*
call void @llvm.gcroot(i8** %r2254, i8* null)
%r2252 = bitcast i8** %r2254 to i64*
%r2253 = add i64 0, 0
store i64 %r2253, i64* %r2252
%r2257 = alloca i8*
call void @llvm.gcroot(i8** %r2257, i8* null)
%r2255 = bitcast i8** %r2257 to i64*
%r2256 = add i64 0, 4
store i64 %r2256, i64* %r2255
%r2250 = call i64 @f36(i64* %env, i64* %r2252, i64* %r2255) ; @lookup-variable
store i64 %r2250, i64* %r2249
%r2259 = alloca i8*
call void @llvm.gcroot(i8** %r2259, i8* null)
%r2248 = bitcast i8** %r2259 to i64*
%r2258 = call i64 @f26(i64* %r2249) ; @string-length
store i64 %r2258, i64* %r2248
%r2263 = alloca i8*
call void @llvm.gcroot(i8** %r2263, i8* null)
%r2261 = bitcast i8** %r2263 to i64*
%r2262 = add i64 0, 16
store i64 %r2262, i64* %r2261
%r2260 = call i64 @f13(i64* %r2199, i64* %r2261, i64* %r2248) ; @vector-set!
%r2265 = alloca i8*
call void @llvm.gcroot(i8** %r2265, i8* null)
%r2198 = bitcast i8** %r2265 to i64*
%r2264 = call i64 @f19(i64* %r2196) ; @get-procedure-nparams
store i64 %r2264, i64* %r2198
%r2266 = call i64 @f23(i64* %r2198, i64* %r2199) ; @fix-arbitrary-procs
%r2268 = bitcast [20 x i8]* @g2267 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r2268, i32 1, i64* %r2199)
%r2270 = alloca i8*
call void @llvm.gcroot(i8** %r2270, i8* null)
%r1947 = bitcast i8** %r2270 to i64*
%r2269 = call i64 @apply-procedure(i64* %r2196, i64* %r2199) ; @apply-procedure
store i64 %r2269, i64* %r1947
br label %label84
label83:
%r2272 = alloca i8*
call void @llvm.gcroot(i8** %r2272, i8* null)
%r1947 = bitcast i8** %r2272 to i64*
%r2271 = call i64 @make-null() ; @make-null
store i64 %r2271, i64* %r1947
br label %label84
label84:
br label %label81
label80:
%r2280 = alloca i8*
call void @llvm.gcroot(i8** %r2280, i8* null)
%r2278 = bitcast i8** %r2280 to i64*
%r2279 = add i64 0, 0
store i64 %r2279, i64* %r2278
%r2283 = alloca i8*
call void @llvm.gcroot(i8** %r2283, i8* null)
%r2281 = bitcast i8** %r2283 to i64*
%r2282 = add i64 0, 4
store i64 %r2282, i64* %r2281
%r2273 = call i64 @f36(i64* %env, i64* %r2278, i64* %r2281) ; @lookup-variable
%r2286 = alloca i8*
call void @llvm.gcroot(i8** %r2286, i8* null)
%r2284 = bitcast i8** %r2286 to i64*
%r2285 = add i64 0, 0
store i64 %r2285, i64* %r2284
%r2289 = alloca i8*
call void @llvm.gcroot(i8** %r2289, i8* null)
%r2287 = bitcast i8** %r2289 to i64*
%r2288 = add i64 0, 8
store i64 %r2288, i64* %r2287
%r2274 = call i64 @f36(i64* %env, i64* %r2284, i64* %r2287) ; @lookup-variable
%r2275 = lshr i64 %r2273, 2
%r2276 = lshr i64 %r2274, 2
%r2290 = icmp eq i64 %r2275, %r2276
%r2277 = zext i1 %r2290 to i64
%r2292 = alloca i8*
call void @llvm.gcroot(i8** %r2292, i8* null)
%r1947 = bitcast i8** %r2292 to i64*
%r2291 = call i64 @make-number(i64 %r2277)
store i64 %r2291, i64* %r1947
br label %label81
label81:
br label %label75
label75:
br label %label72
label72:
%r2293 = load i64* %r1947
ret i64 %r2293
}

; @f60
define i64 @f61(i64* %env) gc "shadow-stack" {
%r2312 = alloca i8*
call void @llvm.gcroot(i8** %r2312, i8* null)
%r2309 = bitcast i8** %r2312 to i64*
%r2315 = alloca i8*
call void @llvm.gcroot(i8** %r2315, i8* null)
%r2313 = bitcast i8** %r2315 to i64*
%r2318 = alloca i8*
call void @llvm.gcroot(i8** %r2318, i8* null)
%r2316 = bitcast i8** %r2318 to i64*
%r2317 = add i64 0, 0
store i64 %r2317, i64* %r2316
%r2321 = alloca i8*
call void @llvm.gcroot(i8** %r2321, i8* null)
%r2319 = bitcast i8** %r2321 to i64*
%r2320 = add i64 0, 8
store i64 %r2320, i64* %r2319
%r2314 = call i64 @f36(i64* %env, i64* %r2316, i64* %r2319) ; @lookup-variable
store i64 %r2314, i64* %r2313
%r2323 = alloca i8*
call void @llvm.gcroot(i8** %r2323, i8* null)
%r2311 = bitcast i8** %r2323 to i64*
%r2322 = call i64 @null(i64* %r2313) ; @null?
store i64 %r2322, i64* %r2311
%r2324 = call i64 @f2(i64* %r2311) ; @raw-number
%r2325 = trunc i64 %r2324 to i1
br i1 %r2325, label %label85, label %label86
label85:
%r2327 = alloca i8*
call void @llvm.gcroot(i8** %r2327, i8* null)
%r2309 = bitcast i8** %r2327 to i64*
%r2326 = call i64 @make-null() ; @make-null
store i64 %r2326, i64* %r2309
br label %label87
label86:
%r2329 = alloca i8*
call void @llvm.gcroot(i8** %r2329, i8* null)
%r2309 = bitcast i8** %r2329 to i64*
%r2335 = alloca i8*
call void @llvm.gcroot(i8** %r2335, i8* null)
%r2330 = bitcast i8** %r2335 to i64*
%r2338 = alloca i8*
call void @llvm.gcroot(i8** %r2338, i8* null)
%r2336 = bitcast i8** %r2338 to i64*
%r2337 = add i64 0, 4
store i64 %r2337, i64* %r2336
%r2341 = alloca i8*
call void @llvm.gcroot(i8** %r2341, i8* null)
%r2339 = bitcast i8** %r2341 to i64*
%r2340 = add i64 0, 16
store i64 %r2340, i64* %r2339
%r2334 = call i64 @f36(i64* %env, i64* %r2336, i64* %r2339) ; @lookup-variable
store i64 %r2334, i64* %r2330
%r2343 = alloca i8*
call void @llvm.gcroot(i8** %r2343, i8* null)
%r2331 = bitcast i8** %r2343 to i64*
%r2342 = call i64 @f18(i64* %r2330) ; @get-procedure-env
store i64 %r2342, i64* %r2331
%r2345 = alloca i8*
call void @llvm.gcroot(i8** %r2345, i8* null)
%r2333 = bitcast i8** %r2345 to i64*
%r2348 = alloca i8*
call void @llvm.gcroot(i8** %r2348, i8* null)
%r2346 = bitcast i8** %r2348 to i64*
%r2347 = add i64 0, 8
store i64 %r2347, i64* %r2346
%r2344 = call i64 @f17(i64* %r2346, i64* %r2331) ; @make-env
store i64 %r2344, i64* %r2333
%r2351 = alloca i8*
call void @llvm.gcroot(i8** %r2351, i8* null)
%r2349 = bitcast i8** %r2351 to i64*
%r2354 = alloca i8*
call void @llvm.gcroot(i8** %r2354, i8* null)
%r2352 = bitcast i8** %r2354 to i64*
%r2353 = add i64 0, 0
store i64 %r2353, i64* %r2352
%r2357 = alloca i8*
call void @llvm.gcroot(i8** %r2357, i8* null)
%r2355 = bitcast i8** %r2357 to i64*
%r2356 = add i64 0, 4
store i64 %r2356, i64* %r2355
%r2350 = call i64 @f36(i64* %env, i64* %r2352, i64* %r2355) ; @lookup-variable
store i64 %r2350, i64* %r2349
%r2361 = alloca i8*
call void @llvm.gcroot(i8** %r2361, i8* null)
%r2359 = bitcast i8** %r2361 to i64*
%r2360 = add i64 0, 4
store i64 %r2360, i64* %r2359
%r2358 = call i64 @f13(i64* %r2333, i64* %r2359, i64* %r2349) ; @vector-set!
%r2365 = alloca i8*
call void @llvm.gcroot(i8** %r2365, i8* null)
%r2363 = bitcast i8** %r2365 to i64*
%r2368 = alloca i8*
call void @llvm.gcroot(i8** %r2368, i8* null)
%r2366 = bitcast i8** %r2368 to i64*
%r2367 = add i64 0, 0
store i64 %r2367, i64* %r2366
%r2371 = alloca i8*
call void @llvm.gcroot(i8** %r2371, i8* null)
%r2369 = bitcast i8** %r2371 to i64*
%r2370 = add i64 0, 8
store i64 %r2370, i64* %r2369
%r2364 = call i64 @f36(i64* %env, i64* %r2366, i64* %r2369) ; @lookup-variable
store i64 %r2364, i64* %r2363
%r2373 = alloca i8*
call void @llvm.gcroot(i8** %r2373, i8* null)
%r2362 = bitcast i8** %r2373 to i64*
%r2372 = call i64 @f29(i64* %r2363) ; @car
store i64 %r2372, i64* %r2362
%r2377 = alloca i8*
call void @llvm.gcroot(i8** %r2377, i8* null)
%r2375 = bitcast i8** %r2377 to i64*
%r2376 = add i64 0, 8
store i64 %r2376, i64* %r2375
%r2374 = call i64 @f13(i64* %r2333, i64* %r2375, i64* %r2362) ; @vector-set!
%r2379 = alloca i8*
call void @llvm.gcroot(i8** %r2379, i8* null)
%r2332 = bitcast i8** %r2379 to i64*
%r2378 = call i64 @f19(i64* %r2330) ; @get-procedure-nparams
store i64 %r2378, i64* %r2332
%r2380 = call i64 @f23(i64* %r2332, i64* %r2333) ; @fix-arbitrary-procs
%r2382 = bitcast [20 x i8]* @g2381 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r2382, i32 1, i64* %r2333)
%r2384 = alloca i8*
call void @llvm.gcroot(i8** %r2384, i8* null)
%r2328 = bitcast i8** %r2384 to i64*
%r2383 = call i64 @apply-procedure(i64* %r2330, i64* %r2333) ; @apply-procedure
store i64 %r2383, i64* %r2328
%r2385 = call i64 @f2(i64* %r2328) ; @raw-number
%r2386 = trunc i64 %r2385 to i1
br i1 %r2386, label %label88, label %label89
label88:
%r2388 = alloca i8*
call void @llvm.gcroot(i8** %r2388, i8* null)
%r2309 = bitcast i8** %r2388 to i64*
%r2387 = add i64 0, 4
store i64 %r2387, i64* %r2309
br label %label90
label89:
%r2394 = alloca i8*
call void @llvm.gcroot(i8** %r2394, i8* null)
%r2389 = bitcast i8** %r2394 to i64*
%r2397 = alloca i8*
call void @llvm.gcroot(i8** %r2397, i8* null)
%r2395 = bitcast i8** %r2397 to i64*
%r2396 = add i64 0, 4
store i64 %r2396, i64* %r2395
%r2400 = alloca i8*
call void @llvm.gcroot(i8** %r2400, i8* null)
%r2398 = bitcast i8** %r2400 to i64*
%r2399 = add i64 0, 20
store i64 %r2399, i64* %r2398
%r2393 = call i64 @f36(i64* %env, i64* %r2395, i64* %r2398) ; @lookup-variable
store i64 %r2393, i64* %r2389
%r2402 = alloca i8*
call void @llvm.gcroot(i8** %r2402, i8* null)
%r2390 = bitcast i8** %r2402 to i64*
%r2401 = call i64 @f18(i64* %r2389) ; @get-procedure-env
store i64 %r2401, i64* %r2390
%r2404 = alloca i8*
call void @llvm.gcroot(i8** %r2404, i8* null)
%r2392 = bitcast i8** %r2404 to i64*
%r2407 = alloca i8*
call void @llvm.gcroot(i8** %r2407, i8* null)
%r2405 = bitcast i8** %r2407 to i64*
%r2406 = add i64 0, 8
store i64 %r2406, i64* %r2405
%r2403 = call i64 @f17(i64* %r2405, i64* %r2390) ; @make-env
store i64 %r2403, i64* %r2392
%r2410 = alloca i8*
call void @llvm.gcroot(i8** %r2410, i8* null)
%r2408 = bitcast i8** %r2410 to i64*
%r2413 = alloca i8*
call void @llvm.gcroot(i8** %r2413, i8* null)
%r2411 = bitcast i8** %r2413 to i64*
%r2412 = add i64 0, 0
store i64 %r2412, i64* %r2411
%r2416 = alloca i8*
call void @llvm.gcroot(i8** %r2416, i8* null)
%r2414 = bitcast i8** %r2416 to i64*
%r2415 = add i64 0, 4
store i64 %r2415, i64* %r2414
%r2409 = call i64 @f36(i64* %env, i64* %r2411, i64* %r2414) ; @lookup-variable
store i64 %r2409, i64* %r2408
%r2420 = alloca i8*
call void @llvm.gcroot(i8** %r2420, i8* null)
%r2418 = bitcast i8** %r2420 to i64*
%r2419 = add i64 0, 4
store i64 %r2419, i64* %r2418
%r2417 = call i64 @f13(i64* %r2392, i64* %r2418, i64* %r2408) ; @vector-set!
%r2424 = alloca i8*
call void @llvm.gcroot(i8** %r2424, i8* null)
%r2422 = bitcast i8** %r2424 to i64*
%r2427 = alloca i8*
call void @llvm.gcroot(i8** %r2427, i8* null)
%r2425 = bitcast i8** %r2427 to i64*
%r2426 = add i64 0, 0
store i64 %r2426, i64* %r2425
%r2430 = alloca i8*
call void @llvm.gcroot(i8** %r2430, i8* null)
%r2428 = bitcast i8** %r2430 to i64*
%r2429 = add i64 0, 8
store i64 %r2429, i64* %r2428
%r2423 = call i64 @f36(i64* %env, i64* %r2425, i64* %r2428) ; @lookup-variable
store i64 %r2423, i64* %r2422
%r2432 = alloca i8*
call void @llvm.gcroot(i8** %r2432, i8* null)
%r2421 = bitcast i8** %r2432 to i64*
%r2431 = call i64 @f30(i64* %r2422) ; @cdr
store i64 %r2431, i64* %r2421
%r2436 = alloca i8*
call void @llvm.gcroot(i8** %r2436, i8* null)
%r2434 = bitcast i8** %r2436 to i64*
%r2435 = add i64 0, 8
store i64 %r2435, i64* %r2434
%r2433 = call i64 @f13(i64* %r2392, i64* %r2434, i64* %r2421) ; @vector-set!
%r2438 = alloca i8*
call void @llvm.gcroot(i8** %r2438, i8* null)
%r2391 = bitcast i8** %r2438 to i64*
%r2437 = call i64 @f19(i64* %r2389) ; @get-procedure-nparams
store i64 %r2437, i64* %r2391
%r2439 = call i64 @f23(i64* %r2391, i64* %r2392) ; @fix-arbitrary-procs
%r2441 = bitcast [20 x i8]* @g2440 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r2441, i32 1, i64* %r2392)
%r2443 = alloca i8*
call void @llvm.gcroot(i8** %r2443, i8* null)
%r2309 = bitcast i8** %r2443 to i64*
%r2442 = call i64 @apply-procedure(i64* %r2389, i64* %r2392) ; @apply-procedure
store i64 %r2442, i64* %r2309
br label %label90
label90:
br label %label87
label87:
%r2444 = load i64* %r2309
ret i64 %r2444
}

; @f62
define i64 @f63(i64* %env) gc "shadow-stack" {
%r2463 = alloca i8*
call void @llvm.gcroot(i8** %r2463, i8* null)
%r2460 = bitcast i8** %r2463 to i64*
%r2466 = alloca i8*
call void @llvm.gcroot(i8** %r2466, i8* null)
%r2464 = bitcast i8** %r2466 to i64*
%r2469 = alloca i8*
call void @llvm.gcroot(i8** %r2469, i8* null)
%r2467 = bitcast i8** %r2469 to i64*
%r2468 = add i64 0, 0
store i64 %r2468, i64* %r2467
%r2472 = alloca i8*
call void @llvm.gcroot(i8** %r2472, i8* null)
%r2470 = bitcast i8** %r2472 to i64*
%r2471 = add i64 0, 4
store i64 %r2471, i64* %r2470
%r2465 = call i64 @f36(i64* %env, i64* %r2467, i64* %r2470) ; @lookup-variable
store i64 %r2465, i64* %r2464
%r2474 = alloca i8*
call void @llvm.gcroot(i8** %r2474, i8* null)
%r2462 = bitcast i8** %r2474 to i64*
%r2473 = call i64 @null(i64* %r2464) ; @null?
store i64 %r2473, i64* %r2462
%r2475 = call i64 @f2(i64* %r2462) ; @raw-number
%r2476 = trunc i64 %r2475 to i1
br i1 %r2476, label %label91, label %label92
label91:
%r2478 = alloca i8*
call void @llvm.gcroot(i8** %r2478, i8* null)
%r2460 = bitcast i8** %r2478 to i64*
%r2477 = add i64 0, 0
store i64 %r2477, i64* %r2460
br label %label93
label92:
%r2482 = alloca i8*
call void @llvm.gcroot(i8** %r2482, i8* null)
%r2479 = bitcast i8** %r2482 to i64*
%r2481 = add i64 0, 4
store i64 %r2481, i64* %r2479
%r2488 = alloca i8*
call void @llvm.gcroot(i8** %r2488, i8* null)
%r2483 = bitcast i8** %r2488 to i64*
%r2491 = alloca i8*
call void @llvm.gcroot(i8** %r2491, i8* null)
%r2489 = bitcast i8** %r2491 to i64*
%r2490 = add i64 0, 4
store i64 %r2490, i64* %r2489
%r2494 = alloca i8*
call void @llvm.gcroot(i8** %r2494, i8* null)
%r2492 = bitcast i8** %r2494 to i64*
%r2493 = add i64 0, 24
store i64 %r2493, i64* %r2492
%r2487 = call i64 @f36(i64* %env, i64* %r2489, i64* %r2492) ; @lookup-variable
store i64 %r2487, i64* %r2483
%r2496 = alloca i8*
call void @llvm.gcroot(i8** %r2496, i8* null)
%r2484 = bitcast i8** %r2496 to i64*
%r2495 = call i64 @f18(i64* %r2483) ; @get-procedure-env
store i64 %r2495, i64* %r2484
%r2498 = alloca i8*
call void @llvm.gcroot(i8** %r2498, i8* null)
%r2486 = bitcast i8** %r2498 to i64*
%r2501 = alloca i8*
call void @llvm.gcroot(i8** %r2501, i8* null)
%r2499 = bitcast i8** %r2501 to i64*
%r2500 = add i64 0, 4
store i64 %r2500, i64* %r2499
%r2497 = call i64 @f17(i64* %r2499, i64* %r2484) ; @make-env
store i64 %r2497, i64* %r2486
%r2505 = alloca i8*
call void @llvm.gcroot(i8** %r2505, i8* null)
%r2503 = bitcast i8** %r2505 to i64*
%r2508 = alloca i8*
call void @llvm.gcroot(i8** %r2508, i8* null)
%r2506 = bitcast i8** %r2508 to i64*
%r2507 = add i64 0, 0
store i64 %r2507, i64* %r2506
%r2511 = alloca i8*
call void @llvm.gcroot(i8** %r2511, i8* null)
%r2509 = bitcast i8** %r2511 to i64*
%r2510 = add i64 0, 4
store i64 %r2510, i64* %r2509
%r2504 = call i64 @f36(i64* %env, i64* %r2506, i64* %r2509) ; @lookup-variable
store i64 %r2504, i64* %r2503
%r2513 = alloca i8*
call void @llvm.gcroot(i8** %r2513, i8* null)
%r2502 = bitcast i8** %r2513 to i64*
%r2512 = call i64 @f30(i64* %r2503) ; @cdr
store i64 %r2512, i64* %r2502
%r2517 = alloca i8*
call void @llvm.gcroot(i8** %r2517, i8* null)
%r2515 = bitcast i8** %r2517 to i64*
%r2516 = add i64 0, 4
store i64 %r2516, i64* %r2515
%r2514 = call i64 @f13(i64* %r2486, i64* %r2515, i64* %r2502) ; @vector-set!
%r2519 = alloca i8*
call void @llvm.gcroot(i8** %r2519, i8* null)
%r2485 = bitcast i8** %r2519 to i64*
%r2518 = call i64 @f19(i64* %r2483) ; @get-procedure-nparams
store i64 %r2518, i64* %r2485
%r2520 = call i64 @f23(i64* %r2485, i64* %r2486) ; @fix-arbitrary-procs
%r2522 = bitcast [20 x i8]* @g2521 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r2522, i32 1, i64* %r2486)
%r2524 = alloca i8*
call void @llvm.gcroot(i8** %r2524, i8* null)
%r2480 = bitcast i8** %r2524 to i64*
%r2523 = call i64 @apply-procedure(i64* %r2483, i64* %r2486) ; @apply-procedure
store i64 %r2523, i64* %r2480
%r2526 = alloca i8*
call void @llvm.gcroot(i8** %r2526, i8* null)
%r2460 = bitcast i8** %r2526 to i64*
%r2525 = call i64 @f16(i64* %r2479, i64* %r2480) ; @+
store i64 %r2525, i64* %r2460
br label %label93
label93:
%r2527 = load i64* %r2460
ret i64 %r2527
}

; @f64
define i64 @f65(i64* %env) gc "shadow-stack" {
%r2546 = alloca i8*
call void @llvm.gcroot(i8** %r2546, i8* null)
%r2543 = bitcast i8** %r2546 to i64*
%r2549 = alloca i8*
call void @llvm.gcroot(i8** %r2549, i8* null)
%r2547 = bitcast i8** %r2549 to i64*
%r2552 = alloca i8*
call void @llvm.gcroot(i8** %r2552, i8* null)
%r2550 = bitcast i8** %r2552 to i64*
%r2551 = add i64 0, 0
store i64 %r2551, i64* %r2550
%r2555 = alloca i8*
call void @llvm.gcroot(i8** %r2555, i8* null)
%r2553 = bitcast i8** %r2555 to i64*
%r2554 = add i64 0, 4
store i64 %r2554, i64* %r2553
%r2548 = call i64 @f36(i64* %env, i64* %r2550, i64* %r2553) ; @lookup-variable
store i64 %r2548, i64* %r2547
%r2557 = alloca i8*
call void @llvm.gcroot(i8** %r2557, i8* null)
%r2545 = bitcast i8** %r2557 to i64*
%r2556 = call i64 @null(i64* %r2547) ; @null?
store i64 %r2556, i64* %r2545
%r2558 = call i64 @f2(i64* %r2545) ; @raw-number
%r2559 = trunc i64 %r2558 to i1
br i1 %r2559, label %label94, label %label95
label94:
%r2561 = alloca i8*
call void @llvm.gcroot(i8** %r2561, i8* null)
%r2543 = bitcast i8** %r2561 to i64*
%r2560 = call i64 @make-null() ; @make-null
store i64 %r2560, i64* %r2543
br label %label96
label95:
%r2563 = alloca i8*
call void @llvm.gcroot(i8** %r2563, i8* null)
%r2543 = bitcast i8** %r2563 to i64*
%r2567 = alloca i8*
call void @llvm.gcroot(i8** %r2567, i8* null)
%r2564 = bitcast i8** %r2567 to i64*
%r2570 = alloca i8*
call void @llvm.gcroot(i8** %r2570, i8* null)
%r2568 = bitcast i8** %r2570 to i64*
%r2569 = add i64 0, 0
store i64 %r2569, i64* %r2568
%r2573 = alloca i8*
call void @llvm.gcroot(i8** %r2573, i8* null)
%r2571 = bitcast i8** %r2573 to i64*
%r2572 = add i64 0, 8
store i64 %r2572, i64* %r2571
%r2566 = call i64 @f36(i64* %env, i64* %r2568, i64* %r2571) ; @lookup-variable
store i64 %r2566, i64* %r2564
%r2575 = alloca i8*
call void @llvm.gcroot(i8** %r2575, i8* null)
%r2565 = bitcast i8** %r2575 to i64*
%r2574 = add i64 0, 0
store i64 %r2574, i64* %r2565
%r2577 = alloca i8*
call void @llvm.gcroot(i8** %r2577, i8* null)
%r2562 = bitcast i8** %r2577 to i64*
%r2576 = call i64 @f9(i64* %r2564, i64* %r2565) ; @=
store i64 %r2576, i64* %r2562
%r2578 = call i64 @f2(i64* %r2562) ; @raw-number
%r2579 = trunc i64 %r2578 to i1
br i1 %r2579, label %label97, label %label98
label97:
%r2582 = alloca i8*
call void @llvm.gcroot(i8** %r2582, i8* null)
%r2580 = bitcast i8** %r2582 to i64*
%r2585 = alloca i8*
call void @llvm.gcroot(i8** %r2585, i8* null)
%r2583 = bitcast i8** %r2585 to i64*
%r2584 = add i64 0, 0
store i64 %r2584, i64* %r2583
%r2588 = alloca i8*
call void @llvm.gcroot(i8** %r2588, i8* null)
%r2586 = bitcast i8** %r2588 to i64*
%r2587 = add i64 0, 4
store i64 %r2587, i64* %r2586
%r2581 = call i64 @f36(i64* %env, i64* %r2583, i64* %r2586) ; @lookup-variable
store i64 %r2581, i64* %r2580
%r2590 = alloca i8*
call void @llvm.gcroot(i8** %r2590, i8* null)
%r2543 = bitcast i8** %r2590 to i64*
%r2589 = call i64 @f29(i64* %r2580) ; @car
store i64 %r2589, i64* %r2543
br label %label99
label98:
%r2596 = alloca i8*
call void @llvm.gcroot(i8** %r2596, i8* null)
%r2591 = bitcast i8** %r2596 to i64*
%r2599 = alloca i8*
call void @llvm.gcroot(i8** %r2599, i8* null)
%r2597 = bitcast i8** %r2599 to i64*
%r2598 = add i64 0, 4
store i64 %r2598, i64* %r2597
%r2602 = alloca i8*
call void @llvm.gcroot(i8** %r2602, i8* null)
%r2600 = bitcast i8** %r2602 to i64*
%r2601 = add i64 0, 28
store i64 %r2601, i64* %r2600
%r2595 = call i64 @f36(i64* %env, i64* %r2597, i64* %r2600) ; @lookup-variable
store i64 %r2595, i64* %r2591
%r2604 = alloca i8*
call void @llvm.gcroot(i8** %r2604, i8* null)
%r2592 = bitcast i8** %r2604 to i64*
%r2603 = call i64 @f18(i64* %r2591) ; @get-procedure-env
store i64 %r2603, i64* %r2592
%r2606 = alloca i8*
call void @llvm.gcroot(i8** %r2606, i8* null)
%r2594 = bitcast i8** %r2606 to i64*
%r2609 = alloca i8*
call void @llvm.gcroot(i8** %r2609, i8* null)
%r2607 = bitcast i8** %r2609 to i64*
%r2608 = add i64 0, 8
store i64 %r2608, i64* %r2607
%r2605 = call i64 @f17(i64* %r2607, i64* %r2592) ; @make-env
store i64 %r2605, i64* %r2594
%r2613 = alloca i8*
call void @llvm.gcroot(i8** %r2613, i8* null)
%r2611 = bitcast i8** %r2613 to i64*
%r2616 = alloca i8*
call void @llvm.gcroot(i8** %r2616, i8* null)
%r2614 = bitcast i8** %r2616 to i64*
%r2615 = add i64 0, 0
store i64 %r2615, i64* %r2614
%r2619 = alloca i8*
call void @llvm.gcroot(i8** %r2619, i8* null)
%r2617 = bitcast i8** %r2619 to i64*
%r2618 = add i64 0, 4
store i64 %r2618, i64* %r2617
%r2612 = call i64 @f36(i64* %env, i64* %r2614, i64* %r2617) ; @lookup-variable
store i64 %r2612, i64* %r2611
%r2621 = alloca i8*
call void @llvm.gcroot(i8** %r2621, i8* null)
%r2610 = bitcast i8** %r2621 to i64*
%r2620 = call i64 @f30(i64* %r2611) ; @cdr
store i64 %r2620, i64* %r2610
%r2625 = alloca i8*
call void @llvm.gcroot(i8** %r2625, i8* null)
%r2623 = bitcast i8** %r2625 to i64*
%r2624 = add i64 0, 4
store i64 %r2624, i64* %r2623
%r2622 = call i64 @f13(i64* %r2594, i64* %r2623, i64* %r2610) ; @vector-set!
%r2630 = alloca i8*
call void @llvm.gcroot(i8** %r2630, i8* null)
%r2627 = bitcast i8** %r2630 to i64*
%r2633 = alloca i8*
call void @llvm.gcroot(i8** %r2633, i8* null)
%r2631 = bitcast i8** %r2633 to i64*
%r2632 = add i64 0, 0
store i64 %r2632, i64* %r2631
%r2636 = alloca i8*
call void @llvm.gcroot(i8** %r2636, i8* null)
%r2634 = bitcast i8** %r2636 to i64*
%r2635 = add i64 0, 8
store i64 %r2635, i64* %r2634
%r2629 = call i64 @f36(i64* %env, i64* %r2631, i64* %r2634) ; @lookup-variable
store i64 %r2629, i64* %r2627
%r2638 = alloca i8*
call void @llvm.gcroot(i8** %r2638, i8* null)
%r2628 = bitcast i8** %r2638 to i64*
%r2637 = add i64 0, 4
store i64 %r2637, i64* %r2628
%r2640 = alloca i8*
call void @llvm.gcroot(i8** %r2640, i8* null)
%r2626 = bitcast i8** %r2640 to i64*
%r2639 = call i64 @f22(i64* %r2627, i64* %r2628) ; @-
store i64 %r2639, i64* %r2626
%r2644 = alloca i8*
call void @llvm.gcroot(i8** %r2644, i8* null)
%r2642 = bitcast i8** %r2644 to i64*
%r2643 = add i64 0, 8
store i64 %r2643, i64* %r2642
%r2641 = call i64 @f13(i64* %r2594, i64* %r2642, i64* %r2626) ; @vector-set!
%r2646 = alloca i8*
call void @llvm.gcroot(i8** %r2646, i8* null)
%r2593 = bitcast i8** %r2646 to i64*
%r2645 = call i64 @f19(i64* %r2591) ; @get-procedure-nparams
store i64 %r2645, i64* %r2593
%r2647 = call i64 @f23(i64* %r2593, i64* %r2594) ; @fix-arbitrary-procs
%r2649 = bitcast [20 x i8]* @g2648 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r2649, i32 1, i64* %r2594)
%r2651 = alloca i8*
call void @llvm.gcroot(i8** %r2651, i8* null)
%r2543 = bitcast i8** %r2651 to i64*
%r2650 = call i64 @apply-procedure(i64* %r2591, i64* %r2594) ; @apply-procedure
store i64 %r2650, i64* %r2543
br label %label99
label99:
br label %label96
label96:
%r2652 = load i64* %r2543
ret i64 %r2652
}

; @f66
define i64 @f67(i64* %env) gc "shadow-stack" {
%r2671 = alloca i8*
call void @llvm.gcroot(i8** %r2671, i8* null)
%r2668 = bitcast i8** %r2671 to i64*
%r2674 = alloca i8*
call void @llvm.gcroot(i8** %r2674, i8* null)
%r2672 = bitcast i8** %r2674 to i64*
%r2677 = alloca i8*
call void @llvm.gcroot(i8** %r2677, i8* null)
%r2675 = bitcast i8** %r2677 to i64*
%r2676 = add i64 0, 0
store i64 %r2676, i64* %r2675
%r2680 = alloca i8*
call void @llvm.gcroot(i8** %r2680, i8* null)
%r2678 = bitcast i8** %r2680 to i64*
%r2679 = add i64 0, 8
store i64 %r2679, i64* %r2678
%r2673 = call i64 @f36(i64* %env, i64* %r2675, i64* %r2678) ; @lookup-variable
store i64 %r2673, i64* %r2672
%r2682 = alloca i8*
call void @llvm.gcroot(i8** %r2682, i8* null)
%r2670 = bitcast i8** %r2682 to i64*
%r2681 = call i64 @null(i64* %r2672) ; @null?
store i64 %r2681, i64* %r2670
%r2683 = call i64 @f2(i64* %r2670) ; @raw-number
%r2684 = trunc i64 %r2683 to i1
br i1 %r2684, label %label100, label %label101
label100:
%r2686 = alloca i8*
call void @llvm.gcroot(i8** %r2686, i8* null)
%r2668 = bitcast i8** %r2686 to i64*
%r2685 = call i64 @make-null() ; @make-null
store i64 %r2685, i64* %r2668
br label %label102
label101:
%r2694 = alloca i8*
call void @llvm.gcroot(i8** %r2694, i8* null)
%r2689 = bitcast i8** %r2694 to i64*
%r2697 = alloca i8*
call void @llvm.gcroot(i8** %r2697, i8* null)
%r2695 = bitcast i8** %r2697 to i64*
%r2696 = add i64 0, 0
store i64 %r2696, i64* %r2695
%r2700 = alloca i8*
call void @llvm.gcroot(i8** %r2700, i8* null)
%r2698 = bitcast i8** %r2700 to i64*
%r2699 = add i64 0, 4
store i64 %r2699, i64* %r2698
%r2693 = call i64 @f36(i64* %env, i64* %r2695, i64* %r2698) ; @lookup-variable
store i64 %r2693, i64* %r2689
%r2702 = alloca i8*
call void @llvm.gcroot(i8** %r2702, i8* null)
%r2690 = bitcast i8** %r2702 to i64*
%r2701 = call i64 @f18(i64* %r2689) ; @get-procedure-env
store i64 %r2701, i64* %r2690
%r2704 = alloca i8*
call void @llvm.gcroot(i8** %r2704, i8* null)
%r2692 = bitcast i8** %r2704 to i64*
%r2707 = alloca i8*
call void @llvm.gcroot(i8** %r2707, i8* null)
%r2705 = bitcast i8** %r2707 to i64*
%r2706 = add i64 0, 4
store i64 %r2706, i64* %r2705
%r2703 = call i64 @f17(i64* %r2705, i64* %r2690) ; @make-env
store i64 %r2703, i64* %r2692
%r2711 = alloca i8*
call void @llvm.gcroot(i8** %r2711, i8* null)
%r2709 = bitcast i8** %r2711 to i64*
%r2714 = alloca i8*
call void @llvm.gcroot(i8** %r2714, i8* null)
%r2712 = bitcast i8** %r2714 to i64*
%r2713 = add i64 0, 0
store i64 %r2713, i64* %r2712
%r2717 = alloca i8*
call void @llvm.gcroot(i8** %r2717, i8* null)
%r2715 = bitcast i8** %r2717 to i64*
%r2716 = add i64 0, 8
store i64 %r2716, i64* %r2715
%r2710 = call i64 @f36(i64* %env, i64* %r2712, i64* %r2715) ; @lookup-variable
store i64 %r2710, i64* %r2709
%r2719 = alloca i8*
call void @llvm.gcroot(i8** %r2719, i8* null)
%r2708 = bitcast i8** %r2719 to i64*
%r2718 = call i64 @f29(i64* %r2709) ; @car
store i64 %r2718, i64* %r2708
%r2723 = alloca i8*
call void @llvm.gcroot(i8** %r2723, i8* null)
%r2721 = bitcast i8** %r2723 to i64*
%r2722 = add i64 0, 4
store i64 %r2722, i64* %r2721
%r2720 = call i64 @f13(i64* %r2692, i64* %r2721, i64* %r2708) ; @vector-set!
%r2725 = alloca i8*
call void @llvm.gcroot(i8** %r2725, i8* null)
%r2691 = bitcast i8** %r2725 to i64*
%r2724 = call i64 @f19(i64* %r2689) ; @get-procedure-nparams
store i64 %r2724, i64* %r2691
%r2726 = call i64 @f23(i64* %r2691, i64* %r2692) ; @fix-arbitrary-procs
%r2728 = bitcast [20 x i8]* @g2727 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r2728, i32 1, i64* %r2692)
%r2730 = alloca i8*
call void @llvm.gcroot(i8** %r2730, i8* null)
%r2687 = bitcast i8** %r2730 to i64*
%r2729 = call i64 @apply-procedure(i64* %r2689, i64* %r2692) ; @apply-procedure
store i64 %r2729, i64* %r2687
%r2736 = alloca i8*
call void @llvm.gcroot(i8** %r2736, i8* null)
%r2731 = bitcast i8** %r2736 to i64*
%r2739 = alloca i8*
call void @llvm.gcroot(i8** %r2739, i8* null)
%r2737 = bitcast i8** %r2739 to i64*
%r2738 = add i64 0, 4
store i64 %r2738, i64* %r2737
%r2742 = alloca i8*
call void @llvm.gcroot(i8** %r2742, i8* null)
%r2740 = bitcast i8** %r2742 to i64*
%r2741 = add i64 0, 32
store i64 %r2741, i64* %r2740
%r2735 = call i64 @f36(i64* %env, i64* %r2737, i64* %r2740) ; @lookup-variable
store i64 %r2735, i64* %r2731
%r2744 = alloca i8*
call void @llvm.gcroot(i8** %r2744, i8* null)
%r2732 = bitcast i8** %r2744 to i64*
%r2743 = call i64 @f18(i64* %r2731) ; @get-procedure-env
store i64 %r2743, i64* %r2732
%r2746 = alloca i8*
call void @llvm.gcroot(i8** %r2746, i8* null)
%r2734 = bitcast i8** %r2746 to i64*
%r2749 = alloca i8*
call void @llvm.gcroot(i8** %r2749, i8* null)
%r2747 = bitcast i8** %r2749 to i64*
%r2748 = add i64 0, 8
store i64 %r2748, i64* %r2747
%r2745 = call i64 @f17(i64* %r2747, i64* %r2732) ; @make-env
store i64 %r2745, i64* %r2734
%r2752 = alloca i8*
call void @llvm.gcroot(i8** %r2752, i8* null)
%r2750 = bitcast i8** %r2752 to i64*
%r2755 = alloca i8*
call void @llvm.gcroot(i8** %r2755, i8* null)
%r2753 = bitcast i8** %r2755 to i64*
%r2754 = add i64 0, 0
store i64 %r2754, i64* %r2753
%r2758 = alloca i8*
call void @llvm.gcroot(i8** %r2758, i8* null)
%r2756 = bitcast i8** %r2758 to i64*
%r2757 = add i64 0, 4
store i64 %r2757, i64* %r2756
%r2751 = call i64 @f36(i64* %env, i64* %r2753, i64* %r2756) ; @lookup-variable
store i64 %r2751, i64* %r2750
%r2762 = alloca i8*
call void @llvm.gcroot(i8** %r2762, i8* null)
%r2760 = bitcast i8** %r2762 to i64*
%r2761 = add i64 0, 4
store i64 %r2761, i64* %r2760
%r2759 = call i64 @f13(i64* %r2734, i64* %r2760, i64* %r2750) ; @vector-set!
%r2766 = alloca i8*
call void @llvm.gcroot(i8** %r2766, i8* null)
%r2764 = bitcast i8** %r2766 to i64*
%r2769 = alloca i8*
call void @llvm.gcroot(i8** %r2769, i8* null)
%r2767 = bitcast i8** %r2769 to i64*
%r2768 = add i64 0, 0
store i64 %r2768, i64* %r2767
%r2772 = alloca i8*
call void @llvm.gcroot(i8** %r2772, i8* null)
%r2770 = bitcast i8** %r2772 to i64*
%r2771 = add i64 0, 8
store i64 %r2771, i64* %r2770
%r2765 = call i64 @f36(i64* %env, i64* %r2767, i64* %r2770) ; @lookup-variable
store i64 %r2765, i64* %r2764
%r2774 = alloca i8*
call void @llvm.gcroot(i8** %r2774, i8* null)
%r2763 = bitcast i8** %r2774 to i64*
%r2773 = call i64 @f30(i64* %r2764) ; @cdr
store i64 %r2773, i64* %r2763
%r2778 = alloca i8*
call void @llvm.gcroot(i8** %r2778, i8* null)
%r2776 = bitcast i8** %r2778 to i64*
%r2777 = add i64 0, 8
store i64 %r2777, i64* %r2776
%r2775 = call i64 @f13(i64* %r2734, i64* %r2776, i64* %r2763) ; @vector-set!
%r2780 = alloca i8*
call void @llvm.gcroot(i8** %r2780, i8* null)
%r2733 = bitcast i8** %r2780 to i64*
%r2779 = call i64 @f19(i64* %r2731) ; @get-procedure-nparams
store i64 %r2779, i64* %r2733
%r2781 = call i64 @f23(i64* %r2733, i64* %r2734) ; @fix-arbitrary-procs
%r2783 = bitcast [20 x i8]* @g2782 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r2783, i32 1, i64* %r2734)
%r2785 = alloca i8*
call void @llvm.gcroot(i8** %r2785, i8* null)
%r2688 = bitcast i8** %r2785 to i64*
%r2784 = call i64 @apply-procedure(i64* %r2731, i64* %r2734) ; @apply-procedure
store i64 %r2784, i64* %r2688
%r2787 = alloca i8*
call void @llvm.gcroot(i8** %r2787, i8* null)
%r2668 = bitcast i8** %r2787 to i64*
%r2786 = call i64 @f21(i64* %r2687, i64* %r2688) ; @cons
store i64 %r2786, i64* %r2668
br label %label102
label102:
%r2788 = load i64* %r2668
ret i64 %r2788
}

; @f70
define i64 @f71(i64* %env) gc "shadow-stack" {
%r2813 = alloca i8*
call void @llvm.gcroot(i8** %r2813, i8* null)
%r2810 = bitcast i8** %r2813 to i64*
%r2816 = alloca i8*
call void @llvm.gcroot(i8** %r2816, i8* null)
%r2814 = bitcast i8** %r2816 to i64*
%r2819 = alloca i8*
call void @llvm.gcroot(i8** %r2819, i8* null)
%r2817 = bitcast i8** %r2819 to i64*
%r2818 = add i64 0, 0
store i64 %r2818, i64* %r2817
%r2822 = alloca i8*
call void @llvm.gcroot(i8** %r2822, i8* null)
%r2820 = bitcast i8** %r2822 to i64*
%r2821 = add i64 0, 4
store i64 %r2821, i64* %r2820
%r2815 = call i64 @f36(i64* %env, i64* %r2817, i64* %r2820) ; @lookup-variable
store i64 %r2815, i64* %r2814
%r2824 = alloca i8*
call void @llvm.gcroot(i8** %r2824, i8* null)
%r2812 = bitcast i8** %r2824 to i64*
%r2823 = call i64 @null(i64* %r2814) ; @null?
store i64 %r2823, i64* %r2812
%r2825 = call i64 @f2(i64* %r2812) ; @raw-number
%r2826 = trunc i64 %r2825 to i1
br i1 %r2826, label %label103, label %label104
label103:
%r2828 = alloca i8*
call void @llvm.gcroot(i8** %r2828, i8* null)
%r2810 = bitcast i8** %r2828 to i64*
%r2831 = alloca i8*
call void @llvm.gcroot(i8** %r2831, i8* null)
%r2829 = bitcast i8** %r2831 to i64*
%r2830 = add i64 0, 0
store i64 %r2830, i64* %r2829
%r2834 = alloca i8*
call void @llvm.gcroot(i8** %r2834, i8* null)
%r2832 = bitcast i8** %r2834 to i64*
%r2833 = add i64 0, 8
store i64 %r2833, i64* %r2832
%r2827 = call i64 @f36(i64* %env, i64* %r2829, i64* %r2832) ; @lookup-variable
store i64 %r2827, i64* %r2810
br label %label105
label104:
%r2839 = alloca i8*
call void @llvm.gcroot(i8** %r2839, i8* null)
%r2837 = bitcast i8** %r2839 to i64*
%r2842 = alloca i8*
call void @llvm.gcroot(i8** %r2842, i8* null)
%r2840 = bitcast i8** %r2842 to i64*
%r2841 = add i64 0, 0
store i64 %r2841, i64* %r2840
%r2845 = alloca i8*
call void @llvm.gcroot(i8** %r2845, i8* null)
%r2843 = bitcast i8** %r2845 to i64*
%r2844 = add i64 0, 4
store i64 %r2844, i64* %r2843
%r2838 = call i64 @f36(i64* %env, i64* %r2840, i64* %r2843) ; @lookup-variable
store i64 %r2838, i64* %r2837
%r2847 = alloca i8*
call void @llvm.gcroot(i8** %r2847, i8* null)
%r2835 = bitcast i8** %r2847 to i64*
%r2846 = call i64 @f29(i64* %r2837) ; @car
store i64 %r2846, i64* %r2835
%r2853 = alloca i8*
call void @llvm.gcroot(i8** %r2853, i8* null)
%r2848 = bitcast i8** %r2853 to i64*
%r2856 = alloca i8*
call void @llvm.gcroot(i8** %r2856, i8* null)
%r2854 = bitcast i8** %r2856 to i64*
%r2855 = add i64 0, 4
store i64 %r2855, i64* %r2854
%r2859 = alloca i8*
call void @llvm.gcroot(i8** %r2859, i8* null)
%r2857 = bitcast i8** %r2859 to i64*
%r2858 = add i64 0, 4
store i64 %r2858, i64* %r2857
%r2852 = call i64 @f36(i64* %env, i64* %r2854, i64* %r2857) ; @lookup-variable
store i64 %r2852, i64* %r2848
%r2861 = alloca i8*
call void @llvm.gcroot(i8** %r2861, i8* null)
%r2849 = bitcast i8** %r2861 to i64*
%r2860 = call i64 @f18(i64* %r2848) ; @get-procedure-env
store i64 %r2860, i64* %r2849
%r2863 = alloca i8*
call void @llvm.gcroot(i8** %r2863, i8* null)
%r2851 = bitcast i8** %r2863 to i64*
%r2866 = alloca i8*
call void @llvm.gcroot(i8** %r2866, i8* null)
%r2864 = bitcast i8** %r2866 to i64*
%r2865 = add i64 0, 8
store i64 %r2865, i64* %r2864
%r2862 = call i64 @f17(i64* %r2864, i64* %r2849) ; @make-env
store i64 %r2862, i64* %r2851
%r2870 = alloca i8*
call void @llvm.gcroot(i8** %r2870, i8* null)
%r2868 = bitcast i8** %r2870 to i64*
%r2873 = alloca i8*
call void @llvm.gcroot(i8** %r2873, i8* null)
%r2871 = bitcast i8** %r2873 to i64*
%r2872 = add i64 0, 0
store i64 %r2872, i64* %r2871
%r2876 = alloca i8*
call void @llvm.gcroot(i8** %r2876, i8* null)
%r2874 = bitcast i8** %r2876 to i64*
%r2875 = add i64 0, 4
store i64 %r2875, i64* %r2874
%r2869 = call i64 @f36(i64* %env, i64* %r2871, i64* %r2874) ; @lookup-variable
store i64 %r2869, i64* %r2868
%r2878 = alloca i8*
call void @llvm.gcroot(i8** %r2878, i8* null)
%r2867 = bitcast i8** %r2878 to i64*
%r2877 = call i64 @f30(i64* %r2868) ; @cdr
store i64 %r2877, i64* %r2867
%r2882 = alloca i8*
call void @llvm.gcroot(i8** %r2882, i8* null)
%r2880 = bitcast i8** %r2882 to i64*
%r2881 = add i64 0, 4
store i64 %r2881, i64* %r2880
%r2879 = call i64 @f13(i64* %r2851, i64* %r2880, i64* %r2867) ; @vector-set!
%r2885 = alloca i8*
call void @llvm.gcroot(i8** %r2885, i8* null)
%r2883 = bitcast i8** %r2885 to i64*
%r2888 = alloca i8*
call void @llvm.gcroot(i8** %r2888, i8* null)
%r2886 = bitcast i8** %r2888 to i64*
%r2887 = add i64 0, 0
store i64 %r2887, i64* %r2886
%r2891 = alloca i8*
call void @llvm.gcroot(i8** %r2891, i8* null)
%r2889 = bitcast i8** %r2891 to i64*
%r2890 = add i64 0, 8
store i64 %r2890, i64* %r2889
%r2884 = call i64 @f36(i64* %env, i64* %r2886, i64* %r2889) ; @lookup-variable
store i64 %r2884, i64* %r2883
%r2895 = alloca i8*
call void @llvm.gcroot(i8** %r2895, i8* null)
%r2893 = bitcast i8** %r2895 to i64*
%r2894 = add i64 0, 8
store i64 %r2894, i64* %r2893
%r2892 = call i64 @f13(i64* %r2851, i64* %r2893, i64* %r2883) ; @vector-set!
%r2897 = alloca i8*
call void @llvm.gcroot(i8** %r2897, i8* null)
%r2850 = bitcast i8** %r2897 to i64*
%r2896 = call i64 @f19(i64* %r2848) ; @get-procedure-nparams
store i64 %r2896, i64* %r2850
%r2898 = call i64 @f23(i64* %r2850, i64* %r2851) ; @fix-arbitrary-procs
%r2900 = bitcast [20 x i8]* @g2899 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r2900, i32 1, i64* %r2851)
%r2902 = alloca i8*
call void @llvm.gcroot(i8** %r2902, i8* null)
%r2836 = bitcast i8** %r2902 to i64*
%r2901 = call i64 @apply-procedure(i64* %r2848, i64* %r2851) ; @apply-procedure
store i64 %r2901, i64* %r2836
%r2904 = alloca i8*
call void @llvm.gcroot(i8** %r2904, i8* null)
%r2810 = bitcast i8** %r2904 to i64*
%r2903 = call i64 @f21(i64* %r2835, i64* %r2836) ; @cons
store i64 %r2903, i64* %r2810
br label %label105
label105:
%r2905 = load i64* %r2810
ret i64 %r2905
}

; @f72
define i64 @f73(i64* %env) gc "shadow-stack" {
%r2924 = alloca i8*
call void @llvm.gcroot(i8** %r2924, i8* null)
%r2921 = bitcast i8** %r2924 to i64*
%r2927 = alloca i8*
call void @llvm.gcroot(i8** %r2927, i8* null)
%r2925 = bitcast i8** %r2927 to i64*
%r2930 = alloca i8*
call void @llvm.gcroot(i8** %r2930, i8* null)
%r2928 = bitcast i8** %r2930 to i64*
%r2929 = add i64 0, 0
store i64 %r2929, i64* %r2928
%r2933 = alloca i8*
call void @llvm.gcroot(i8** %r2933, i8* null)
%r2931 = bitcast i8** %r2933 to i64*
%r2932 = add i64 0, 12
store i64 %r2932, i64* %r2931
%r2926 = call i64 @f36(i64* %env, i64* %r2928, i64* %r2931) ; @lookup-variable
store i64 %r2926, i64* %r2925
%r2935 = alloca i8*
call void @llvm.gcroot(i8** %r2935, i8* null)
%r2923 = bitcast i8** %r2935 to i64*
%r2934 = call i64 @null(i64* %r2925) ; @null?
store i64 %r2934, i64* %r2923
%r2936 = call i64 @f2(i64* %r2923) ; @raw-number
%r2937 = trunc i64 %r2936 to i1
br i1 %r2937, label %label106, label %label107
label106:
%r2943 = alloca i8*
call void @llvm.gcroot(i8** %r2943, i8* null)
%r2938 = bitcast i8** %r2943 to i64*
%r2946 = alloca i8*
call void @llvm.gcroot(i8** %r2946, i8* null)
%r2944 = bitcast i8** %r2946 to i64*
%r2945 = add i64 0, 4
store i64 %r2945, i64* %r2944
%r2949 = alloca i8*
call void @llvm.gcroot(i8** %r2949, i8* null)
%r2947 = bitcast i8** %r2949 to i64*
%r2948 = add i64 0, 4
store i64 %r2948, i64* %r2947
%r2942 = call i64 @f36(i64* %env, i64* %r2944, i64* %r2947) ; @lookup-variable
store i64 %r2942, i64* %r2938
%r2951 = alloca i8*
call void @llvm.gcroot(i8** %r2951, i8* null)
%r2939 = bitcast i8** %r2951 to i64*
%r2950 = call i64 @f18(i64* %r2938) ; @get-procedure-env
store i64 %r2950, i64* %r2939
%r2953 = alloca i8*
call void @llvm.gcroot(i8** %r2953, i8* null)
%r2941 = bitcast i8** %r2953 to i64*
%r2956 = alloca i8*
call void @llvm.gcroot(i8** %r2956, i8* null)
%r2954 = bitcast i8** %r2956 to i64*
%r2955 = add i64 0, 8
store i64 %r2955, i64* %r2954
%r2952 = call i64 @f17(i64* %r2954, i64* %r2939) ; @make-env
store i64 %r2952, i64* %r2941
%r2959 = alloca i8*
call void @llvm.gcroot(i8** %r2959, i8* null)
%r2957 = bitcast i8** %r2959 to i64*
%r2962 = alloca i8*
call void @llvm.gcroot(i8** %r2962, i8* null)
%r2960 = bitcast i8** %r2962 to i64*
%r2961 = add i64 0, 0
store i64 %r2961, i64* %r2960
%r2965 = alloca i8*
call void @llvm.gcroot(i8** %r2965, i8* null)
%r2963 = bitcast i8** %r2965 to i64*
%r2964 = add i64 0, 4
store i64 %r2964, i64* %r2963
%r2958 = call i64 @f36(i64* %env, i64* %r2960, i64* %r2963) ; @lookup-variable
store i64 %r2958, i64* %r2957
%r2969 = alloca i8*
call void @llvm.gcroot(i8** %r2969, i8* null)
%r2967 = bitcast i8** %r2969 to i64*
%r2968 = add i64 0, 4
store i64 %r2968, i64* %r2967
%r2966 = call i64 @f13(i64* %r2941, i64* %r2967, i64* %r2957) ; @vector-set!
%r2972 = alloca i8*
call void @llvm.gcroot(i8** %r2972, i8* null)
%r2970 = bitcast i8** %r2972 to i64*
%r2975 = alloca i8*
call void @llvm.gcroot(i8** %r2975, i8* null)
%r2973 = bitcast i8** %r2975 to i64*
%r2974 = add i64 0, 0
store i64 %r2974, i64* %r2973
%r2978 = alloca i8*
call void @llvm.gcroot(i8** %r2978, i8* null)
%r2976 = bitcast i8** %r2978 to i64*
%r2977 = add i64 0, 8
store i64 %r2977, i64* %r2976
%r2971 = call i64 @f36(i64* %env, i64* %r2973, i64* %r2976) ; @lookup-variable
store i64 %r2971, i64* %r2970
%r2982 = alloca i8*
call void @llvm.gcroot(i8** %r2982, i8* null)
%r2980 = bitcast i8** %r2982 to i64*
%r2981 = add i64 0, 8
store i64 %r2981, i64* %r2980
%r2979 = call i64 @f13(i64* %r2941, i64* %r2980, i64* %r2970) ; @vector-set!
%r2984 = alloca i8*
call void @llvm.gcroot(i8** %r2984, i8* null)
%r2940 = bitcast i8** %r2984 to i64*
%r2983 = call i64 @f19(i64* %r2938) ; @get-procedure-nparams
store i64 %r2983, i64* %r2940
%r2985 = call i64 @f23(i64* %r2940, i64* %r2941) ; @fix-arbitrary-procs
%r2987 = bitcast [20 x i8]* @g2986 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r2987, i32 1, i64* %r2941)
%r2989 = alloca i8*
call void @llvm.gcroot(i8** %r2989, i8* null)
%r2921 = bitcast i8** %r2989 to i64*
%r2988 = call i64 @apply-procedure(i64* %r2938, i64* %r2941) ; @apply-procedure
store i64 %r2988, i64* %r2921
br label %label108
label107:
%r2995 = alloca i8*
call void @llvm.gcroot(i8** %r2995, i8* null)
%r2990 = bitcast i8** %r2995 to i64*
%r2998 = alloca i8*
call void @llvm.gcroot(i8** %r2998, i8* null)
%r2996 = bitcast i8** %r2998 to i64*
%r2997 = add i64 0, 4
store i64 %r2997, i64* %r2996
%r3001 = alloca i8*
call void @llvm.gcroot(i8** %r3001, i8* null)
%r2999 = bitcast i8** %r3001 to i64*
%r3000 = add i64 0, 8
store i64 %r3000, i64* %r2999
%r2994 = call i64 @f36(i64* %env, i64* %r2996, i64* %r2999) ; @lookup-variable
store i64 %r2994, i64* %r2990
%r3003 = alloca i8*
call void @llvm.gcroot(i8** %r3003, i8* null)
%r2991 = bitcast i8** %r3003 to i64*
%r3002 = call i64 @f18(i64* %r2990) ; @get-procedure-env
store i64 %r3002, i64* %r2991
%r3005 = alloca i8*
call void @llvm.gcroot(i8** %r3005, i8* null)
%r2993 = bitcast i8** %r3005 to i64*
%r3008 = alloca i8*
call void @llvm.gcroot(i8** %r3008, i8* null)
%r3006 = bitcast i8** %r3008 to i64*
%r3007 = add i64 0, 12
store i64 %r3007, i64* %r3006
%r3004 = call i64 @f17(i64* %r3006, i64* %r2991) ; @make-env
store i64 %r3004, i64* %r2993
%r3015 = alloca i8*
call void @llvm.gcroot(i8** %r3015, i8* null)
%r3010 = bitcast i8** %r3015 to i64*
%r3018 = alloca i8*
call void @llvm.gcroot(i8** %r3018, i8* null)
%r3016 = bitcast i8** %r3018 to i64*
%r3017 = add i64 0, 4
store i64 %r3017, i64* %r3016
%r3021 = alloca i8*
call void @llvm.gcroot(i8** %r3021, i8* null)
%r3019 = bitcast i8** %r3021 to i64*
%r3020 = add i64 0, 4
store i64 %r3020, i64* %r3019
%r3014 = call i64 @f36(i64* %env, i64* %r3016, i64* %r3019) ; @lookup-variable
store i64 %r3014, i64* %r3010
%r3023 = alloca i8*
call void @llvm.gcroot(i8** %r3023, i8* null)
%r3011 = bitcast i8** %r3023 to i64*
%r3022 = call i64 @f18(i64* %r3010) ; @get-procedure-env
store i64 %r3022, i64* %r3011
%r3025 = alloca i8*
call void @llvm.gcroot(i8** %r3025, i8* null)
%r3013 = bitcast i8** %r3025 to i64*
%r3028 = alloca i8*
call void @llvm.gcroot(i8** %r3028, i8* null)
%r3026 = bitcast i8** %r3028 to i64*
%r3027 = add i64 0, 8
store i64 %r3027, i64* %r3026
%r3024 = call i64 @f17(i64* %r3026, i64* %r3011) ; @make-env
store i64 %r3024, i64* %r3013
%r3031 = alloca i8*
call void @llvm.gcroot(i8** %r3031, i8* null)
%r3029 = bitcast i8** %r3031 to i64*
%r3034 = alloca i8*
call void @llvm.gcroot(i8** %r3034, i8* null)
%r3032 = bitcast i8** %r3034 to i64*
%r3033 = add i64 0, 0
store i64 %r3033, i64* %r3032
%r3037 = alloca i8*
call void @llvm.gcroot(i8** %r3037, i8* null)
%r3035 = bitcast i8** %r3037 to i64*
%r3036 = add i64 0, 4
store i64 %r3036, i64* %r3035
%r3030 = call i64 @f36(i64* %env, i64* %r3032, i64* %r3035) ; @lookup-variable
store i64 %r3030, i64* %r3029
%r3041 = alloca i8*
call void @llvm.gcroot(i8** %r3041, i8* null)
%r3039 = bitcast i8** %r3041 to i64*
%r3040 = add i64 0, 4
store i64 %r3040, i64* %r3039
%r3038 = call i64 @f13(i64* %r3013, i64* %r3039, i64* %r3029) ; @vector-set!
%r3044 = alloca i8*
call void @llvm.gcroot(i8** %r3044, i8* null)
%r3042 = bitcast i8** %r3044 to i64*
%r3047 = alloca i8*
call void @llvm.gcroot(i8** %r3047, i8* null)
%r3045 = bitcast i8** %r3047 to i64*
%r3046 = add i64 0, 0
store i64 %r3046, i64* %r3045
%r3050 = alloca i8*
call void @llvm.gcroot(i8** %r3050, i8* null)
%r3048 = bitcast i8** %r3050 to i64*
%r3049 = add i64 0, 8
store i64 %r3049, i64* %r3048
%r3043 = call i64 @f36(i64* %env, i64* %r3045, i64* %r3048) ; @lookup-variable
store i64 %r3043, i64* %r3042
%r3054 = alloca i8*
call void @llvm.gcroot(i8** %r3054, i8* null)
%r3052 = bitcast i8** %r3054 to i64*
%r3053 = add i64 0, 8
store i64 %r3053, i64* %r3052
%r3051 = call i64 @f13(i64* %r3013, i64* %r3052, i64* %r3042) ; @vector-set!
%r3056 = alloca i8*
call void @llvm.gcroot(i8** %r3056, i8* null)
%r3012 = bitcast i8** %r3056 to i64*
%r3055 = call i64 @f19(i64* %r3010) ; @get-procedure-nparams
store i64 %r3055, i64* %r3012
%r3057 = call i64 @f23(i64* %r3012, i64* %r3013) ; @fix-arbitrary-procs
%r3059 = bitcast [20 x i8]* @g3058 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r3059, i32 1, i64* %r3013)
%r3061 = alloca i8*
call void @llvm.gcroot(i8** %r3061, i8* null)
%r3009 = bitcast i8** %r3061 to i64*
%r3060 = call i64 @apply-procedure(i64* %r3010, i64* %r3013) ; @apply-procedure
store i64 %r3060, i64* %r3009
%r3065 = alloca i8*
call void @llvm.gcroot(i8** %r3065, i8* null)
%r3063 = bitcast i8** %r3065 to i64*
%r3064 = add i64 0, 4
store i64 %r3064, i64* %r3063
%r3062 = call i64 @f13(i64* %r2993, i64* %r3063, i64* %r3009) ; @vector-set!
%r3069 = alloca i8*
call void @llvm.gcroot(i8** %r3069, i8* null)
%r3067 = bitcast i8** %r3069 to i64*
%r3072 = alloca i8*
call void @llvm.gcroot(i8** %r3072, i8* null)
%r3070 = bitcast i8** %r3072 to i64*
%r3071 = add i64 0, 0
store i64 %r3071, i64* %r3070
%r3075 = alloca i8*
call void @llvm.gcroot(i8** %r3075, i8* null)
%r3073 = bitcast i8** %r3075 to i64*
%r3074 = add i64 0, 12
store i64 %r3074, i64* %r3073
%r3068 = call i64 @f36(i64* %env, i64* %r3070, i64* %r3073) ; @lookup-variable
store i64 %r3068, i64* %r3067
%r3077 = alloca i8*
call void @llvm.gcroot(i8** %r3077, i8* null)
%r3066 = bitcast i8** %r3077 to i64*
%r3076 = call i64 @f29(i64* %r3067) ; @car
store i64 %r3076, i64* %r3066
%r3081 = alloca i8*
call void @llvm.gcroot(i8** %r3081, i8* null)
%r3079 = bitcast i8** %r3081 to i64*
%r3080 = add i64 0, 8
store i64 %r3080, i64* %r3079
%r3078 = call i64 @f13(i64* %r2993, i64* %r3079, i64* %r3066) ; @vector-set!
%r3085 = alloca i8*
call void @llvm.gcroot(i8** %r3085, i8* null)
%r3083 = bitcast i8** %r3085 to i64*
%r3088 = alloca i8*
call void @llvm.gcroot(i8** %r3088, i8* null)
%r3086 = bitcast i8** %r3088 to i64*
%r3087 = add i64 0, 0
store i64 %r3087, i64* %r3086
%r3091 = alloca i8*
call void @llvm.gcroot(i8** %r3091, i8* null)
%r3089 = bitcast i8** %r3091 to i64*
%r3090 = add i64 0, 12
store i64 %r3090, i64* %r3089
%r3084 = call i64 @f36(i64* %env, i64* %r3086, i64* %r3089) ; @lookup-variable
store i64 %r3084, i64* %r3083
%r3093 = alloca i8*
call void @llvm.gcroot(i8** %r3093, i8* null)
%r3082 = bitcast i8** %r3093 to i64*
%r3092 = call i64 @f30(i64* %r3083) ; @cdr
store i64 %r3092, i64* %r3082
%r3097 = alloca i8*
call void @llvm.gcroot(i8** %r3097, i8* null)
%r3095 = bitcast i8** %r3097 to i64*
%r3096 = add i64 0, 12
store i64 %r3096, i64* %r3095
%r3094 = call i64 @f13(i64* %r2993, i64* %r3095, i64* %r3082) ; @vector-set!
%r3099 = alloca i8*
call void @llvm.gcroot(i8** %r3099, i8* null)
%r2992 = bitcast i8** %r3099 to i64*
%r3098 = call i64 @f19(i64* %r2990) ; @get-procedure-nparams
store i64 %r3098, i64* %r2992
%r3100 = call i64 @f23(i64* %r2992, i64* %r2993) ; @fix-arbitrary-procs
%r3102 = bitcast [20 x i8]* @g3101 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r3102, i32 1, i64* %r2993)
%r3104 = alloca i8*
call void @llvm.gcroot(i8** %r3104, i8* null)
%r2921 = bitcast i8** %r3104 to i64*
%r3103 = call i64 @apply-procedure(i64* %r2990, i64* %r2993) ; @apply-procedure
store i64 %r3103, i64* %r2921
br label %label108
label108:
%r3105 = load i64* %r2921
ret i64 %r3105
}

; @f69
define i64 @f74(i64* %env) gc "shadow-stack" {
%r2907 = alloca i8*
call void @llvm.gcroot(i8** %r2907, i8* null)
%r2809 = bitcast i8** %r2907 to i64*
%r2910 = alloca i8*
call void @llvm.gcroot(i8** %r2910, i8* null)
%r2908 = bitcast i8** %r2910 to i64*
%r2909 = add i64 0, 0
store i64 %r2909, i64* %r2908
%r2906 = call i64 @make-procedure(i64 (i64*)* @f71, i64* %env, i64* %r2908)
store i64 %r2906, i64* %r2809
%r2912 = alloca i8*
call void @llvm.gcroot(i8** %r2912, i8* null)
%r2808 = bitcast i8** %r2912 to i64*
%r2915 = alloca i8*
call void @llvm.gcroot(i8** %r2915, i8* null)
%r2913 = bitcast i8** %r2915 to i64*
%r2914 = add i64 0, 0
store i64 %r2914, i64* %r2913
%r2918 = alloca i8*
call void @llvm.gcroot(i8** %r2918, i8* null)
%r2916 = bitcast i8** %r2918 to i64*
%r2917 = add i64 0, 4
store i64 %r2917, i64* %r2916
%r2911 = call i64 @f37(i64* %env, i64* %r2913, i64* %r2916, i64* %r2809) ; @set-variable!
store i64 %r2911, i64* %r2808
%r3107 = alloca i8*
call void @llvm.gcroot(i8** %r3107, i8* null)
%r2920 = bitcast i8** %r3107 to i64*
%r3110 = alloca i8*
call void @llvm.gcroot(i8** %r3110, i8* null)
%r3108 = bitcast i8** %r3110 to i64*
%r3109 = add i64 0, 0
store i64 %r3109, i64* %r3108
%r3106 = call i64 @make-procedure(i64 (i64*)* @f73, i64* %env, i64* %r3108)
store i64 %r3106, i64* %r2920
%r3112 = alloca i8*
call void @llvm.gcroot(i8** %r3112, i8* null)
%r2919 = bitcast i8** %r3112 to i64*
%r3115 = alloca i8*
call void @llvm.gcroot(i8** %r3115, i8* null)
%r3113 = bitcast i8** %r3115 to i64*
%r3114 = add i64 0, 0
store i64 %r3114, i64* %r3113
%r3118 = alloca i8*
call void @llvm.gcroot(i8** %r3118, i8* null)
%r3116 = bitcast i8** %r3118 to i64*
%r3117 = add i64 0, 8
store i64 %r3117, i64* %r3116
%r3111 = call i64 @f37(i64* %env, i64* %r3113, i64* %r3116, i64* %r2920) ; @set-variable!
store i64 %r3111, i64* %r2919
%r3120 = alloca i8*
call void @llvm.gcroot(i8** %r3120, i8* null)
%r2806 = bitcast i8** %r3120 to i64*
%r3123 = alloca i8*
call void @llvm.gcroot(i8** %r3123, i8* null)
%r3121 = bitcast i8** %r3123 to i64*
%r3126 = alloca i8*
call void @llvm.gcroot(i8** %r3126, i8* null)
%r3124 = bitcast i8** %r3126 to i64*
%r3125 = add i64 0, 4
store i64 %r3125, i64* %r3124
%r3129 = alloca i8*
call void @llvm.gcroot(i8** %r3129, i8* null)
%r3127 = bitcast i8** %r3129 to i64*
%r3128 = add i64 0, 4
store i64 %r3128, i64* %r3127
%r3122 = call i64 @f36(i64* %env, i64* %r3124, i64* %r3127) ; @lookup-variable
store i64 %r3122, i64* %r3121
%r3131 = alloca i8*
call void @llvm.gcroot(i8** %r3131, i8* null)
%r3119 = bitcast i8** %r3131 to i64*
%r3130 = call i64 @null(i64* %r3121) ; @null?
store i64 %r3130, i64* %r3119
%r3132 = call i64 @f2(i64* %r3119) ; @raw-number
%r3133 = trunc i64 %r3132 to i1
br i1 %r3133, label %label109, label %label110
label109:
%r3135 = alloca i8*
call void @llvm.gcroot(i8** %r3135, i8* null)
%r2806 = bitcast i8** %r3135 to i64*
%r3134 = call i64 @make-null() ; @make-null
store i64 %r3134, i64* %r2806
br label %label111
label110:
%r3137 = alloca i8*
call void @llvm.gcroot(i8** %r3137, i8* null)
%r2806 = bitcast i8** %r3137 to i64*
%r3141 = alloca i8*
call void @llvm.gcroot(i8** %r3141, i8* null)
%r3139 = bitcast i8** %r3141 to i64*
%r3144 = alloca i8*
call void @llvm.gcroot(i8** %r3144, i8* null)
%r3142 = bitcast i8** %r3144 to i64*
%r3143 = add i64 0, 4
store i64 %r3143, i64* %r3142
%r3147 = alloca i8*
call void @llvm.gcroot(i8** %r3147, i8* null)
%r3145 = bitcast i8** %r3147 to i64*
%r3146 = add i64 0, 4
store i64 %r3146, i64* %r3145
%r3140 = call i64 @f36(i64* %env, i64* %r3142, i64* %r3145) ; @lookup-variable
store i64 %r3140, i64* %r3139
%r3149 = alloca i8*
call void @llvm.gcroot(i8** %r3149, i8* null)
%r3138 = bitcast i8** %r3149 to i64*
%r3148 = call i64 @f30(i64* %r3139) ; @cdr
store i64 %r3148, i64* %r3138
%r3151 = alloca i8*
call void @llvm.gcroot(i8** %r3151, i8* null)
%r3136 = bitcast i8** %r3151 to i64*
%r3150 = call i64 @null(i64* %r3138) ; @null?
store i64 %r3150, i64* %r3136
%r3152 = call i64 @f2(i64* %r3136) ; @raw-number
%r3153 = trunc i64 %r3152 to i1
br i1 %r3153, label %label112, label %label113
label112:
%r3156 = alloca i8*
call void @llvm.gcroot(i8** %r3156, i8* null)
%r3154 = bitcast i8** %r3156 to i64*
%r3159 = alloca i8*
call void @llvm.gcroot(i8** %r3159, i8* null)
%r3157 = bitcast i8** %r3159 to i64*
%r3158 = add i64 0, 4
store i64 %r3158, i64* %r3157
%r3162 = alloca i8*
call void @llvm.gcroot(i8** %r3162, i8* null)
%r3160 = bitcast i8** %r3162 to i64*
%r3161 = add i64 0, 4
store i64 %r3161, i64* %r3160
%r3155 = call i64 @f36(i64* %env, i64* %r3157, i64* %r3160) ; @lookup-variable
store i64 %r3155, i64* %r3154
%r3164 = alloca i8*
call void @llvm.gcroot(i8** %r3164, i8* null)
%r2806 = bitcast i8** %r3164 to i64*
%r3163 = call i64 @f29(i64* %r3154) ; @car
store i64 %r3163, i64* %r2806
br label %label114
label113:
%r3170 = alloca i8*
call void @llvm.gcroot(i8** %r3170, i8* null)
%r3165 = bitcast i8** %r3170 to i64*
%r3173 = alloca i8*
call void @llvm.gcroot(i8** %r3173, i8* null)
%r3171 = bitcast i8** %r3173 to i64*
%r3172 = add i64 0, 0
store i64 %r3172, i64* %r3171
%r3176 = alloca i8*
call void @llvm.gcroot(i8** %r3176, i8* null)
%r3174 = bitcast i8** %r3176 to i64*
%r3175 = add i64 0, 8
store i64 %r3175, i64* %r3174
%r3169 = call i64 @f36(i64* %env, i64* %r3171, i64* %r3174) ; @lookup-variable
store i64 %r3169, i64* %r3165
%r3178 = alloca i8*
call void @llvm.gcroot(i8** %r3178, i8* null)
%r3166 = bitcast i8** %r3178 to i64*
%r3177 = call i64 @f18(i64* %r3165) ; @get-procedure-env
store i64 %r3177, i64* %r3166
%r3180 = alloca i8*
call void @llvm.gcroot(i8** %r3180, i8* null)
%r3168 = bitcast i8** %r3180 to i64*
%r3183 = alloca i8*
call void @llvm.gcroot(i8** %r3183, i8* null)
%r3181 = bitcast i8** %r3183 to i64*
%r3182 = add i64 0, 12
store i64 %r3182, i64* %r3181
%r3179 = call i64 @f17(i64* %r3181, i64* %r3166) ; @make-env
store i64 %r3179, i64* %r3168
%r3187 = alloca i8*
call void @llvm.gcroot(i8** %r3187, i8* null)
%r3185 = bitcast i8** %r3187 to i64*
%r3190 = alloca i8*
call void @llvm.gcroot(i8** %r3190, i8* null)
%r3188 = bitcast i8** %r3190 to i64*
%r3189 = add i64 0, 4
store i64 %r3189, i64* %r3188
%r3193 = alloca i8*
call void @llvm.gcroot(i8** %r3193, i8* null)
%r3191 = bitcast i8** %r3193 to i64*
%r3192 = add i64 0, 4
store i64 %r3192, i64* %r3191
%r3186 = call i64 @f36(i64* %env, i64* %r3188, i64* %r3191) ; @lookup-variable
store i64 %r3186, i64* %r3185
%r3195 = alloca i8*
call void @llvm.gcroot(i8** %r3195, i8* null)
%r3184 = bitcast i8** %r3195 to i64*
%r3194 = call i64 @f29(i64* %r3185) ; @car
store i64 %r3194, i64* %r3184
%r3199 = alloca i8*
call void @llvm.gcroot(i8** %r3199, i8* null)
%r3197 = bitcast i8** %r3199 to i64*
%r3198 = add i64 0, 4
store i64 %r3198, i64* %r3197
%r3196 = call i64 @f13(i64* %r3168, i64* %r3197, i64* %r3184) ; @vector-set!
%r3203 = alloca i8*
call void @llvm.gcroot(i8** %r3203, i8* null)
%r3201 = bitcast i8** %r3203 to i64*
%r3206 = alloca i8*
call void @llvm.gcroot(i8** %r3206, i8* null)
%r3204 = bitcast i8** %r3206 to i64*
%r3205 = add i64 0, 4
store i64 %r3205, i64* %r3204
%r3209 = alloca i8*
call void @llvm.gcroot(i8** %r3209, i8* null)
%r3207 = bitcast i8** %r3209 to i64*
%r3208 = add i64 0, 4
store i64 %r3208, i64* %r3207
%r3202 = call i64 @f36(i64* %env, i64* %r3204, i64* %r3207) ; @lookup-variable
store i64 %r3202, i64* %r3201
%r3211 = alloca i8*
call void @llvm.gcroot(i8** %r3211, i8* null)
%r3200 = bitcast i8** %r3211 to i64*
%r3210 = call i64 @f40(i64* %r3201) ; @cadr
store i64 %r3210, i64* %r3200
%r3215 = alloca i8*
call void @llvm.gcroot(i8** %r3215, i8* null)
%r3213 = bitcast i8** %r3215 to i64*
%r3214 = add i64 0, 8
store i64 %r3214, i64* %r3213
%r3212 = call i64 @f13(i64* %r3168, i64* %r3213, i64* %r3200) ; @vector-set!
%r3219 = alloca i8*
call void @llvm.gcroot(i8** %r3219, i8* null)
%r3217 = bitcast i8** %r3219 to i64*
%r3222 = alloca i8*
call void @llvm.gcroot(i8** %r3222, i8* null)
%r3220 = bitcast i8** %r3222 to i64*
%r3221 = add i64 0, 4
store i64 %r3221, i64* %r3220
%r3225 = alloca i8*
call void @llvm.gcroot(i8** %r3225, i8* null)
%r3223 = bitcast i8** %r3225 to i64*
%r3224 = add i64 0, 4
store i64 %r3224, i64* %r3223
%r3218 = call i64 @f36(i64* %env, i64* %r3220, i64* %r3223) ; @lookup-variable
store i64 %r3218, i64* %r3217
%r3227 = alloca i8*
call void @llvm.gcroot(i8** %r3227, i8* null)
%r3216 = bitcast i8** %r3227 to i64*
%r3226 = call i64 @f38(i64* %r3217) ; @cddr
store i64 %r3226, i64* %r3216
%r3231 = alloca i8*
call void @llvm.gcroot(i8** %r3231, i8* null)
%r3229 = bitcast i8** %r3231 to i64*
%r3230 = add i64 0, 12
store i64 %r3230, i64* %r3229
%r3228 = call i64 @f13(i64* %r3168, i64* %r3229, i64* %r3216) ; @vector-set!
%r3233 = alloca i8*
call void @llvm.gcroot(i8** %r3233, i8* null)
%r3167 = bitcast i8** %r3233 to i64*
%r3232 = call i64 @f19(i64* %r3165) ; @get-procedure-nparams
store i64 %r3232, i64* %r3167
%r3234 = call i64 @f23(i64* %r3167, i64* %r3168) ; @fix-arbitrary-procs
%r3236 = bitcast [20 x i8]* @g3235 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r3236, i32 1, i64* %r3168)
%r3238 = alloca i8*
call void @llvm.gcroot(i8** %r3238, i8* null)
%r2806 = bitcast i8** %r3238 to i64*
%r3237 = call i64 @apply-procedure(i64* %r3165, i64* %r3168) ; @apply-procedure
store i64 %r3237, i64* %r2806
br label %label114
label114:
br label %label111
label111:
%r3239 = load i64* %r2806
ret i64 %r3239
}

; @f68
define i64 @f75(i64* %env) gc "shadow-stack" {
%r3241 = alloca i8*
call void @llvm.gcroot(i8** %r3241, i8* null)
%r2807 = bitcast i8** %r3241 to i64*
%r3244 = alloca i8*
call void @llvm.gcroot(i8** %r3244, i8* null)
%r3242 = bitcast i8** %r3244 to i64*
%r3243 = add i64 0, 8
store i64 %r3243, i64* %r3242
%r3240 = call i64 @f17(i64* %r3242, i64* %env) ; @make-env
store i64 %r3240, i64* %r2807
%r3246 = alloca i8*
call void @llvm.gcroot(i8** %r3246, i8* null)
%r2804 = bitcast i8** %r3246 to i64*
%r3245 = call i64 @f74(i64* %r2807) ; @f69
store i64 %r3245, i64* %r2804
%r3247 = load i64* %r2804
ret i64 %r3247
}

; @f76
define i64 @f77(i64* %env) gc "shadow-stack" {
%r3266 = alloca i8*
call void @llvm.gcroot(i8** %r3266, i8* null)
%r3263 = bitcast i8** %r3266 to i64*
%r3269 = alloca i8*
call void @llvm.gcroot(i8** %r3269, i8* null)
%r3267 = bitcast i8** %r3269 to i64*
%r3272 = alloca i8*
call void @llvm.gcroot(i8** %r3272, i8* null)
%r3270 = bitcast i8** %r3272 to i64*
%r3271 = add i64 0, 0
store i64 %r3271, i64* %r3270
%r3275 = alloca i8*
call void @llvm.gcroot(i8** %r3275, i8* null)
%r3273 = bitcast i8** %r3275 to i64*
%r3274 = add i64 0, 4
store i64 %r3274, i64* %r3273
%r3268 = call i64 @f36(i64* %env, i64* %r3270, i64* %r3273) ; @lookup-variable
store i64 %r3268, i64* %r3267
%r3277 = alloca i8*
call void @llvm.gcroot(i8** %r3277, i8* null)
%r3265 = bitcast i8** %r3277 to i64*
%r3276 = call i64 @null(i64* %r3267) ; @null?
store i64 %r3276, i64* %r3265
%r3278 = call i64 @f2(i64* %r3265) ; @raw-number
%r3279 = trunc i64 %r3278 to i1
br i1 %r3279, label %label115, label %label116
label115:
%r3281 = alloca i8*
call void @llvm.gcroot(i8** %r3281, i8* null)
%r3263 = bitcast i8** %r3281 to i64*
%r3284 = alloca i8*
call void @llvm.gcroot(i8** %r3284, i8* null)
%r3282 = bitcast i8** %r3284 to i64*
%r3283 = add i64 0, 0
store i64 %r3283, i64* %r3282
%r3287 = alloca i8*
call void @llvm.gcroot(i8** %r3287, i8* null)
%r3285 = bitcast i8** %r3287 to i64*
%r3286 = add i64 0, 4
store i64 %r3286, i64* %r3285
%r3280 = call i64 @f36(i64* %env, i64* %r3282, i64* %r3285) ; @lookup-variable
store i64 %r3280, i64* %r3263
br label %label117
label116:
%r3293 = alloca i8*
call void @llvm.gcroot(i8** %r3293, i8* null)
%r3288 = bitcast i8** %r3293 to i64*
%r3296 = alloca i8*
call void @llvm.gcroot(i8** %r3296, i8* null)
%r3294 = bitcast i8** %r3296 to i64*
%r3295 = add i64 0, 4
store i64 %r3295, i64* %r3294
%r3299 = alloca i8*
call void @llvm.gcroot(i8** %r3299, i8* null)
%r3297 = bitcast i8** %r3299 to i64*
%r3298 = add i64 0, 36
store i64 %r3298, i64* %r3297
%r3292 = call i64 @f36(i64* %env, i64* %r3294, i64* %r3297) ; @lookup-variable
store i64 %r3292, i64* %r3288
%r3301 = alloca i8*
call void @llvm.gcroot(i8** %r3301, i8* null)
%r3289 = bitcast i8** %r3301 to i64*
%r3300 = call i64 @f18(i64* %r3288) ; @get-procedure-env
store i64 %r3300, i64* %r3289
%r3303 = alloca i8*
call void @llvm.gcroot(i8** %r3303, i8* null)
%r3291 = bitcast i8** %r3303 to i64*
%r3306 = alloca i8*
call void @llvm.gcroot(i8** %r3306, i8* null)
%r3304 = bitcast i8** %r3306 to i64*
%r3305 = add i64 0, 8
store i64 %r3305, i64* %r3304
%r3302 = call i64 @f17(i64* %r3304, i64* %r3289) ; @make-env
store i64 %r3302, i64* %r3291
%r3313 = alloca i8*
call void @llvm.gcroot(i8** %r3313, i8* null)
%r3308 = bitcast i8** %r3313 to i64*
%r3316 = alloca i8*
call void @llvm.gcroot(i8** %r3316, i8* null)
%r3314 = bitcast i8** %r3316 to i64*
%r3315 = add i64 0, 4
store i64 %r3315, i64* %r3314
%r3319 = alloca i8*
call void @llvm.gcroot(i8** %r3319, i8* null)
%r3317 = bitcast i8** %r3319 to i64*
%r3318 = add i64 0, 40
store i64 %r3318, i64* %r3317
%r3312 = call i64 @f36(i64* %env, i64* %r3314, i64* %r3317) ; @lookup-variable
store i64 %r3312, i64* %r3308
%r3321 = alloca i8*
call void @llvm.gcroot(i8** %r3321, i8* null)
%r3309 = bitcast i8** %r3321 to i64*
%r3320 = call i64 @f18(i64* %r3308) ; @get-procedure-env
store i64 %r3320, i64* %r3309
%r3323 = alloca i8*
call void @llvm.gcroot(i8** %r3323, i8* null)
%r3311 = bitcast i8** %r3323 to i64*
%r3326 = alloca i8*
call void @llvm.gcroot(i8** %r3326, i8* null)
%r3324 = bitcast i8** %r3326 to i64*
%r3325 = add i64 0, 4
store i64 %r3325, i64* %r3324
%r3322 = call i64 @f17(i64* %r3324, i64* %r3309) ; @make-env
store i64 %r3322, i64* %r3311
%r3330 = alloca i8*
call void @llvm.gcroot(i8** %r3330, i8* null)
%r3328 = bitcast i8** %r3330 to i64*
%r3333 = alloca i8*
call void @llvm.gcroot(i8** %r3333, i8* null)
%r3331 = bitcast i8** %r3333 to i64*
%r3332 = add i64 0, 0
store i64 %r3332, i64* %r3331
%r3336 = alloca i8*
call void @llvm.gcroot(i8** %r3336, i8* null)
%r3334 = bitcast i8** %r3336 to i64*
%r3335 = add i64 0, 4
store i64 %r3335, i64* %r3334
%r3329 = call i64 @f36(i64* %env, i64* %r3331, i64* %r3334) ; @lookup-variable
store i64 %r3329, i64* %r3328
%r3338 = alloca i8*
call void @llvm.gcroot(i8** %r3338, i8* null)
%r3327 = bitcast i8** %r3338 to i64*
%r3337 = call i64 @f30(i64* %r3328) ; @cdr
store i64 %r3337, i64* %r3327
%r3342 = alloca i8*
call void @llvm.gcroot(i8** %r3342, i8* null)
%r3340 = bitcast i8** %r3342 to i64*
%r3341 = add i64 0, 4
store i64 %r3341, i64* %r3340
%r3339 = call i64 @f13(i64* %r3311, i64* %r3340, i64* %r3327) ; @vector-set!
%r3344 = alloca i8*
call void @llvm.gcroot(i8** %r3344, i8* null)
%r3310 = bitcast i8** %r3344 to i64*
%r3343 = call i64 @f19(i64* %r3308) ; @get-procedure-nparams
store i64 %r3343, i64* %r3310
%r3345 = call i64 @f23(i64* %r3310, i64* %r3311) ; @fix-arbitrary-procs
%r3347 = bitcast [20 x i8]* @g3346 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r3347, i32 1, i64* %r3311)
%r3349 = alloca i8*
call void @llvm.gcroot(i8** %r3349, i8* null)
%r3307 = bitcast i8** %r3349 to i64*
%r3348 = call i64 @apply-procedure(i64* %r3308, i64* %r3311) ; @apply-procedure
store i64 %r3348, i64* %r3307
%r3353 = alloca i8*
call void @llvm.gcroot(i8** %r3353, i8* null)
%r3351 = bitcast i8** %r3353 to i64*
%r3352 = add i64 0, 4
store i64 %r3352, i64* %r3351
%r3350 = call i64 @f13(i64* %r3291, i64* %r3351, i64* %r3307) ; @vector-set!
%r3360 = alloca i8*
call void @llvm.gcroot(i8** %r3360, i8* null)
%r3355 = bitcast i8** %r3360 to i64*
%r3363 = alloca i8*
call void @llvm.gcroot(i8** %r3363, i8* null)
%r3361 = bitcast i8** %r3363 to i64*
%r3362 = add i64 0, 4
store i64 %r3362, i64* %r3361
%r3366 = alloca i8*
call void @llvm.gcroot(i8** %r3366, i8* null)
%r3364 = bitcast i8** %r3366 to i64*
%r3365 = add i64 0, 52
store i64 %r3365, i64* %r3364
%r3359 = call i64 @f36(i64* %env, i64* %r3361, i64* %r3364) ; @lookup-variable
store i64 %r3359, i64* %r3355
%r3368 = alloca i8*
call void @llvm.gcroot(i8** %r3368, i8* null)
%r3356 = bitcast i8** %r3368 to i64*
%r3367 = call i64 @f18(i64* %r3355) ; @get-procedure-env
store i64 %r3367, i64* %r3356
%r3370 = alloca i8*
call void @llvm.gcroot(i8** %r3370, i8* null)
%r3358 = bitcast i8** %r3370 to i64*
%r3373 = alloca i8*
call void @llvm.gcroot(i8** %r3373, i8* null)
%r3371 = bitcast i8** %r3373 to i64*
%r3372 = add i64 0, 4
store i64 %r3372, i64* %r3371
%r3369 = call i64 @f17(i64* %r3371, i64* %r3356) ; @make-env
store i64 %r3369, i64* %r3358
%r3377 = alloca i8*
call void @llvm.gcroot(i8** %r3377, i8* null)
%r3375 = bitcast i8** %r3377 to i64*
%r3380 = alloca i8*
call void @llvm.gcroot(i8** %r3380, i8* null)
%r3378 = bitcast i8** %r3380 to i64*
%r3379 = add i64 0, 0
store i64 %r3379, i64* %r3378
%r3383 = alloca i8*
call void @llvm.gcroot(i8** %r3383, i8* null)
%r3381 = bitcast i8** %r3383 to i64*
%r3382 = add i64 0, 4
store i64 %r3382, i64* %r3381
%r3376 = call i64 @f36(i64* %env, i64* %r3378, i64* %r3381) ; @lookup-variable
store i64 %r3376, i64* %r3375
%r3385 = alloca i8*
call void @llvm.gcroot(i8** %r3385, i8* null)
%r3374 = bitcast i8** %r3385 to i64*
%r3384 = call i64 @f29(i64* %r3375) ; @car
store i64 %r3384, i64* %r3374
%r3389 = alloca i8*
call void @llvm.gcroot(i8** %r3389, i8* null)
%r3387 = bitcast i8** %r3389 to i64*
%r3388 = add i64 0, 4
store i64 %r3388, i64* %r3387
%r3386 = call i64 @f13(i64* %r3358, i64* %r3387, i64* %r3374) ; @vector-set!
%r3391 = alloca i8*
call void @llvm.gcroot(i8** %r3391, i8* null)
%r3357 = bitcast i8** %r3391 to i64*
%r3390 = call i64 @f19(i64* %r3355) ; @get-procedure-nparams
store i64 %r3390, i64* %r3357
%r3392 = call i64 @f23(i64* %r3357, i64* %r3358) ; @fix-arbitrary-procs
%r3394 = bitcast [20 x i8]* @g3393 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r3394, i32 1, i64* %r3358)
%r3396 = alloca i8*
call void @llvm.gcroot(i8** %r3396, i8* null)
%r3354 = bitcast i8** %r3396 to i64*
%r3395 = call i64 @apply-procedure(i64* %r3355, i64* %r3358) ; @apply-procedure
store i64 %r3395, i64* %r3354
%r3400 = alloca i8*
call void @llvm.gcroot(i8** %r3400, i8* null)
%r3398 = bitcast i8** %r3400 to i64*
%r3399 = add i64 0, 8
store i64 %r3399, i64* %r3398
%r3397 = call i64 @f13(i64* %r3291, i64* %r3398, i64* %r3354) ; @vector-set!
%r3402 = alloca i8*
call void @llvm.gcroot(i8** %r3402, i8* null)
%r3290 = bitcast i8** %r3402 to i64*
%r3401 = call i64 @f19(i64* %r3288) ; @get-procedure-nparams
store i64 %r3401, i64* %r3290
%r3403 = call i64 @f23(i64* %r3290, i64* %r3291) ; @fix-arbitrary-procs
%r3405 = bitcast [20 x i8]* @g3404 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r3405, i32 1, i64* %r3291)
%r3407 = alloca i8*
call void @llvm.gcroot(i8** %r3407, i8* null)
%r3263 = bitcast i8** %r3407 to i64*
%r3406 = call i64 @apply-procedure(i64* %r3288, i64* %r3291) ; @apply-procedure
store i64 %r3406, i64* %r3263
br label %label117
label117:
%r3408 = load i64* %r3263
ret i64 %r3408
}

; @f80
define i64 @f81(i64* %env) gc "shadow-stack" {
%r3433 = alloca i8*
call void @llvm.gcroot(i8** %r3433, i8* null)
%r3430 = bitcast i8** %r3433 to i64*
%r3437 = alloca i8*
call void @llvm.gcroot(i8** %r3437, i8* null)
%r3434 = bitcast i8** %r3437 to i64*
%r3440 = alloca i8*
call void @llvm.gcroot(i8** %r3440, i8* null)
%r3438 = bitcast i8** %r3440 to i64*
%r3439 = add i64 0, 0
store i64 %r3439, i64* %r3438
%r3443 = alloca i8*
call void @llvm.gcroot(i8** %r3443, i8* null)
%r3441 = bitcast i8** %r3443 to i64*
%r3442 = add i64 0, 4
store i64 %r3442, i64* %r3441
%r3436 = call i64 @f36(i64* %env, i64* %r3438, i64* %r3441) ; @lookup-variable
store i64 %r3436, i64* %r3434
%r3445 = alloca i8*
call void @llvm.gcroot(i8** %r3445, i8* null)
%r3435 = bitcast i8** %r3445 to i64*
%r3444 = add i64 0, 36
store i64 %r3444, i64* %r3435
%r3447 = alloca i8*
call void @llvm.gcroot(i8** %r3447, i8* null)
%r3432 = bitcast i8** %r3447 to i64*
%r3446 = call i64 @f50(i64* %r3434, i64* %r3435) ; @>
store i64 %r3446, i64* %r3432
%r3448 = call i64 @f2(i64* %r3432) ; @raw-number
%r3449 = trunc i64 %r3448 to i1
br i1 %r3449, label %label118, label %label119
label118:
%r3455 = alloca i8*
call void @llvm.gcroot(i8** %r3455, i8* null)
%r3450 = bitcast i8** %r3455 to i64*
%r3458 = alloca i8*
call void @llvm.gcroot(i8** %r3458, i8* null)
%r3456 = bitcast i8** %r3458 to i64*
%r3457 = add i64 0, 4
store i64 %r3457, i64* %r3456
%r3461 = alloca i8*
call void @llvm.gcroot(i8** %r3461, i8* null)
%r3459 = bitcast i8** %r3461 to i64*
%r3460 = add i64 0, 4
store i64 %r3460, i64* %r3459
%r3454 = call i64 @f36(i64* %env, i64* %r3456, i64* %r3459) ; @lookup-variable
store i64 %r3454, i64* %r3450
%r3463 = alloca i8*
call void @llvm.gcroot(i8** %r3463, i8* null)
%r3451 = bitcast i8** %r3463 to i64*
%r3462 = call i64 @f18(i64* %r3450) ; @get-procedure-env
store i64 %r3462, i64* %r3451
%r3465 = alloca i8*
call void @llvm.gcroot(i8** %r3465, i8* null)
%r3453 = bitcast i8** %r3465 to i64*
%r3468 = alloca i8*
call void @llvm.gcroot(i8** %r3468, i8* null)
%r3466 = bitcast i8** %r3468 to i64*
%r3467 = add i64 0, 8
store i64 %r3467, i64* %r3466
%r3464 = call i64 @f17(i64* %r3466, i64* %r3451) ; @make-env
store i64 %r3464, i64* %r3453
%r3473 = alloca i8*
call void @llvm.gcroot(i8** %r3473, i8* null)
%r3470 = bitcast i8** %r3473 to i64*
%r3476 = alloca i8*
call void @llvm.gcroot(i8** %r3476, i8* null)
%r3474 = bitcast i8** %r3476 to i64*
%r3475 = add i64 0, 0
store i64 %r3475, i64* %r3474
%r3479 = alloca i8*
call void @llvm.gcroot(i8** %r3479, i8* null)
%r3477 = bitcast i8** %r3479 to i64*
%r3478 = add i64 0, 4
store i64 %r3478, i64* %r3477
%r3472 = call i64 @f36(i64* %env, i64* %r3474, i64* %r3477) ; @lookup-variable
store i64 %r3472, i64* %r3470
%r3481 = alloca i8*
call void @llvm.gcroot(i8** %r3481, i8* null)
%r3471 = bitcast i8** %r3481 to i64*
%r3480 = add i64 0, 40
store i64 %r3480, i64* %r3471
%r3483 = alloca i8*
call void @llvm.gcroot(i8** %r3483, i8* null)
%r3469 = bitcast i8** %r3483 to i64*
%r3482 = call i64 @f48(i64* %r3470, i64* %r3471) ; @/
store i64 %r3482, i64* %r3469
%r3487 = alloca i8*
call void @llvm.gcroot(i8** %r3487, i8* null)
%r3485 = bitcast i8** %r3487 to i64*
%r3486 = add i64 0, 4
store i64 %r3486, i64* %r3485
%r3484 = call i64 @f13(i64* %r3453, i64* %r3485, i64* %r3469) ; @vector-set!
%r3496 = alloca i8*
call void @llvm.gcroot(i8** %r3496, i8* null)
%r3491 = bitcast i8** %r3496 to i64*
%r3499 = alloca i8*
call void @llvm.gcroot(i8** %r3499, i8* null)
%r3497 = bitcast i8** %r3499 to i64*
%r3498 = add i64 0, 12
store i64 %r3498, i64* %r3497
%r3502 = alloca i8*
call void @llvm.gcroot(i8** %r3502, i8* null)
%r3500 = bitcast i8** %r3502 to i64*
%r3501 = add i64 0, 28
store i64 %r3501, i64* %r3500
%r3495 = call i64 @f36(i64* %env, i64* %r3497, i64* %r3500) ; @lookup-variable
store i64 %r3495, i64* %r3491
%r3504 = alloca i8*
call void @llvm.gcroot(i8** %r3504, i8* null)
%r3492 = bitcast i8** %r3504 to i64*
%r3503 = call i64 @f18(i64* %r3491) ; @get-procedure-env
store i64 %r3503, i64* %r3492
%r3506 = alloca i8*
call void @llvm.gcroot(i8** %r3506, i8* null)
%r3494 = bitcast i8** %r3506 to i64*
%r3509 = alloca i8*
call void @llvm.gcroot(i8** %r3509, i8* null)
%r3507 = bitcast i8** %r3509 to i64*
%r3508 = add i64 0, 8
store i64 %r3508, i64* %r3507
%r3505 = call i64 @f17(i64* %r3507, i64* %r3492) ; @make-env
store i64 %r3505, i64* %r3494
%r3512 = alloca i8*
call void @llvm.gcroot(i8** %r3512, i8* null)
%r3510 = bitcast i8** %r3512 to i64*
%r3515 = alloca i8*
call void @llvm.gcroot(i8** %r3515, i8* null)
%r3513 = bitcast i8** %r3515 to i64*
%r3514 = add i64 0, 12
store i64 %r3514, i64* %r3513
%r3518 = alloca i8*
call void @llvm.gcroot(i8** %r3518, i8* null)
%r3516 = bitcast i8** %r3518 to i64*
%r3517 = add i64 0, 76
store i64 %r3517, i64* %r3516
%r3511 = call i64 @f36(i64* %env, i64* %r3513, i64* %r3516) ; @lookup-variable
store i64 %r3511, i64* %r3510
%r3522 = alloca i8*
call void @llvm.gcroot(i8** %r3522, i8* null)
%r3520 = bitcast i8** %r3522 to i64*
%r3521 = add i64 0, 4
store i64 %r3521, i64* %r3520
%r3519 = call i64 @f13(i64* %r3494, i64* %r3520, i64* %r3510) ; @vector-set!
%r3527 = alloca i8*
call void @llvm.gcroot(i8** %r3527, i8* null)
%r3524 = bitcast i8** %r3527 to i64*
%r3530 = alloca i8*
call void @llvm.gcroot(i8** %r3530, i8* null)
%r3528 = bitcast i8** %r3530 to i64*
%r3529 = add i64 0, 0
store i64 %r3529, i64* %r3528
%r3533 = alloca i8*
call void @llvm.gcroot(i8** %r3533, i8* null)
%r3531 = bitcast i8** %r3533 to i64*
%r3532 = add i64 0, 4
store i64 %r3532, i64* %r3531
%r3526 = call i64 @f36(i64* %env, i64* %r3528, i64* %r3531) ; @lookup-variable
store i64 %r3526, i64* %r3524
%r3535 = alloca i8*
call void @llvm.gcroot(i8** %r3535, i8* null)
%r3525 = bitcast i8** %r3535 to i64*
%r3534 = add i64 0, 40
store i64 %r3534, i64* %r3525
%r3537 = alloca i8*
call void @llvm.gcroot(i8** %r3537, i8* null)
%r3523 = bitcast i8** %r3537 to i64*
%r3536 = call i64 @f49(i64* %r3524, i64* %r3525) ; @%
store i64 %r3536, i64* %r3523
%r3541 = alloca i8*
call void @llvm.gcroot(i8** %r3541, i8* null)
%r3539 = bitcast i8** %r3541 to i64*
%r3540 = add i64 0, 8
store i64 %r3540, i64* %r3539
%r3538 = call i64 @f13(i64* %r3494, i64* %r3539, i64* %r3523) ; @vector-set!
%r3543 = alloca i8*
call void @llvm.gcroot(i8** %r3543, i8* null)
%r3493 = bitcast i8** %r3543 to i64*
%r3542 = call i64 @f19(i64* %r3491) ; @get-procedure-nparams
store i64 %r3542, i64* %r3493
%r3544 = call i64 @f23(i64* %r3493, i64* %r3494) ; @fix-arbitrary-procs
%r3546 = bitcast [20 x i8]* @g3545 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r3546, i32 1, i64* %r3494)
%r3548 = alloca i8*
call void @llvm.gcroot(i8** %r3548, i8* null)
%r3489 = bitcast i8** %r3548 to i64*
%r3547 = call i64 @apply-procedure(i64* %r3491, i64* %r3494) ; @apply-procedure
store i64 %r3547, i64* %r3489
%r3550 = alloca i8*
call void @llvm.gcroot(i8** %r3550, i8* null)
%r3490 = bitcast i8** %r3550 to i64*
%r3553 = alloca i8*
call void @llvm.gcroot(i8** %r3553, i8* null)
%r3551 = bitcast i8** %r3553 to i64*
%r3552 = add i64 0, 0
store i64 %r3552, i64* %r3551
%r3556 = alloca i8*
call void @llvm.gcroot(i8** %r3556, i8* null)
%r3554 = bitcast i8** %r3556 to i64*
%r3555 = add i64 0, 8
store i64 %r3555, i64* %r3554
%r3549 = call i64 @f36(i64* %env, i64* %r3551, i64* %r3554) ; @lookup-variable
store i64 %r3549, i64* %r3490
%r3558 = alloca i8*
call void @llvm.gcroot(i8** %r3558, i8* null)
%r3488 = bitcast i8** %r3558 to i64*
%r3557 = call i64 @f21(i64* %r3489, i64* %r3490) ; @cons
store i64 %r3557, i64* %r3488
%r3562 = alloca i8*
call void @llvm.gcroot(i8** %r3562, i8* null)
%r3560 = bitcast i8** %r3562 to i64*
%r3561 = add i64 0, 8
store i64 %r3561, i64* %r3560
%r3559 = call i64 @f13(i64* %r3453, i64* %r3560, i64* %r3488) ; @vector-set!
%r3564 = alloca i8*
call void @llvm.gcroot(i8** %r3564, i8* null)
%r3452 = bitcast i8** %r3564 to i64*
%r3563 = call i64 @f19(i64* %r3450) ; @get-procedure-nparams
store i64 %r3563, i64* %r3452
%r3565 = call i64 @f23(i64* %r3452, i64* %r3453) ; @fix-arbitrary-procs
%r3567 = bitcast [20 x i8]* @g3566 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r3567, i32 1, i64* %r3453)
%r3569 = alloca i8*
call void @llvm.gcroot(i8** %r3569, i8* null)
%r3430 = bitcast i8** %r3569 to i64*
%r3568 = call i64 @apply-procedure(i64* %r3450, i64* %r3453) ; @apply-procedure
store i64 %r3568, i64* %r3430
br label %label120
label119:
%r3577 = alloca i8*
call void @llvm.gcroot(i8** %r3577, i8* null)
%r3572 = bitcast i8** %r3577 to i64*
%r3580 = alloca i8*
call void @llvm.gcroot(i8** %r3580, i8* null)
%r3578 = bitcast i8** %r3580 to i64*
%r3579 = add i64 0, 12
store i64 %r3579, i64* %r3578
%r3583 = alloca i8*
call void @llvm.gcroot(i8** %r3583, i8* null)
%r3581 = bitcast i8** %r3583 to i64*
%r3582 = add i64 0, 28
store i64 %r3582, i64* %r3581
%r3576 = call i64 @f36(i64* %env, i64* %r3578, i64* %r3581) ; @lookup-variable
store i64 %r3576, i64* %r3572
%r3585 = alloca i8*
call void @llvm.gcroot(i8** %r3585, i8* null)
%r3573 = bitcast i8** %r3585 to i64*
%r3584 = call i64 @f18(i64* %r3572) ; @get-procedure-env
store i64 %r3584, i64* %r3573
%r3587 = alloca i8*
call void @llvm.gcroot(i8** %r3587, i8* null)
%r3575 = bitcast i8** %r3587 to i64*
%r3590 = alloca i8*
call void @llvm.gcroot(i8** %r3590, i8* null)
%r3588 = bitcast i8** %r3590 to i64*
%r3589 = add i64 0, 8
store i64 %r3589, i64* %r3588
%r3586 = call i64 @f17(i64* %r3588, i64* %r3573) ; @make-env
store i64 %r3586, i64* %r3575
%r3593 = alloca i8*
call void @llvm.gcroot(i8** %r3593, i8* null)
%r3591 = bitcast i8** %r3593 to i64*
%r3596 = alloca i8*
call void @llvm.gcroot(i8** %r3596, i8* null)
%r3594 = bitcast i8** %r3596 to i64*
%r3595 = add i64 0, 12
store i64 %r3595, i64* %r3594
%r3599 = alloca i8*
call void @llvm.gcroot(i8** %r3599, i8* null)
%r3597 = bitcast i8** %r3599 to i64*
%r3598 = add i64 0, 76
store i64 %r3598, i64* %r3597
%r3592 = call i64 @f36(i64* %env, i64* %r3594, i64* %r3597) ; @lookup-variable
store i64 %r3592, i64* %r3591
%r3603 = alloca i8*
call void @llvm.gcroot(i8** %r3603, i8* null)
%r3601 = bitcast i8** %r3603 to i64*
%r3602 = add i64 0, 4
store i64 %r3602, i64* %r3601
%r3600 = call i64 @f13(i64* %r3575, i64* %r3601, i64* %r3591) ; @vector-set!
%r3606 = alloca i8*
call void @llvm.gcroot(i8** %r3606, i8* null)
%r3604 = bitcast i8** %r3606 to i64*
%r3609 = alloca i8*
call void @llvm.gcroot(i8** %r3609, i8* null)
%r3607 = bitcast i8** %r3609 to i64*
%r3608 = add i64 0, 0
store i64 %r3608, i64* %r3607
%r3612 = alloca i8*
call void @llvm.gcroot(i8** %r3612, i8* null)
%r3610 = bitcast i8** %r3612 to i64*
%r3611 = add i64 0, 4
store i64 %r3611, i64* %r3610
%r3605 = call i64 @f36(i64* %env, i64* %r3607, i64* %r3610) ; @lookup-variable
store i64 %r3605, i64* %r3604
%r3616 = alloca i8*
call void @llvm.gcroot(i8** %r3616, i8* null)
%r3614 = bitcast i8** %r3616 to i64*
%r3615 = add i64 0, 8
store i64 %r3615, i64* %r3614
%r3613 = call i64 @f13(i64* %r3575, i64* %r3614, i64* %r3604) ; @vector-set!
%r3618 = alloca i8*
call void @llvm.gcroot(i8** %r3618, i8* null)
%r3574 = bitcast i8** %r3618 to i64*
%r3617 = call i64 @f19(i64* %r3572) ; @get-procedure-nparams
store i64 %r3617, i64* %r3574
%r3619 = call i64 @f23(i64* %r3574, i64* %r3575) ; @fix-arbitrary-procs
%r3621 = bitcast [20 x i8]* @g3620 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r3621, i32 1, i64* %r3575)
%r3623 = alloca i8*
call void @llvm.gcroot(i8** %r3623, i8* null)
%r3570 = bitcast i8** %r3623 to i64*
%r3622 = call i64 @apply-procedure(i64* %r3572, i64* %r3575) ; @apply-procedure
store i64 %r3622, i64* %r3570
%r3625 = alloca i8*
call void @llvm.gcroot(i8** %r3625, i8* null)
%r3571 = bitcast i8** %r3625 to i64*
%r3628 = alloca i8*
call void @llvm.gcroot(i8** %r3628, i8* null)
%r3626 = bitcast i8** %r3628 to i64*
%r3627 = add i64 0, 0
store i64 %r3627, i64* %r3626
%r3631 = alloca i8*
call void @llvm.gcroot(i8** %r3631, i8* null)
%r3629 = bitcast i8** %r3631 to i64*
%r3630 = add i64 0, 8
store i64 %r3630, i64* %r3629
%r3624 = call i64 @f36(i64* %env, i64* %r3626, i64* %r3629) ; @lookup-variable
store i64 %r3624, i64* %r3571
%r3633 = alloca i8*
call void @llvm.gcroot(i8** %r3633, i8* null)
%r3430 = bitcast i8** %r3633 to i64*
%r3632 = call i64 @f21(i64* %r3570, i64* %r3571) ; @cons
store i64 %r3632, i64* %r3430
br label %label120
label120:
%r3634 = load i64* %r3430
ret i64 %r3634
}

; @f79
define i64 @f82(i64* %env) gc "shadow-stack" {
%r3636 = alloca i8*
call void @llvm.gcroot(i8** %r3636, i8* null)
%r3429 = bitcast i8** %r3636 to i64*
%r3639 = alloca i8*
call void @llvm.gcroot(i8** %r3639, i8* null)
%r3637 = bitcast i8** %r3639 to i64*
%r3638 = add i64 0, 0
store i64 %r3638, i64* %r3637
%r3635 = call i64 @make-procedure(i64 (i64*)* @f81, i64* %env, i64* %r3637)
store i64 %r3635, i64* %r3429
%r3641 = alloca i8*
call void @llvm.gcroot(i8** %r3641, i8* null)
%r3428 = bitcast i8** %r3641 to i64*
%r3644 = alloca i8*
call void @llvm.gcroot(i8** %r3644, i8* null)
%r3642 = bitcast i8** %r3644 to i64*
%r3643 = add i64 0, 0
store i64 %r3643, i64* %r3642
%r3647 = alloca i8*
call void @llvm.gcroot(i8** %r3647, i8* null)
%r3645 = bitcast i8** %r3647 to i64*
%r3646 = add i64 0, 4
store i64 %r3646, i64* %r3645
%r3640 = call i64 @f37(i64* %env, i64* %r3642, i64* %r3645, i64* %r3429) ; @set-variable!
store i64 %r3640, i64* %r3428
%r3653 = alloca i8*
call void @llvm.gcroot(i8** %r3653, i8* null)
%r3648 = bitcast i8** %r3653 to i64*
%r3656 = alloca i8*
call void @llvm.gcroot(i8** %r3656, i8* null)
%r3654 = bitcast i8** %r3656 to i64*
%r3655 = add i64 0, 8
store i64 %r3655, i64* %r3654
%r3659 = alloca i8*
call void @llvm.gcroot(i8** %r3659, i8* null)
%r3657 = bitcast i8** %r3659 to i64*
%r3658 = add i64 0, 4
store i64 %r3658, i64* %r3657
%r3652 = call i64 @f36(i64* %env, i64* %r3654, i64* %r3657) ; @lookup-variable
store i64 %r3652, i64* %r3648
%r3661 = alloca i8*
call void @llvm.gcroot(i8** %r3661, i8* null)
%r3649 = bitcast i8** %r3661 to i64*
%r3660 = call i64 @f18(i64* %r3648) ; @get-procedure-env
store i64 %r3660, i64* %r3649
%r3663 = alloca i8*
call void @llvm.gcroot(i8** %r3663, i8* null)
%r3651 = bitcast i8** %r3663 to i64*
%r3666 = alloca i8*
call void @llvm.gcroot(i8** %r3666, i8* null)
%r3664 = bitcast i8** %r3666 to i64*
%r3665 = add i64 0, 4
store i64 %r3665, i64* %r3664
%r3662 = call i64 @f17(i64* %r3664, i64* %r3649) ; @make-env
store i64 %r3662, i64* %r3651
%r3673 = alloca i8*
call void @llvm.gcroot(i8** %r3673, i8* null)
%r3668 = bitcast i8** %r3673 to i64*
%r3676 = alloca i8*
call void @llvm.gcroot(i8** %r3676, i8* null)
%r3674 = bitcast i8** %r3676 to i64*
%r3675 = add i64 0, 0
store i64 %r3675, i64* %r3674
%r3679 = alloca i8*
call void @llvm.gcroot(i8** %r3679, i8* null)
%r3677 = bitcast i8** %r3679 to i64*
%r3678 = add i64 0, 4
store i64 %r3678, i64* %r3677
%r3672 = call i64 @f36(i64* %env, i64* %r3674, i64* %r3677) ; @lookup-variable
store i64 %r3672, i64* %r3668
%r3681 = alloca i8*
call void @llvm.gcroot(i8** %r3681, i8* null)
%r3669 = bitcast i8** %r3681 to i64*
%r3680 = call i64 @f18(i64* %r3668) ; @get-procedure-env
store i64 %r3680, i64* %r3669
%r3683 = alloca i8*
call void @llvm.gcroot(i8** %r3683, i8* null)
%r3671 = bitcast i8** %r3683 to i64*
%r3686 = alloca i8*
call void @llvm.gcroot(i8** %r3686, i8* null)
%r3684 = bitcast i8** %r3686 to i64*
%r3685 = add i64 0, 8
store i64 %r3685, i64* %r3684
%r3682 = call i64 @f17(i64* %r3684, i64* %r3669) ; @make-env
store i64 %r3682, i64* %r3671
%r3689 = alloca i8*
call void @llvm.gcroot(i8** %r3689, i8* null)
%r3687 = bitcast i8** %r3689 to i64*
%r3692 = alloca i8*
call void @llvm.gcroot(i8** %r3692, i8* null)
%r3690 = bitcast i8** %r3692 to i64*
%r3691 = add i64 0, 4
store i64 %r3691, i64* %r3690
%r3695 = alloca i8*
call void @llvm.gcroot(i8** %r3695, i8* null)
%r3693 = bitcast i8** %r3695 to i64*
%r3694 = add i64 0, 4
store i64 %r3694, i64* %r3693
%r3688 = call i64 @f36(i64* %env, i64* %r3690, i64* %r3693) ; @lookup-variable
store i64 %r3688, i64* %r3687
%r3699 = alloca i8*
call void @llvm.gcroot(i8** %r3699, i8* null)
%r3697 = bitcast i8** %r3699 to i64*
%r3698 = add i64 0, 4
store i64 %r3698, i64* %r3697
%r3696 = call i64 @f13(i64* %r3671, i64* %r3697, i64* %r3687) ; @vector-set!
%r3702 = alloca i8*
call void @llvm.gcroot(i8** %r3702, i8* null)
%r3700 = bitcast i8** %r3702 to i64*
%r3701 = call i64 @make-null() ; @make-null
store i64 %r3701, i64* %r3700
%r3706 = alloca i8*
call void @llvm.gcroot(i8** %r3706, i8* null)
%r3704 = bitcast i8** %r3706 to i64*
%r3705 = add i64 0, 8
store i64 %r3705, i64* %r3704
%r3703 = call i64 @f13(i64* %r3671, i64* %r3704, i64* %r3700) ; @vector-set!
%r3708 = alloca i8*
call void @llvm.gcroot(i8** %r3708, i8* null)
%r3670 = bitcast i8** %r3708 to i64*
%r3707 = call i64 @f19(i64* %r3668) ; @get-procedure-nparams
store i64 %r3707, i64* %r3670
%r3709 = call i64 @f23(i64* %r3670, i64* %r3671) ; @fix-arbitrary-procs
%r3711 = bitcast [20 x i8]* @g3710 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r3711, i32 1, i64* %r3671)
%r3713 = alloca i8*
call void @llvm.gcroot(i8** %r3713, i8* null)
%r3667 = bitcast i8** %r3713 to i64*
%r3712 = call i64 @apply-procedure(i64* %r3668, i64* %r3671) ; @apply-procedure
store i64 %r3712, i64* %r3667
%r3717 = alloca i8*
call void @llvm.gcroot(i8** %r3717, i8* null)
%r3715 = bitcast i8** %r3717 to i64*
%r3716 = add i64 0, 4
store i64 %r3716, i64* %r3715
%r3714 = call i64 @f13(i64* %r3651, i64* %r3715, i64* %r3667) ; @vector-set!
%r3719 = alloca i8*
call void @llvm.gcroot(i8** %r3719, i8* null)
%r3650 = bitcast i8** %r3719 to i64*
%r3718 = call i64 @f19(i64* %r3648) ; @get-procedure-nparams
store i64 %r3718, i64* %r3650
%r3720 = call i64 @f23(i64* %r3650, i64* %r3651) ; @fix-arbitrary-procs
%r3722 = bitcast [20 x i8]* @g3721 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r3722, i32 1, i64* %r3651)
%r3724 = alloca i8*
call void @llvm.gcroot(i8** %r3724, i8* null)
%r3426 = bitcast i8** %r3724 to i64*
%r3723 = call i64 @apply-procedure(i64* %r3648, i64* %r3651) ; @apply-procedure
store i64 %r3723, i64* %r3426
%r3725 = load i64* %r3426
ret i64 %r3725
}

; @f78
define i64 @f83(i64* %env) gc "shadow-stack" {
%r3727 = alloca i8*
call void @llvm.gcroot(i8** %r3727, i8* null)
%r3427 = bitcast i8** %r3727 to i64*
%r3730 = alloca i8*
call void @llvm.gcroot(i8** %r3730, i8* null)
%r3728 = bitcast i8** %r3730 to i64*
%r3729 = add i64 0, 4
store i64 %r3729, i64* %r3728
%r3726 = call i64 @f17(i64* %r3728, i64* %env) ; @make-env
store i64 %r3726, i64* %r3427
%r3732 = alloca i8*
call void @llvm.gcroot(i8** %r3732, i8* null)
%r3424 = bitcast i8** %r3732 to i64*
%r3731 = call i64 @f82(i64* %r3427) ; @f79
store i64 %r3731, i64* %r3424
%r3733 = load i64* %r3424
ret i64 %r3733
}

; @f84
define i64 @f85(i64* %env) gc "shadow-stack" {
%r3752 = alloca i8*
call void @llvm.gcroot(i8** %r3752, i8* null)
%r3749 = bitcast i8** %r3752 to i64*
%r3755 = alloca i8*
call void @llvm.gcroot(i8** %r3755, i8* null)
%r3753 = bitcast i8** %r3755 to i64*
%r3758 = alloca i8*
call void @llvm.gcroot(i8** %r3758, i8* null)
%r3756 = bitcast i8** %r3758 to i64*
%r3757 = add i64 0, 0
store i64 %r3757, i64* %r3756
%r3761 = alloca i8*
call void @llvm.gcroot(i8** %r3761, i8* null)
%r3759 = bitcast i8** %r3761 to i64*
%r3760 = add i64 0, 4
store i64 %r3760, i64* %r3759
%r3754 = call i64 @f36(i64* %env, i64* %r3756, i64* %r3759) ; @lookup-variable
store i64 %r3754, i64* %r3753
%r3763 = alloca i8*
call void @llvm.gcroot(i8** %r3763, i8* null)
%r3751 = bitcast i8** %r3763 to i64*
%r3762 = call i64 @null(i64* %r3753) ; @null?
store i64 %r3762, i64* %r3751
%r3764 = call i64 @f2(i64* %r3751) ; @raw-number
%r3765 = trunc i64 %r3764 to i1
br i1 %r3765, label %label121, label %label122
label121:
%r3767 = alloca i8*
call void @llvm.gcroot(i8** %r3767, i8* null)
%r3749 = bitcast i8** %r3767 to i64*
%r3766 = add i64 0, 4
store i64 %r3766, i64* %r3749
br label %label123
label122:
%r3769 = alloca i8*
call void @llvm.gcroot(i8** %r3769, i8* null)
%r3749 = bitcast i8** %r3769 to i64*
%r3772 = alloca i8*
call void @llvm.gcroot(i8** %r3772, i8* null)
%r3770 = bitcast i8** %r3772 to i64*
%r3775 = alloca i8*
call void @llvm.gcroot(i8** %r3775, i8* null)
%r3773 = bitcast i8** %r3775 to i64*
%r3774 = add i64 0, 0
store i64 %r3774, i64* %r3773
%r3778 = alloca i8*
call void @llvm.gcroot(i8** %r3778, i8* null)
%r3776 = bitcast i8** %r3778 to i64*
%r3777 = add i64 0, 4
store i64 %r3777, i64* %r3776
%r3771 = call i64 @f36(i64* %env, i64* %r3773, i64* %r3776) ; @lookup-variable
store i64 %r3771, i64* %r3770
%r3780 = alloca i8*
call void @llvm.gcroot(i8** %r3780, i8* null)
%r3768 = bitcast i8** %r3780 to i64*
%r3779 = call i64 @f10(i64* %r3770) ; @pair?
store i64 %r3779, i64* %r3768
%r3781 = call i64 @f2(i64* %r3768) ; @raw-number
%r3782 = trunc i64 %r3781 to i1
br i1 %r3782, label %label124, label %label125
label124:
%r3788 = alloca i8*
call void @llvm.gcroot(i8** %r3788, i8* null)
%r3783 = bitcast i8** %r3788 to i64*
%r3791 = alloca i8*
call void @llvm.gcroot(i8** %r3791, i8* null)
%r3789 = bitcast i8** %r3791 to i64*
%r3790 = add i64 0, 4
store i64 %r3790, i64* %r3789
%r3794 = alloca i8*
call void @llvm.gcroot(i8** %r3794, i8* null)
%r3792 = bitcast i8** %r3794 to i64*
%r3793 = add i64 0, 48
store i64 %r3793, i64* %r3792
%r3787 = call i64 @f36(i64* %env, i64* %r3789, i64* %r3792) ; @lookup-variable
store i64 %r3787, i64* %r3783
%r3796 = alloca i8*
call void @llvm.gcroot(i8** %r3796, i8* null)
%r3784 = bitcast i8** %r3796 to i64*
%r3795 = call i64 @f18(i64* %r3783) ; @get-procedure-env
store i64 %r3795, i64* %r3784
%r3798 = alloca i8*
call void @llvm.gcroot(i8** %r3798, i8* null)
%r3786 = bitcast i8** %r3798 to i64*
%r3801 = alloca i8*
call void @llvm.gcroot(i8** %r3801, i8* null)
%r3799 = bitcast i8** %r3801 to i64*
%r3800 = add i64 0, 4
store i64 %r3800, i64* %r3799
%r3797 = call i64 @f17(i64* %r3799, i64* %r3784) ; @make-env
store i64 %r3797, i64* %r3786
%r3805 = alloca i8*
call void @llvm.gcroot(i8** %r3805, i8* null)
%r3803 = bitcast i8** %r3805 to i64*
%r3808 = alloca i8*
call void @llvm.gcroot(i8** %r3808, i8* null)
%r3806 = bitcast i8** %r3808 to i64*
%r3807 = add i64 0, 0
store i64 %r3807, i64* %r3806
%r3811 = alloca i8*
call void @llvm.gcroot(i8** %r3811, i8* null)
%r3809 = bitcast i8** %r3811 to i64*
%r3810 = add i64 0, 4
store i64 %r3810, i64* %r3809
%r3804 = call i64 @f36(i64* %env, i64* %r3806, i64* %r3809) ; @lookup-variable
store i64 %r3804, i64* %r3803
%r3813 = alloca i8*
call void @llvm.gcroot(i8** %r3813, i8* null)
%r3802 = bitcast i8** %r3813 to i64*
%r3812 = call i64 @f30(i64* %r3803) ; @cdr
store i64 %r3812, i64* %r3802
%r3817 = alloca i8*
call void @llvm.gcroot(i8** %r3817, i8* null)
%r3815 = bitcast i8** %r3817 to i64*
%r3816 = add i64 0, 4
store i64 %r3816, i64* %r3815
%r3814 = call i64 @f13(i64* %r3786, i64* %r3815, i64* %r3802) ; @vector-set!
%r3819 = alloca i8*
call void @llvm.gcroot(i8** %r3819, i8* null)
%r3785 = bitcast i8** %r3819 to i64*
%r3818 = call i64 @f19(i64* %r3783) ; @get-procedure-nparams
store i64 %r3818, i64* %r3785
%r3820 = call i64 @f23(i64* %r3785, i64* %r3786) ; @fix-arbitrary-procs
%r3822 = bitcast [20 x i8]* @g3821 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r3822, i32 1, i64* %r3786)
%r3824 = alloca i8*
call void @llvm.gcroot(i8** %r3824, i8* null)
%r3749 = bitcast i8** %r3824 to i64*
%r3823 = call i64 @apply-procedure(i64* %r3783, i64* %r3786) ; @apply-procedure
store i64 %r3823, i64* %r3749
br label %label126
label125:
%r3826 = alloca i8*
call void @llvm.gcroot(i8** %r3826, i8* null)
%r3749 = bitcast i8** %r3826 to i64*
%r3825 = call i64 @make-null() ; @make-null
store i64 %r3825, i64* %r3749
br label %label126
label126:
br label %label123
label123:
%r3827 = load i64* %r3749
ret i64 %r3827
}

; @f86
define i64 @f87(i64* %env) gc "shadow-stack" {
%r3846 = alloca i8*
call void @llvm.gcroot(i8** %r3846, i8* null)
%r3843 = bitcast i8** %r3846 to i64*
%r3849 = alloca i8*
call void @llvm.gcroot(i8** %r3849, i8* null)
%r3847 = bitcast i8** %r3849 to i64*
%r3848 = add i64 0, 0
store i64 %r3848, i64* %r3847
%r3852 = alloca i8*
call void @llvm.gcroot(i8** %r3852, i8* null)
%r3850 = bitcast i8** %r3852 to i64*
%r3851 = add i64 0, 4
store i64 %r3851, i64* %r3850
%r3845 = call i64 @f36(i64* %env, i64* %r3847, i64* %r3850) ; @lookup-variable
store i64 %r3845, i64* %r3843
%r3853 = load i64* %r3843
ret i64 %r3853
}

; @f88
define i64 @f89(i64* %env) gc "shadow-stack" {
%r3872 = alloca i8*
call void @llvm.gcroot(i8** %r3872, i8* null)
%r3869 = bitcast i8** %r3872 to i64*
%r3875 = alloca i8*
call void @llvm.gcroot(i8** %r3875, i8* null)
%r3873 = bitcast i8** %r3875 to i64*
%r3878 = alloca i8*
call void @llvm.gcroot(i8** %r3878, i8* null)
%r3876 = bitcast i8** %r3878 to i64*
%r3877 = add i64 0, 0
store i64 %r3877, i64* %r3876
%r3881 = alloca i8*
call void @llvm.gcroot(i8** %r3881, i8* null)
%r3879 = bitcast i8** %r3881 to i64*
%r3880 = add i64 0, 8
store i64 %r3880, i64* %r3879
%r3874 = call i64 @f36(i64* %env, i64* %r3876, i64* %r3879) ; @lookup-variable
store i64 %r3874, i64* %r3873
%r3883 = alloca i8*
call void @llvm.gcroot(i8** %r3883, i8* null)
%r3871 = bitcast i8** %r3883 to i64*
%r3882 = call i64 @null(i64* %r3873) ; @null?
store i64 %r3882, i64* %r3871
%r3884 = call i64 @f2(i64* %r3871) ; @raw-number
%r3885 = trunc i64 %r3884 to i1
br i1 %r3885, label %label127, label %label128
label127:
%r3887 = alloca i8*
call void @llvm.gcroot(i8** %r3887, i8* null)
%r3869 = bitcast i8** %r3887 to i64*
%r3886 = call i64 @make-null() ; @make-null
store i64 %r3886, i64* %r3869
br label %label129
label128:
%r3889 = alloca i8*
call void @llvm.gcroot(i8** %r3889, i8* null)
%r3869 = bitcast i8** %r3889 to i64*
%r3895 = alloca i8*
call void @llvm.gcroot(i8** %r3895, i8* null)
%r3890 = bitcast i8** %r3895 to i64*
%r3898 = alloca i8*
call void @llvm.gcroot(i8** %r3898, i8* null)
%r3896 = bitcast i8** %r3898 to i64*
%r3897 = add i64 0, 4
store i64 %r3897, i64* %r3896
%r3901 = alloca i8*
call void @llvm.gcroot(i8** %r3901, i8* null)
%r3899 = bitcast i8** %r3901 to i64*
%r3900 = add i64 0, 16
store i64 %r3900, i64* %r3899
%r3894 = call i64 @f36(i64* %env, i64* %r3896, i64* %r3899) ; @lookup-variable
store i64 %r3894, i64* %r3890
%r3903 = alloca i8*
call void @llvm.gcroot(i8** %r3903, i8* null)
%r3891 = bitcast i8** %r3903 to i64*
%r3902 = call i64 @f18(i64* %r3890) ; @get-procedure-env
store i64 %r3902, i64* %r3891
%r3905 = alloca i8*
call void @llvm.gcroot(i8** %r3905, i8* null)
%r3893 = bitcast i8** %r3905 to i64*
%r3908 = alloca i8*
call void @llvm.gcroot(i8** %r3908, i8* null)
%r3906 = bitcast i8** %r3908 to i64*
%r3907 = add i64 0, 8
store i64 %r3907, i64* %r3906
%r3904 = call i64 @f17(i64* %r3906, i64* %r3891) ; @make-env
store i64 %r3904, i64* %r3893
%r3911 = alloca i8*
call void @llvm.gcroot(i8** %r3911, i8* null)
%r3909 = bitcast i8** %r3911 to i64*
%r3914 = alloca i8*
call void @llvm.gcroot(i8** %r3914, i8* null)
%r3912 = bitcast i8** %r3914 to i64*
%r3913 = add i64 0, 0
store i64 %r3913, i64* %r3912
%r3917 = alloca i8*
call void @llvm.gcroot(i8** %r3917, i8* null)
%r3915 = bitcast i8** %r3917 to i64*
%r3916 = add i64 0, 4
store i64 %r3916, i64* %r3915
%r3910 = call i64 @f36(i64* %env, i64* %r3912, i64* %r3915) ; @lookup-variable
store i64 %r3910, i64* %r3909
%r3921 = alloca i8*
call void @llvm.gcroot(i8** %r3921, i8* null)
%r3919 = bitcast i8** %r3921 to i64*
%r3920 = add i64 0, 4
store i64 %r3920, i64* %r3919
%r3918 = call i64 @f13(i64* %r3893, i64* %r3919, i64* %r3909) ; @vector-set!
%r3926 = alloca i8*
call void @llvm.gcroot(i8** %r3926, i8* null)
%r3924 = bitcast i8** %r3926 to i64*
%r3929 = alloca i8*
call void @llvm.gcroot(i8** %r3929, i8* null)
%r3927 = bitcast i8** %r3929 to i64*
%r3928 = add i64 0, 0
store i64 %r3928, i64* %r3927
%r3932 = alloca i8*
call void @llvm.gcroot(i8** %r3932, i8* null)
%r3930 = bitcast i8** %r3932 to i64*
%r3931 = add i64 0, 8
store i64 %r3931, i64* %r3930
%r3925 = call i64 @f36(i64* %env, i64* %r3927, i64* %r3930) ; @lookup-variable
store i64 %r3925, i64* %r3924
%r3934 = alloca i8*
call void @llvm.gcroot(i8** %r3934, i8* null)
%r3923 = bitcast i8** %r3934 to i64*
%r3933 = call i64 @f29(i64* %r3924) ; @car
store i64 %r3933, i64* %r3923
%r3936 = alloca i8*
call void @llvm.gcroot(i8** %r3936, i8* null)
%r3922 = bitcast i8** %r3936 to i64*
%r3935 = call i64 @f29(i64* %r3923) ; @car
store i64 %r3935, i64* %r3922
%r3940 = alloca i8*
call void @llvm.gcroot(i8** %r3940, i8* null)
%r3938 = bitcast i8** %r3940 to i64*
%r3939 = add i64 0, 8
store i64 %r3939, i64* %r3938
%r3937 = call i64 @f13(i64* %r3893, i64* %r3938, i64* %r3922) ; @vector-set!
%r3942 = alloca i8*
call void @llvm.gcroot(i8** %r3942, i8* null)
%r3892 = bitcast i8** %r3942 to i64*
%r3941 = call i64 @f19(i64* %r3890) ; @get-procedure-nparams
store i64 %r3941, i64* %r3892
%r3943 = call i64 @f23(i64* %r3892, i64* %r3893) ; @fix-arbitrary-procs
%r3945 = bitcast [20 x i8]* @g3944 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r3945, i32 1, i64* %r3893)
%r3947 = alloca i8*
call void @llvm.gcroot(i8** %r3947, i8* null)
%r3888 = bitcast i8** %r3947 to i64*
%r3946 = call i64 @apply-procedure(i64* %r3890, i64* %r3893) ; @apply-procedure
store i64 %r3946, i64* %r3888
%r3948 = call i64 @f2(i64* %r3888) ; @raw-number
%r3949 = trunc i64 %r3948 to i1
br i1 %r3949, label %label130, label %label131
label130:
%r3952 = alloca i8*
call void @llvm.gcroot(i8** %r3952, i8* null)
%r3950 = bitcast i8** %r3952 to i64*
%r3955 = alloca i8*
call void @llvm.gcroot(i8** %r3955, i8* null)
%r3953 = bitcast i8** %r3955 to i64*
%r3954 = add i64 0, 0
store i64 %r3954, i64* %r3953
%r3958 = alloca i8*
call void @llvm.gcroot(i8** %r3958, i8* null)
%r3956 = bitcast i8** %r3958 to i64*
%r3957 = add i64 0, 8
store i64 %r3957, i64* %r3956
%r3951 = call i64 @f36(i64* %env, i64* %r3953, i64* %r3956) ; @lookup-variable
store i64 %r3951, i64* %r3950
%r3960 = alloca i8*
call void @llvm.gcroot(i8** %r3960, i8* null)
%r3869 = bitcast i8** %r3960 to i64*
%r3959 = call i64 @f29(i64* %r3950) ; @car
store i64 %r3959, i64* %r3869
br label %label132
label131:
%r3966 = alloca i8*
call void @llvm.gcroot(i8** %r3966, i8* null)
%r3961 = bitcast i8** %r3966 to i64*
%r3969 = alloca i8*
call void @llvm.gcroot(i8** %r3969, i8* null)
%r3967 = bitcast i8** %r3969 to i64*
%r3968 = add i64 0, 4
store i64 %r3968, i64* %r3967
%r3972 = alloca i8*
call void @llvm.gcroot(i8** %r3972, i8* null)
%r3970 = bitcast i8** %r3972 to i64*
%r3971 = add i64 0, 56
store i64 %r3971, i64* %r3970
%r3965 = call i64 @f36(i64* %env, i64* %r3967, i64* %r3970) ; @lookup-variable
store i64 %r3965, i64* %r3961
%r3974 = alloca i8*
call void @llvm.gcroot(i8** %r3974, i8* null)
%r3962 = bitcast i8** %r3974 to i64*
%r3973 = call i64 @f18(i64* %r3961) ; @get-procedure-env
store i64 %r3973, i64* %r3962
%r3976 = alloca i8*
call void @llvm.gcroot(i8** %r3976, i8* null)
%r3964 = bitcast i8** %r3976 to i64*
%r3979 = alloca i8*
call void @llvm.gcroot(i8** %r3979, i8* null)
%r3977 = bitcast i8** %r3979 to i64*
%r3978 = add i64 0, 8
store i64 %r3978, i64* %r3977
%r3975 = call i64 @f17(i64* %r3977, i64* %r3962) ; @make-env
store i64 %r3975, i64* %r3964
%r3982 = alloca i8*
call void @llvm.gcroot(i8** %r3982, i8* null)
%r3980 = bitcast i8** %r3982 to i64*
%r3985 = alloca i8*
call void @llvm.gcroot(i8** %r3985, i8* null)
%r3983 = bitcast i8** %r3985 to i64*
%r3984 = add i64 0, 0
store i64 %r3984, i64* %r3983
%r3988 = alloca i8*
call void @llvm.gcroot(i8** %r3988, i8* null)
%r3986 = bitcast i8** %r3988 to i64*
%r3987 = add i64 0, 4
store i64 %r3987, i64* %r3986
%r3981 = call i64 @f36(i64* %env, i64* %r3983, i64* %r3986) ; @lookup-variable
store i64 %r3981, i64* %r3980
%r3992 = alloca i8*
call void @llvm.gcroot(i8** %r3992, i8* null)
%r3990 = bitcast i8** %r3992 to i64*
%r3991 = add i64 0, 4
store i64 %r3991, i64* %r3990
%r3989 = call i64 @f13(i64* %r3964, i64* %r3990, i64* %r3980) ; @vector-set!
%r3996 = alloca i8*
call void @llvm.gcroot(i8** %r3996, i8* null)
%r3994 = bitcast i8** %r3996 to i64*
%r3999 = alloca i8*
call void @llvm.gcroot(i8** %r3999, i8* null)
%r3997 = bitcast i8** %r3999 to i64*
%r3998 = add i64 0, 0
store i64 %r3998, i64* %r3997
%r4002 = alloca i8*
call void @llvm.gcroot(i8** %r4002, i8* null)
%r4000 = bitcast i8** %r4002 to i64*
%r4001 = add i64 0, 8
store i64 %r4001, i64* %r4000
%r3995 = call i64 @f36(i64* %env, i64* %r3997, i64* %r4000) ; @lookup-variable
store i64 %r3995, i64* %r3994
%r4004 = alloca i8*
call void @llvm.gcroot(i8** %r4004, i8* null)
%r3993 = bitcast i8** %r4004 to i64*
%r4003 = call i64 @f30(i64* %r3994) ; @cdr
store i64 %r4003, i64* %r3993
%r4008 = alloca i8*
call void @llvm.gcroot(i8** %r4008, i8* null)
%r4006 = bitcast i8** %r4008 to i64*
%r4007 = add i64 0, 8
store i64 %r4007, i64* %r4006
%r4005 = call i64 @f13(i64* %r3964, i64* %r4006, i64* %r3993) ; @vector-set!
%r4010 = alloca i8*
call void @llvm.gcroot(i8** %r4010, i8* null)
%r3963 = bitcast i8** %r4010 to i64*
%r4009 = call i64 @f19(i64* %r3961) ; @get-procedure-nparams
store i64 %r4009, i64* %r3963
%r4011 = call i64 @f23(i64* %r3963, i64* %r3964) ; @fix-arbitrary-procs
%r4013 = bitcast [20 x i8]* @g4012 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r4013, i32 1, i64* %r3964)
%r4015 = alloca i8*
call void @llvm.gcroot(i8** %r4015, i8* null)
%r3869 = bitcast i8** %r4015 to i64*
%r4014 = call i64 @apply-procedure(i64* %r3961, i64* %r3964) ; @apply-procedure
store i64 %r4014, i64* %r3869
br label %label132
label132:
br label %label129
label129:
%r4016 = load i64* %r3869
ret i64 %r4016
}

; @f90
define i64 @f91(i64* %env) gc "shadow-stack" {
%r4039 = alloca i8*
call void @llvm.gcroot(i8** %r4039, i8* null)
%r4034 = bitcast i8** %r4039 to i64*
%r4042 = alloca i8*
call void @llvm.gcroot(i8** %r4042, i8* null)
%r4040 = bitcast i8** %r4042 to i64*
%r4041 = add i64 0, 4
store i64 %r4041, i64* %r4040
%r4045 = alloca i8*
call void @llvm.gcroot(i8** %r4045, i8* null)
%r4043 = bitcast i8** %r4045 to i64*
%r4044 = add i64 0, 4
store i64 %r4044, i64* %r4043
%r4038 = call i64 @f36(i64* %env, i64* %r4040, i64* %r4043) ; @lookup-variable
store i64 %r4038, i64* %r4034
%r4047 = alloca i8*
call void @llvm.gcroot(i8** %r4047, i8* null)
%r4035 = bitcast i8** %r4047 to i64*
%r4046 = call i64 @f18(i64* %r4034) ; @get-procedure-env
store i64 %r4046, i64* %r4035
%r4049 = alloca i8*
call void @llvm.gcroot(i8** %r4049, i8* null)
%r4037 = bitcast i8** %r4049 to i64*
%r4052 = alloca i8*
call void @llvm.gcroot(i8** %r4052, i8* null)
%r4050 = bitcast i8** %r4052 to i64*
%r4051 = add i64 0, 4
store i64 %r4051, i64* %r4050
%r4048 = call i64 @f17(i64* %r4050, i64* %r4035) ; @make-env
store i64 %r4048, i64* %r4037
%r4059 = alloca i8*
call void @llvm.gcroot(i8** %r4059, i8* null)
%r4054 = bitcast i8** %r4059 to i64*
%r4062 = alloca i8*
call void @llvm.gcroot(i8** %r4062, i8* null)
%r4060 = bitcast i8** %r4062 to i64*
%r4061 = add i64 0, 4
store i64 %r4061, i64* %r4060
%r4065 = alloca i8*
call void @llvm.gcroot(i8** %r4065, i8* null)
%r4063 = bitcast i8** %r4065 to i64*
%r4064 = add i64 0, 36
store i64 %r4064, i64* %r4063
%r4058 = call i64 @f36(i64* %env, i64* %r4060, i64* %r4063) ; @lookup-variable
store i64 %r4058, i64* %r4054
%r4067 = alloca i8*
call void @llvm.gcroot(i8** %r4067, i8* null)
%r4055 = bitcast i8** %r4067 to i64*
%r4066 = call i64 @f18(i64* %r4054) ; @get-procedure-env
store i64 %r4066, i64* %r4055
%r4069 = alloca i8*
call void @llvm.gcroot(i8** %r4069, i8* null)
%r4057 = bitcast i8** %r4069 to i64*
%r4072 = alloca i8*
call void @llvm.gcroot(i8** %r4072, i8* null)
%r4070 = bitcast i8** %r4072 to i64*
%r4071 = add i64 0, 8
store i64 %r4071, i64* %r4070
%r4068 = call i64 @f17(i64* %r4070, i64* %r4055) ; @make-env
store i64 %r4068, i64* %r4057
%r4076 = alloca i8*
call void @llvm.gcroot(i8** %r4076, i8* null)
%r4074 = bitcast i8** %r4076 to i64*
%r4079 = alloca i8*
call void @llvm.gcroot(i8** %r4079, i8* null)
%r4077 = bitcast i8** %r4079 to i64*
%r4078 = add i64 0, 0
store i64 %r4078, i64* %r4077
%r4082 = alloca i8*
call void @llvm.gcroot(i8** %r4082, i8* null)
%r4080 = bitcast i8** %r4082 to i64*
%r4081 = add i64 0, 4
store i64 %r4081, i64* %r4080
%r4075 = call i64 @f36(i64* %env, i64* %r4077, i64* %r4080) ; @lookup-variable
store i64 %r4075, i64* %r4074
%r4084 = alloca i8*
call void @llvm.gcroot(i8** %r4084, i8* null)
%r4073 = bitcast i8** %r4084 to i64*
%r4083 = call i64 @f33(i64* %r4074) ; @string->list
store i64 %r4083, i64* %r4073
%r4088 = alloca i8*
call void @llvm.gcroot(i8** %r4088, i8* null)
%r4086 = bitcast i8** %r4088 to i64*
%r4087 = add i64 0, 4
store i64 %r4087, i64* %r4086
%r4085 = call i64 @f13(i64* %r4057, i64* %r4086, i64* %r4073) ; @vector-set!
%r4092 = alloca i8*
call void @llvm.gcroot(i8** %r4092, i8* null)
%r4090 = bitcast i8** %r4092 to i64*
%r4095 = alloca i8*
call void @llvm.gcroot(i8** %r4095, i8* null)
%r4093 = bitcast i8** %r4095 to i64*
%r4094 = add i64 0, 0
store i64 %r4094, i64* %r4093
%r4098 = alloca i8*
call void @llvm.gcroot(i8** %r4098, i8* null)
%r4096 = bitcast i8** %r4098 to i64*
%r4097 = add i64 0, 8
store i64 %r4097, i64* %r4096
%r4091 = call i64 @f36(i64* %env, i64* %r4093, i64* %r4096) ; @lookup-variable
store i64 %r4091, i64* %r4090
%r4100 = alloca i8*
call void @llvm.gcroot(i8** %r4100, i8* null)
%r4089 = bitcast i8** %r4100 to i64*
%r4099 = call i64 @f33(i64* %r4090) ; @string->list
store i64 %r4099, i64* %r4089
%r4104 = alloca i8*
call void @llvm.gcroot(i8** %r4104, i8* null)
%r4102 = bitcast i8** %r4104 to i64*
%r4103 = add i64 0, 8
store i64 %r4103, i64* %r4102
%r4101 = call i64 @f13(i64* %r4057, i64* %r4102, i64* %r4089) ; @vector-set!
%r4106 = alloca i8*
call void @llvm.gcroot(i8** %r4106, i8* null)
%r4056 = bitcast i8** %r4106 to i64*
%r4105 = call i64 @f19(i64* %r4054) ; @get-procedure-nparams
store i64 %r4105, i64* %r4056
%r4107 = call i64 @f23(i64* %r4056, i64* %r4057) ; @fix-arbitrary-procs
%r4109 = bitcast [20 x i8]* @g4108 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r4109, i32 1, i64* %r4057)
%r4111 = alloca i8*
call void @llvm.gcroot(i8** %r4111, i8* null)
%r4053 = bitcast i8** %r4111 to i64*
%r4110 = call i64 @apply-procedure(i64* %r4054, i64* %r4057) ; @apply-procedure
store i64 %r4110, i64* %r4053
%r4115 = alloca i8*
call void @llvm.gcroot(i8** %r4115, i8* null)
%r4113 = bitcast i8** %r4115 to i64*
%r4114 = add i64 0, 4
store i64 %r4114, i64* %r4113
%r4112 = call i64 @f13(i64* %r4037, i64* %r4113, i64* %r4053) ; @vector-set!
%r4117 = alloca i8*
call void @llvm.gcroot(i8** %r4117, i8* null)
%r4036 = bitcast i8** %r4117 to i64*
%r4116 = call i64 @f19(i64* %r4034) ; @get-procedure-nparams
store i64 %r4116, i64* %r4036
%r4118 = call i64 @f23(i64* %r4036, i64* %r4037) ; @fix-arbitrary-procs
%r4120 = bitcast [20 x i8]* @g4119 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r4120, i32 1, i64* %r4037)
%r4122 = alloca i8*
call void @llvm.gcroot(i8** %r4122, i8* null)
%r4032 = bitcast i8** %r4122 to i64*
%r4121 = call i64 @apply-procedure(i64* %r4034, i64* %r4037) ; @apply-procedure
store i64 %r4121, i64* %r4032
%r4123 = load i64* %r4032
ret i64 %r4123
}

; @f92
define i64 @f93(i64* %env) gc "shadow-stack" {
%r4154 = alloca i8*
call void @llvm.gcroot(i8** %r4154, i8* null)
%r4151 = bitcast i8** %r4154 to i64*
%r4157 = alloca i8*
call void @llvm.gcroot(i8** %r4157, i8* null)
%r4155 = bitcast i8** %r4157 to i64*
%r4160 = alloca i8*
call void @llvm.gcroot(i8** %r4160, i8* null)
%r4158 = bitcast i8** %r4160 to i64*
%r4159 = add i64 0, 4
store i64 %r4159, i64* %r4158
%r4163 = alloca i8*
call void @llvm.gcroot(i8** %r4163, i8* null)
%r4161 = bitcast i8** %r4163 to i64*
%r4162 = add i64 0, 64
store i64 %r4162, i64* %r4161
%r4156 = call i64 @f36(i64* %env, i64* %r4158, i64* %r4161) ; @lookup-variable
store i64 %r4156, i64* %r4155
%r4165 = alloca i8*
call void @llvm.gcroot(i8** %r4165, i8* null)
%r4153 = bitcast i8** %r4165 to i64*
%r4164 = call i64 @null(i64* %r4155) ; @null?
store i64 %r4164, i64* %r4153
%r4166 = call i64 @f2(i64* %r4153) ; @raw-number
%r4167 = trunc i64 %r4166 to i1
br i1 %r4167, label %label133, label %label134
label133:
%r4171 = alloca i8*
call void @llvm.gcroot(i8** %r4171, i8* null)
%r4169 = bitcast i8** %r4171 to i64*
%r4170 = call i64 @llvm-read-char() ; @llvm-read-char
store i64 %r4170, i64* %r4169
%r4173 = alloca i8*
call void @llvm.gcroot(i8** %r4173, i8* null)
%r4168 = bitcast i8** %r4173 to i64*
%r4176 = alloca i8*
call void @llvm.gcroot(i8** %r4176, i8* null)
%r4174 = bitcast i8** %r4176 to i64*
%r4175 = add i64 0, 4
store i64 %r4175, i64* %r4174
%r4179 = alloca i8*
call void @llvm.gcroot(i8** %r4179, i8* null)
%r4177 = bitcast i8** %r4179 to i64*
%r4178 = add i64 0, 64
store i64 %r4178, i64* %r4177
%r4172 = call i64 @f37(i64* %env, i64* %r4174, i64* %r4177, i64* %r4169) ; @set-variable!
store i64 %r4172, i64* %r4168
%r4181 = alloca i8*
call void @llvm.gcroot(i8** %r4181, i8* null)
%r4151 = bitcast i8** %r4181 to i64*
%r4184 = alloca i8*
call void @llvm.gcroot(i8** %r4184, i8* null)
%r4182 = bitcast i8** %r4184 to i64*
%r4183 = add i64 0, 4
store i64 %r4183, i64* %r4182
%r4187 = alloca i8*
call void @llvm.gcroot(i8** %r4187, i8* null)
%r4185 = bitcast i8** %r4187 to i64*
%r4186 = add i64 0, 64
store i64 %r4186, i64* %r4185
%r4180 = call i64 @f36(i64* %env, i64* %r4182, i64* %r4185) ; @lookup-variable
store i64 %r4180, i64* %r4151
br label %label135
label134:
%r4189 = alloca i8*
call void @llvm.gcroot(i8** %r4189, i8* null)
%r4151 = bitcast i8** %r4189 to i64*
%r4192 = alloca i8*
call void @llvm.gcroot(i8** %r4192, i8* null)
%r4190 = bitcast i8** %r4192 to i64*
%r4191 = add i64 0, 4
store i64 %r4191, i64* %r4190
%r4195 = alloca i8*
call void @llvm.gcroot(i8** %r4195, i8* null)
%r4193 = bitcast i8** %r4195 to i64*
%r4194 = add i64 0, 64
store i64 %r4194, i64* %r4193
%r4188 = call i64 @f36(i64* %env, i64* %r4190, i64* %r4193) ; @lookup-variable
store i64 %r4188, i64* %r4151
br label %label135
label135:
%r4196 = load i64* %r4151
ret i64 %r4196
}

; @f95
define i64 @f96(i64* %env) gc "shadow-stack" {
%r4219 = alloca i8*
call void @llvm.gcroot(i8** %r4219, i8* null)
%r4217 = bitcast i8** %r4219 to i64*
%r4222 = alloca i8*
call void @llvm.gcroot(i8** %r4222, i8* null)
%r4220 = bitcast i8** %r4222 to i64*
%r4221 = add i64 0, 8
store i64 %r4221, i64* %r4220
%r4225 = alloca i8*
call void @llvm.gcroot(i8** %r4225, i8* null)
%r4223 = bitcast i8** %r4225 to i64*
%r4224 = add i64 0, 64
store i64 %r4224, i64* %r4223
%r4218 = call i64 @f36(i64* %env, i64* %r4220, i64* %r4223) ; @lookup-variable
store i64 %r4218, i64* %r4217
%r4227 = alloca i8*
call void @llvm.gcroot(i8** %r4227, i8* null)
%r4216 = bitcast i8** %r4227 to i64*
%r4230 = alloca i8*
call void @llvm.gcroot(i8** %r4230, i8* null)
%r4228 = bitcast i8** %r4230 to i64*
%r4229 = add i64 0, 0
store i64 %r4229, i64* %r4228
%r4233 = alloca i8*
call void @llvm.gcroot(i8** %r4233, i8* null)
%r4231 = bitcast i8** %r4233 to i64*
%r4232 = add i64 0, 4
store i64 %r4232, i64* %r4231
%r4226 = call i64 @f37(i64* %env, i64* %r4228, i64* %r4231, i64* %r4217) ; @set-variable!
store i64 %r4226, i64* %r4216
%r4235 = alloca i8*
call void @llvm.gcroot(i8** %r4235, i8* null)
%r4214 = bitcast i8** %r4235 to i64*
%r4238 = alloca i8*
call void @llvm.gcroot(i8** %r4238, i8* null)
%r4236 = bitcast i8** %r4238 to i64*
%r4241 = alloca i8*
call void @llvm.gcroot(i8** %r4241, i8* null)
%r4239 = bitcast i8** %r4241 to i64*
%r4240 = add i64 0, 0
store i64 %r4240, i64* %r4239
%r4244 = alloca i8*
call void @llvm.gcroot(i8** %r4244, i8* null)
%r4242 = bitcast i8** %r4244 to i64*
%r4243 = add i64 0, 4
store i64 %r4243, i64* %r4242
%r4237 = call i64 @f36(i64* %env, i64* %r4239, i64* %r4242) ; @lookup-variable
store i64 %r4237, i64* %r4236
%r4246 = alloca i8*
call void @llvm.gcroot(i8** %r4246, i8* null)
%r4234 = bitcast i8** %r4246 to i64*
%r4245 = call i64 @null(i64* %r4236) ; @null?
store i64 %r4245, i64* %r4234
%r4247 = call i64 @f2(i64* %r4234) ; @raw-number
%r4248 = trunc i64 %r4247 to i1
br i1 %r4248, label %label136, label %label137
label136:
%r4250 = alloca i8*
call void @llvm.gcroot(i8** %r4250, i8* null)
%r4214 = bitcast i8** %r4250 to i64*
%r4249 = call i64 @llvm-read-char() ; @llvm-read-char
store i64 %r4249, i64* %r4214
br label %label138
label137:
%r4254 = alloca i8*
call void @llvm.gcroot(i8** %r4254, i8* null)
%r4252 = bitcast i8** %r4254 to i64*
%r4253 = call i64 @make-null() ; @make-null
store i64 %r4253, i64* %r4252
%r4256 = alloca i8*
call void @llvm.gcroot(i8** %r4256, i8* null)
%r4251 = bitcast i8** %r4256 to i64*
%r4259 = alloca i8*
call void @llvm.gcroot(i8** %r4259, i8* null)
%r4257 = bitcast i8** %r4259 to i64*
%r4258 = add i64 0, 8
store i64 %r4258, i64* %r4257
%r4262 = alloca i8*
call void @llvm.gcroot(i8** %r4262, i8* null)
%r4260 = bitcast i8** %r4262 to i64*
%r4261 = add i64 0, 64
store i64 %r4261, i64* %r4260
%r4255 = call i64 @f37(i64* %env, i64* %r4257, i64* %r4260, i64* %r4252) ; @set-variable!
store i64 %r4255, i64* %r4251
%r4264 = alloca i8*
call void @llvm.gcroot(i8** %r4264, i8* null)
%r4214 = bitcast i8** %r4264 to i64*
%r4267 = alloca i8*
call void @llvm.gcroot(i8** %r4267, i8* null)
%r4265 = bitcast i8** %r4267 to i64*
%r4266 = add i64 0, 0
store i64 %r4266, i64* %r4265
%r4270 = alloca i8*
call void @llvm.gcroot(i8** %r4270, i8* null)
%r4268 = bitcast i8** %r4270 to i64*
%r4269 = add i64 0, 4
store i64 %r4269, i64* %r4268
%r4263 = call i64 @f36(i64* %env, i64* %r4265, i64* %r4268) ; @lookup-variable
store i64 %r4263, i64* %r4214
br label %label138
label138:
%r4271 = load i64* %r4214
ret i64 %r4271
}

; @f94
define i64 @f97(i64* %env) gc "shadow-stack" {
%r4273 = alloca i8*
call void @llvm.gcroot(i8** %r4273, i8* null)
%r4215 = bitcast i8** %r4273 to i64*
%r4276 = alloca i8*
call void @llvm.gcroot(i8** %r4276, i8* null)
%r4274 = bitcast i8** %r4276 to i64*
%r4275 = add i64 0, 4
store i64 %r4275, i64* %r4274
%r4272 = call i64 @f17(i64* %r4274, i64* %env) ; @make-env
store i64 %r4272, i64* %r4215
%r4278 = alloca i8*
call void @llvm.gcroot(i8** %r4278, i8* null)
%r4212 = bitcast i8** %r4278 to i64*
%r4277 = call i64 @f96(i64* %r4215) ; @f95
store i64 %r4277, i64* %r4212
%r4279 = load i64* %r4212
ret i64 %r4279
}

; @f98
define i64 @f99(i64* %env) gc "shadow-stack" {
%r4376 = alloca i8*
call void @llvm.gcroot(i8** %r4376, i8* null)
%r4371 = bitcast i8** %r4376 to i64*
%r4379 = alloca i8*
call void @llvm.gcroot(i8** %r4379, i8* null)
%r4377 = bitcast i8** %r4379 to i64*
%r4378 = add i64 0, 4
store i64 %r4378, i64* %r4377
%r4382 = alloca i8*
call void @llvm.gcroot(i8** %r4382, i8* null)
%r4380 = bitcast i8** %r4382 to i64*
%r4381 = add i64 0, 16
store i64 %r4381, i64* %r4380
%r4375 = call i64 @f36(i64* %env, i64* %r4377, i64* %r4380) ; @lookup-variable
store i64 %r4375, i64* %r4371
%r4384 = alloca i8*
call void @llvm.gcroot(i8** %r4384, i8* null)
%r4372 = bitcast i8** %r4384 to i64*
%r4383 = call i64 @f18(i64* %r4371) ; @get-procedure-env
store i64 %r4383, i64* %r4372
%r4386 = alloca i8*
call void @llvm.gcroot(i8** %r4386, i8* null)
%r4374 = bitcast i8** %r4386 to i64*
%r4389 = alloca i8*
call void @llvm.gcroot(i8** %r4389, i8* null)
%r4387 = bitcast i8** %r4389 to i64*
%r4388 = add i64 0, 8
store i64 %r4388, i64* %r4387
%r4385 = call i64 @f17(i64* %r4387, i64* %r4372) ; @make-env
store i64 %r4385, i64* %r4374
%r4392 = alloca i8*
call void @llvm.gcroot(i8** %r4392, i8* null)
%r4390 = bitcast i8** %r4392 to i64*
%r4395 = alloca i8*
call void @llvm.gcroot(i8** %r4395, i8* null)
%r4393 = bitcast i8** %r4395 to i64*
%r4394 = add i64 0, 0
store i64 %r4394, i64* %r4393
%r4398 = alloca i8*
call void @llvm.gcroot(i8** %r4398, i8* null)
%r4396 = bitcast i8** %r4398 to i64*
%r4397 = add i64 0, 4
store i64 %r4397, i64* %r4396
%r4391 = call i64 @f36(i64* %env, i64* %r4393, i64* %r4396) ; @lookup-variable
store i64 %r4391, i64* %r4390
%r4402 = alloca i8*
call void @llvm.gcroot(i8** %r4402, i8* null)
%r4400 = bitcast i8** %r4402 to i64*
%r4401 = add i64 0, 4
store i64 %r4401, i64* %r4400
%r4399 = call i64 @f13(i64* %r4374, i64* %r4400, i64* %r4390) ; @vector-set!
%r4405 = alloca i8*
call void @llvm.gcroot(i8** %r4405, i8* null)
%r4403 = bitcast i8** %r4405 to i64*
%r4404 = add i64 0, 128
store i64 %r4404, i64* %r4403
%r4409 = alloca i8*
call void @llvm.gcroot(i8** %r4409, i8* null)
%r4407 = bitcast i8** %r4409 to i64*
%r4408 = add i64 0, 8
store i64 %r4408, i64* %r4407
%r4406 = call i64 @f13(i64* %r4374, i64* %r4407, i64* %r4403) ; @vector-set!
%r4411 = alloca i8*
call void @llvm.gcroot(i8** %r4411, i8* null)
%r4373 = bitcast i8** %r4411 to i64*
%r4410 = call i64 @f19(i64* %r4371) ; @get-procedure-nparams
store i64 %r4410, i64* %r4373
%r4412 = call i64 @f23(i64* %r4373, i64* %r4374) ; @fix-arbitrary-procs
%r4414 = bitcast [20 x i8]* @g4413 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r4414, i32 1, i64* %r4374)
%r4416 = alloca i8*
call void @llvm.gcroot(i8** %r4416, i8* null)
%r4369 = bitcast i8** %r4416 to i64*
%r4415 = call i64 @apply-procedure(i64* %r4371, i64* %r4374) ; @apply-procedure
store i64 %r4415, i64* %r4369
%r4422 = alloca i8*
call void @llvm.gcroot(i8** %r4422, i8* null)
%r4417 = bitcast i8** %r4422 to i64*
%r4425 = alloca i8*
call void @llvm.gcroot(i8** %r4425, i8* null)
%r4423 = bitcast i8** %r4425 to i64*
%r4424 = add i64 0, 4
store i64 %r4424, i64* %r4423
%r4428 = alloca i8*
call void @llvm.gcroot(i8** %r4428, i8* null)
%r4426 = bitcast i8** %r4428 to i64*
%r4427 = add i64 0, 16
store i64 %r4427, i64* %r4426
%r4421 = call i64 @f36(i64* %env, i64* %r4423, i64* %r4426) ; @lookup-variable
store i64 %r4421, i64* %r4417
%r4430 = alloca i8*
call void @llvm.gcroot(i8** %r4430, i8* null)
%r4418 = bitcast i8** %r4430 to i64*
%r4429 = call i64 @f18(i64* %r4417) ; @get-procedure-env
store i64 %r4429, i64* %r4418
%r4432 = alloca i8*
call void @llvm.gcroot(i8** %r4432, i8* null)
%r4420 = bitcast i8** %r4432 to i64*
%r4435 = alloca i8*
call void @llvm.gcroot(i8** %r4435, i8* null)
%r4433 = bitcast i8** %r4435 to i64*
%r4434 = add i64 0, 8
store i64 %r4434, i64* %r4433
%r4431 = call i64 @f17(i64* %r4433, i64* %r4418) ; @make-env
store i64 %r4431, i64* %r4420
%r4438 = alloca i8*
call void @llvm.gcroot(i8** %r4438, i8* null)
%r4436 = bitcast i8** %r4438 to i64*
%r4441 = alloca i8*
call void @llvm.gcroot(i8** %r4441, i8* null)
%r4439 = bitcast i8** %r4441 to i64*
%r4440 = add i64 0, 0
store i64 %r4440, i64* %r4439
%r4444 = alloca i8*
call void @llvm.gcroot(i8** %r4444, i8* null)
%r4442 = bitcast i8** %r4444 to i64*
%r4443 = add i64 0, 4
store i64 %r4443, i64* %r4442
%r4437 = call i64 @f36(i64* %env, i64* %r4439, i64* %r4442) ; @lookup-variable
store i64 %r4437, i64* %r4436
%r4448 = alloca i8*
call void @llvm.gcroot(i8** %r4448, i8* null)
%r4446 = bitcast i8** %r4448 to i64*
%r4447 = add i64 0, 4
store i64 %r4447, i64* %r4446
%r4445 = call i64 @f13(i64* %r4420, i64* %r4446, i64* %r4436) ; @vector-set!
%r4451 = alloca i8*
call void @llvm.gcroot(i8** %r4451, i8* null)
%r4449 = bitcast i8** %r4451 to i64*
%r4450 = add i64 0, 40
store i64 %r4450, i64* %r4449
%r4455 = alloca i8*
call void @llvm.gcroot(i8** %r4455, i8* null)
%r4453 = bitcast i8** %r4455 to i64*
%r4454 = add i64 0, 8
store i64 %r4454, i64* %r4453
%r4452 = call i64 @f13(i64* %r4420, i64* %r4453, i64* %r4449) ; @vector-set!
%r4457 = alloca i8*
call void @llvm.gcroot(i8** %r4457, i8* null)
%r4419 = bitcast i8** %r4457 to i64*
%r4456 = call i64 @f19(i64* %r4417) ; @get-procedure-nparams
store i64 %r4456, i64* %r4419
%r4458 = call i64 @f23(i64* %r4419, i64* %r4420) ; @fix-arbitrary-procs
%r4460 = bitcast [20 x i8]* @g4459 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r4460, i32 1, i64* %r4420)
%r4462 = alloca i8*
call void @llvm.gcroot(i8** %r4462, i8* null)
%r4370 = bitcast i8** %r4462 to i64*
%r4461 = call i64 @apply-procedure(i64* %r4417, i64* %r4420) ; @apply-procedure
store i64 %r4461, i64* %r4370
%r4464 = alloca i8*
call void @llvm.gcroot(i8** %r4464, i8* null)
%r4367 = bitcast i8** %r4464 to i64*
%r4463 = call i64 @f4(i64* %r4369, i64* %r4370) ; @or
store i64 %r4463, i64* %r4367
%r4465 = load i64* %r4367
ret i64 %r4465
}

; @f100
define i64 @f101(i64* %env) gc "shadow-stack" {
%r4488 = alloca i8*
call void @llvm.gcroot(i8** %r4488, i8* null)
%r4483 = bitcast i8** %r4488 to i64*
%r4491 = alloca i8*
call void @llvm.gcroot(i8** %r4491, i8* null)
%r4489 = bitcast i8** %r4491 to i64*
%r4490 = add i64 0, 4
store i64 %r4490, i64* %r4489
%r4494 = alloca i8*
call void @llvm.gcroot(i8** %r4494, i8* null)
%r4492 = bitcast i8** %r4494 to i64*
%r4493 = add i64 0, 20
store i64 %r4493, i64* %r4492
%r4487 = call i64 @f36(i64* %env, i64* %r4489, i64* %r4492) ; @lookup-variable
store i64 %r4487, i64* %r4483
%r4496 = alloca i8*
call void @llvm.gcroot(i8** %r4496, i8* null)
%r4484 = bitcast i8** %r4496 to i64*
%r4495 = call i64 @f18(i64* %r4483) ; @get-procedure-env
store i64 %r4495, i64* %r4484
%r4498 = alloca i8*
call void @llvm.gcroot(i8** %r4498, i8* null)
%r4486 = bitcast i8** %r4498 to i64*
%r4501 = alloca i8*
call void @llvm.gcroot(i8** %r4501, i8* null)
%r4499 = bitcast i8** %r4501 to i64*
%r4500 = add i64 0, 8
store i64 %r4500, i64* %r4499
%r4497 = call i64 @f17(i64* %r4499, i64* %r4484) ; @make-env
store i64 %r4497, i64* %r4486
%r4504 = alloca i8*
call void @llvm.gcroot(i8** %r4504, i8* null)
%r4502 = bitcast i8** %r4504 to i64*
%r4507 = alloca i8*
call void @llvm.gcroot(i8** %r4507, i8* null)
%r4505 = bitcast i8** %r4507 to i64*
%r4506 = add i64 0, 0
store i64 %r4506, i64* %r4505
%r4510 = alloca i8*
call void @llvm.gcroot(i8** %r4510, i8* null)
%r4508 = bitcast i8** %r4510 to i64*
%r4509 = add i64 0, 4
store i64 %r4509, i64* %r4508
%r4503 = call i64 @f36(i64* %env, i64* %r4505, i64* %r4508) ; @lookup-variable
store i64 %r4503, i64* %r4502
%r4514 = alloca i8*
call void @llvm.gcroot(i8** %r4514, i8* null)
%r4512 = bitcast i8** %r4514 to i64*
%r4513 = add i64 0, 4
store i64 %r4513, i64* %r4512
%r4511 = call i64 @f13(i64* %r4486, i64* %r4512, i64* %r4502) ; @vector-set!
%r4517 = alloca i8*
call void @llvm.gcroot(i8** %r4517, i8* null)
%r4515 = bitcast i8** %r4517 to i64*
%r4520 = alloca i8*
call void @llvm.gcroot(i8** %r4520, i8* null)
%r4518 = bitcast i8** %r4520 to i64*
%r4519 = add i64 0, 4
store i64 %r4519, i64* %r4518
%r4523 = alloca i8*
call void @llvm.gcroot(i8** %r4523, i8* null)
%r4521 = bitcast i8** %r4523 to i64*
%r4522 = add i64 0, 76
store i64 %r4522, i64* %r4521
%r4516 = call i64 @f36(i64* %env, i64* %r4518, i64* %r4521) ; @lookup-variable
store i64 %r4516, i64* %r4515
%r4527 = alloca i8*
call void @llvm.gcroot(i8** %r4527, i8* null)
%r4525 = bitcast i8** %r4527 to i64*
%r4526 = add i64 0, 8
store i64 %r4526, i64* %r4525
%r4524 = call i64 @f13(i64* %r4486, i64* %r4525, i64* %r4515) ; @vector-set!
%r4529 = alloca i8*
call void @llvm.gcroot(i8** %r4529, i8* null)
%r4485 = bitcast i8** %r4529 to i64*
%r4528 = call i64 @f19(i64* %r4483) ; @get-procedure-nparams
store i64 %r4528, i64* %r4485
%r4530 = call i64 @f23(i64* %r4485, i64* %r4486) ; @fix-arbitrary-procs
%r4532 = bitcast [20 x i8]* @g4531 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r4532, i32 1, i64* %r4486)
%r4534 = alloca i8*
call void @llvm.gcroot(i8** %r4534, i8* null)
%r4481 = bitcast i8** %r4534 to i64*
%r4533 = call i64 @apply-procedure(i64* %r4483, i64* %r4486) ; @apply-procedure
store i64 %r4533, i64* %r4481
%r4535 = load i64* %r4481
ret i64 %r4535
}

; @f102
define i64 @f103(i64* %env) gc "shadow-stack" {
%r4558 = alloca i8*
call void @llvm.gcroot(i8** %r4558, i8* null)
%r4553 = bitcast i8** %r4558 to i64*
%r4561 = alloca i8*
call void @llvm.gcroot(i8** %r4561, i8* null)
%r4559 = bitcast i8** %r4561 to i64*
%r4560 = add i64 0, 4
store i64 %r4560, i64* %r4559
%r4564 = alloca i8*
call void @llvm.gcroot(i8** %r4564, i8* null)
%r4562 = bitcast i8** %r4564 to i64*
%r4563 = add i64 0, 16
store i64 %r4563, i64* %r4562
%r4557 = call i64 @f36(i64* %env, i64* %r4559, i64* %r4562) ; @lookup-variable
store i64 %r4557, i64* %r4553
%r4566 = alloca i8*
call void @llvm.gcroot(i8** %r4566, i8* null)
%r4554 = bitcast i8** %r4566 to i64*
%r4565 = call i64 @f18(i64* %r4553) ; @get-procedure-env
store i64 %r4565, i64* %r4554
%r4568 = alloca i8*
call void @llvm.gcroot(i8** %r4568, i8* null)
%r4556 = bitcast i8** %r4568 to i64*
%r4571 = alloca i8*
call void @llvm.gcroot(i8** %r4571, i8* null)
%r4569 = bitcast i8** %r4571 to i64*
%r4570 = add i64 0, 8
store i64 %r4570, i64* %r4569
%r4567 = call i64 @f17(i64* %r4569, i64* %r4554) ; @make-env
store i64 %r4567, i64* %r4556
%r4574 = alloca i8*
call void @llvm.gcroot(i8** %r4574, i8* null)
%r4572 = bitcast i8** %r4574 to i64*
%r4577 = alloca i8*
call void @llvm.gcroot(i8** %r4577, i8* null)
%r4575 = bitcast i8** %r4577 to i64*
%r4576 = add i64 0, 0
store i64 %r4576, i64* %r4575
%r4580 = alloca i8*
call void @llvm.gcroot(i8** %r4580, i8* null)
%r4578 = bitcast i8** %r4580 to i64*
%r4579 = add i64 0, 4
store i64 %r4579, i64* %r4578
%r4573 = call i64 @f36(i64* %env, i64* %r4575, i64* %r4578) ; @lookup-variable
store i64 %r4573, i64* %r4572
%r4584 = alloca i8*
call void @llvm.gcroot(i8** %r4584, i8* null)
%r4582 = bitcast i8** %r4584 to i64*
%r4583 = add i64 0, 4
store i64 %r4583, i64* %r4582
%r4581 = call i64 @f13(i64* %r4556, i64* %r4582, i64* %r4572) ; @vector-set!
%r4587 = alloca i8*
call void @llvm.gcroot(i8** %r4587, i8* null)
%r4585 = bitcast i8** %r4587 to i64*
%r4586 = add i64 0, 160
store i64 %r4586, i64* %r4585
%r4591 = alloca i8*
call void @llvm.gcroot(i8** %r4591, i8* null)
%r4589 = bitcast i8** %r4591 to i64*
%r4590 = add i64 0, 8
store i64 %r4590, i64* %r4589
%r4588 = call i64 @f13(i64* %r4556, i64* %r4589, i64* %r4585) ; @vector-set!
%r4593 = alloca i8*
call void @llvm.gcroot(i8** %r4593, i8* null)
%r4555 = bitcast i8** %r4593 to i64*
%r4592 = call i64 @f19(i64* %r4553) ; @get-procedure-nparams
store i64 %r4592, i64* %r4555
%r4594 = call i64 @f23(i64* %r4555, i64* %r4556) ; @fix-arbitrary-procs
%r4596 = bitcast [20 x i8]* @g4595 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r4596, i32 1, i64* %r4556)
%r4598 = alloca i8*
call void @llvm.gcroot(i8** %r4598, i8* null)
%r4551 = bitcast i8** %r4598 to i64*
%r4597 = call i64 @apply-procedure(i64* %r4553, i64* %r4556) ; @apply-procedure
store i64 %r4597, i64* %r4551
%r4599 = load i64* %r4551
ret i64 %r4599
}

; @f104
define i64 @f105(i64* %env) gc "shadow-stack" {
%r4622 = alloca i8*
call void @llvm.gcroot(i8** %r4622, i8* null)
%r4617 = bitcast i8** %r4622 to i64*
%r4625 = alloca i8*
call void @llvm.gcroot(i8** %r4625, i8* null)
%r4623 = bitcast i8** %r4625 to i64*
%r4624 = add i64 0, 4
store i64 %r4624, i64* %r4623
%r4628 = alloca i8*
call void @llvm.gcroot(i8** %r4628, i8* null)
%r4626 = bitcast i8** %r4628 to i64*
%r4627 = add i64 0, 16
store i64 %r4627, i64* %r4626
%r4621 = call i64 @f36(i64* %env, i64* %r4623, i64* %r4626) ; @lookup-variable
store i64 %r4621, i64* %r4617
%r4630 = alloca i8*
call void @llvm.gcroot(i8** %r4630, i8* null)
%r4618 = bitcast i8** %r4630 to i64*
%r4629 = call i64 @f18(i64* %r4617) ; @get-procedure-env
store i64 %r4629, i64* %r4618
%r4632 = alloca i8*
call void @llvm.gcroot(i8** %r4632, i8* null)
%r4620 = bitcast i8** %r4632 to i64*
%r4635 = alloca i8*
call void @llvm.gcroot(i8** %r4635, i8* null)
%r4633 = bitcast i8** %r4635 to i64*
%r4634 = add i64 0, 8
store i64 %r4634, i64* %r4633
%r4631 = call i64 @f17(i64* %r4633, i64* %r4618) ; @make-env
store i64 %r4631, i64* %r4620
%r4638 = alloca i8*
call void @llvm.gcroot(i8** %r4638, i8* null)
%r4636 = bitcast i8** %r4638 to i64*
%r4641 = alloca i8*
call void @llvm.gcroot(i8** %r4641, i8* null)
%r4639 = bitcast i8** %r4641 to i64*
%r4640 = add i64 0, 0
store i64 %r4640, i64* %r4639
%r4644 = alloca i8*
call void @llvm.gcroot(i8** %r4644, i8* null)
%r4642 = bitcast i8** %r4644 to i64*
%r4643 = add i64 0, 4
store i64 %r4643, i64* %r4642
%r4637 = call i64 @f36(i64* %env, i64* %r4639, i64* %r4642) ; @lookup-variable
store i64 %r4637, i64* %r4636
%r4648 = alloca i8*
call void @llvm.gcroot(i8** %r4648, i8* null)
%r4646 = bitcast i8** %r4648 to i64*
%r4647 = add i64 0, 4
store i64 %r4647, i64* %r4646
%r4645 = call i64 @f13(i64* %r4620, i64* %r4646, i64* %r4636) ; @vector-set!
%r4651 = alloca i8*
call void @llvm.gcroot(i8** %r4651, i8* null)
%r4649 = bitcast i8** %r4651 to i64*
%r4650 = add i64 0, 164
store i64 %r4650, i64* %r4649
%r4655 = alloca i8*
call void @llvm.gcroot(i8** %r4655, i8* null)
%r4653 = bitcast i8** %r4655 to i64*
%r4654 = add i64 0, 8
store i64 %r4654, i64* %r4653
%r4652 = call i64 @f13(i64* %r4620, i64* %r4653, i64* %r4649) ; @vector-set!
%r4657 = alloca i8*
call void @llvm.gcroot(i8** %r4657, i8* null)
%r4619 = bitcast i8** %r4657 to i64*
%r4656 = call i64 @f19(i64* %r4617) ; @get-procedure-nparams
store i64 %r4656, i64* %r4619
%r4658 = call i64 @f23(i64* %r4619, i64* %r4620) ; @fix-arbitrary-procs
%r4660 = bitcast [20 x i8]* @g4659 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r4660, i32 1, i64* %r4620)
%r4662 = alloca i8*
call void @llvm.gcroot(i8** %r4662, i8* null)
%r4615 = bitcast i8** %r4662 to i64*
%r4661 = call i64 @apply-procedure(i64* %r4617, i64* %r4620) ; @apply-procedure
store i64 %r4661, i64* %r4615
%r4663 = load i64* %r4615
ret i64 %r4663
}

; @f106
define i64 @f107(i64* %env) gc "shadow-stack" {
%r4686 = alloca i8*
call void @llvm.gcroot(i8** %r4686, i8* null)
%r4681 = bitcast i8** %r4686 to i64*
%r4689 = alloca i8*
call void @llvm.gcroot(i8** %r4689, i8* null)
%r4687 = bitcast i8** %r4689 to i64*
%r4688 = add i64 0, 4
store i64 %r4688, i64* %r4687
%r4692 = alloca i8*
call void @llvm.gcroot(i8** %r4692, i8* null)
%r4690 = bitcast i8** %r4692 to i64*
%r4691 = add i64 0, 16
store i64 %r4691, i64* %r4690
%r4685 = call i64 @f36(i64* %env, i64* %r4687, i64* %r4690) ; @lookup-variable
store i64 %r4685, i64* %r4681
%r4694 = alloca i8*
call void @llvm.gcroot(i8** %r4694, i8* null)
%r4682 = bitcast i8** %r4694 to i64*
%r4693 = call i64 @f18(i64* %r4681) ; @get-procedure-env
store i64 %r4693, i64* %r4682
%r4696 = alloca i8*
call void @llvm.gcroot(i8** %r4696, i8* null)
%r4684 = bitcast i8** %r4696 to i64*
%r4699 = alloca i8*
call void @llvm.gcroot(i8** %r4699, i8* null)
%r4697 = bitcast i8** %r4699 to i64*
%r4698 = add i64 0, 8
store i64 %r4698, i64* %r4697
%r4695 = call i64 @f17(i64* %r4697, i64* %r4682) ; @make-env
store i64 %r4695, i64* %r4684
%r4702 = alloca i8*
call void @llvm.gcroot(i8** %r4702, i8* null)
%r4700 = bitcast i8** %r4702 to i64*
%r4705 = alloca i8*
call void @llvm.gcroot(i8** %r4705, i8* null)
%r4703 = bitcast i8** %r4705 to i64*
%r4704 = add i64 0, 0
store i64 %r4704, i64* %r4703
%r4708 = alloca i8*
call void @llvm.gcroot(i8** %r4708, i8* null)
%r4706 = bitcast i8** %r4708 to i64*
%r4707 = add i64 0, 4
store i64 %r4707, i64* %r4706
%r4701 = call i64 @f36(i64* %env, i64* %r4703, i64* %r4706) ; @lookup-variable
store i64 %r4701, i64* %r4700
%r4712 = alloca i8*
call void @llvm.gcroot(i8** %r4712, i8* null)
%r4710 = bitcast i8** %r4712 to i64*
%r4711 = add i64 0, 4
store i64 %r4711, i64* %r4710
%r4709 = call i64 @f13(i64* %r4684, i64* %r4710, i64* %r4700) ; @vector-set!
%r4715 = alloca i8*
call void @llvm.gcroot(i8** %r4715, i8* null)
%r4713 = bitcast i8** %r4715 to i64*
%r4714 = add i64 0, 236
store i64 %r4714, i64* %r4713
%r4719 = alloca i8*
call void @llvm.gcroot(i8** %r4719, i8* null)
%r4717 = bitcast i8** %r4719 to i64*
%r4718 = add i64 0, 8
store i64 %r4718, i64* %r4717
%r4716 = call i64 @f13(i64* %r4684, i64* %r4717, i64* %r4713) ; @vector-set!
%r4721 = alloca i8*
call void @llvm.gcroot(i8** %r4721, i8* null)
%r4683 = bitcast i8** %r4721 to i64*
%r4720 = call i64 @f19(i64* %r4681) ; @get-procedure-nparams
store i64 %r4720, i64* %r4683
%r4722 = call i64 @f23(i64* %r4683, i64* %r4684) ; @fix-arbitrary-procs
%r4724 = bitcast [20 x i8]* @g4723 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r4724, i32 1, i64* %r4684)
%r4726 = alloca i8*
call void @llvm.gcroot(i8** %r4726, i8* null)
%r4679 = bitcast i8** %r4726 to i64*
%r4725 = call i64 @apply-procedure(i64* %r4681, i64* %r4684) ; @apply-procedure
store i64 %r4725, i64* %r4679
%r4727 = load i64* %r4679
ret i64 %r4727
}

; @f108
define i64 @f109(i64* %env) gc "shadow-stack" {
%r4750 = alloca i8*
call void @llvm.gcroot(i8** %r4750, i8* null)
%r4745 = bitcast i8** %r4750 to i64*
%r4753 = alloca i8*
call void @llvm.gcroot(i8** %r4753, i8* null)
%r4751 = bitcast i8** %r4753 to i64*
%r4752 = add i64 0, 4
store i64 %r4752, i64* %r4751
%r4756 = alloca i8*
call void @llvm.gcroot(i8** %r4756, i8* null)
%r4754 = bitcast i8** %r4756 to i64*
%r4755 = add i64 0, 16
store i64 %r4755, i64* %r4754
%r4749 = call i64 @f36(i64* %env, i64* %r4751, i64* %r4754) ; @lookup-variable
store i64 %r4749, i64* %r4745
%r4758 = alloca i8*
call void @llvm.gcroot(i8** %r4758, i8* null)
%r4746 = bitcast i8** %r4758 to i64*
%r4757 = call i64 @f18(i64* %r4745) ; @get-procedure-env
store i64 %r4757, i64* %r4746
%r4760 = alloca i8*
call void @llvm.gcroot(i8** %r4760, i8* null)
%r4748 = bitcast i8** %r4760 to i64*
%r4763 = alloca i8*
call void @llvm.gcroot(i8** %r4763, i8* null)
%r4761 = bitcast i8** %r4763 to i64*
%r4762 = add i64 0, 8
store i64 %r4762, i64* %r4761
%r4759 = call i64 @f17(i64* %r4761, i64* %r4746) ; @make-env
store i64 %r4759, i64* %r4748
%r4766 = alloca i8*
call void @llvm.gcroot(i8** %r4766, i8* null)
%r4764 = bitcast i8** %r4766 to i64*
%r4769 = alloca i8*
call void @llvm.gcroot(i8** %r4769, i8* null)
%r4767 = bitcast i8** %r4769 to i64*
%r4768 = add i64 0, 0
store i64 %r4768, i64* %r4767
%r4772 = alloca i8*
call void @llvm.gcroot(i8** %r4772, i8* null)
%r4770 = bitcast i8** %r4772 to i64*
%r4771 = add i64 0, 4
store i64 %r4771, i64* %r4770
%r4765 = call i64 @f36(i64* %env, i64* %r4767, i64* %r4770) ; @lookup-variable
store i64 %r4765, i64* %r4764
%r4776 = alloca i8*
call void @llvm.gcroot(i8** %r4776, i8* null)
%r4774 = bitcast i8** %r4776 to i64*
%r4775 = add i64 0, 4
store i64 %r4775, i64* %r4774
%r4773 = call i64 @f13(i64* %r4748, i64* %r4774, i64* %r4764) ; @vector-set!
%r4779 = alloca i8*
call void @llvm.gcroot(i8** %r4779, i8* null)
%r4777 = bitcast i8** %r4779 to i64*
%r4778 = add i64 0, 136
store i64 %r4778, i64* %r4777
%r4783 = alloca i8*
call void @llvm.gcroot(i8** %r4783, i8* null)
%r4781 = bitcast i8** %r4783 to i64*
%r4782 = add i64 0, 8
store i64 %r4782, i64* %r4781
%r4780 = call i64 @f13(i64* %r4748, i64* %r4781, i64* %r4777) ; @vector-set!
%r4785 = alloca i8*
call void @llvm.gcroot(i8** %r4785, i8* null)
%r4747 = bitcast i8** %r4785 to i64*
%r4784 = call i64 @f19(i64* %r4745) ; @get-procedure-nparams
store i64 %r4784, i64* %r4747
%r4786 = call i64 @f23(i64* %r4747, i64* %r4748) ; @fix-arbitrary-procs
%r4788 = bitcast [20 x i8]* @g4787 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r4788, i32 1, i64* %r4748)
%r4790 = alloca i8*
call void @llvm.gcroot(i8** %r4790, i8* null)
%r4743 = bitcast i8** %r4790 to i64*
%r4789 = call i64 @apply-procedure(i64* %r4745, i64* %r4748) ; @apply-procedure
store i64 %r4789, i64* %r4743
%r4791 = load i64* %r4743
ret i64 %r4791
}

; @f110
define i64 @f111(i64* %env) gc "shadow-stack" {
%r4814 = alloca i8*
call void @llvm.gcroot(i8** %r4814, i8* null)
%r4809 = bitcast i8** %r4814 to i64*
%r4817 = alloca i8*
call void @llvm.gcroot(i8** %r4817, i8* null)
%r4815 = bitcast i8** %r4817 to i64*
%r4816 = add i64 0, 4
store i64 %r4816, i64* %r4815
%r4820 = alloca i8*
call void @llvm.gcroot(i8** %r4820, i8* null)
%r4818 = bitcast i8** %r4820 to i64*
%r4819 = add i64 0, 16
store i64 %r4819, i64* %r4818
%r4813 = call i64 @f36(i64* %env, i64* %r4815, i64* %r4818) ; @lookup-variable
store i64 %r4813, i64* %r4809
%r4822 = alloca i8*
call void @llvm.gcroot(i8** %r4822, i8* null)
%r4810 = bitcast i8** %r4822 to i64*
%r4821 = call i64 @f18(i64* %r4809) ; @get-procedure-env
store i64 %r4821, i64* %r4810
%r4824 = alloca i8*
call void @llvm.gcroot(i8** %r4824, i8* null)
%r4812 = bitcast i8** %r4824 to i64*
%r4827 = alloca i8*
call void @llvm.gcroot(i8** %r4827, i8* null)
%r4825 = bitcast i8** %r4827 to i64*
%r4826 = add i64 0, 8
store i64 %r4826, i64* %r4825
%r4823 = call i64 @f17(i64* %r4825, i64* %r4810) ; @make-env
store i64 %r4823, i64* %r4812
%r4830 = alloca i8*
call void @llvm.gcroot(i8** %r4830, i8* null)
%r4828 = bitcast i8** %r4830 to i64*
%r4833 = alloca i8*
call void @llvm.gcroot(i8** %r4833, i8* null)
%r4831 = bitcast i8** %r4833 to i64*
%r4832 = add i64 0, 0
store i64 %r4832, i64* %r4831
%r4836 = alloca i8*
call void @llvm.gcroot(i8** %r4836, i8* null)
%r4834 = bitcast i8** %r4836 to i64*
%r4835 = add i64 0, 4
store i64 %r4835, i64* %r4834
%r4829 = call i64 @f36(i64* %env, i64* %r4831, i64* %r4834) ; @lookup-variable
store i64 %r4829, i64* %r4828
%r4840 = alloca i8*
call void @llvm.gcroot(i8** %r4840, i8* null)
%r4838 = bitcast i8** %r4840 to i64*
%r4839 = add i64 0, 4
store i64 %r4839, i64* %r4838
%r4837 = call i64 @f13(i64* %r4812, i64* %r4838, i64* %r4828) ; @vector-set!
%r4843 = alloca i8*
call void @llvm.gcroot(i8** %r4843, i8* null)
%r4841 = bitcast i8** %r4843 to i64*
%r4842 = add i64 0, 40
store i64 %r4842, i64* %r4841
%r4847 = alloca i8*
call void @llvm.gcroot(i8** %r4847, i8* null)
%r4845 = bitcast i8** %r4847 to i64*
%r4846 = add i64 0, 8
store i64 %r4846, i64* %r4845
%r4844 = call i64 @f13(i64* %r4812, i64* %r4845, i64* %r4841) ; @vector-set!
%r4849 = alloca i8*
call void @llvm.gcroot(i8** %r4849, i8* null)
%r4811 = bitcast i8** %r4849 to i64*
%r4848 = call i64 @f19(i64* %r4809) ; @get-procedure-nparams
store i64 %r4848, i64* %r4811
%r4850 = call i64 @f23(i64* %r4811, i64* %r4812) ; @fix-arbitrary-procs
%r4852 = bitcast [20 x i8]* @g4851 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r4852, i32 1, i64* %r4812)
%r4854 = alloca i8*
call void @llvm.gcroot(i8** %r4854, i8* null)
%r4807 = bitcast i8** %r4854 to i64*
%r4853 = call i64 @apply-procedure(i64* %r4809, i64* %r4812) ; @apply-procedure
store i64 %r4853, i64* %r4807
%r4855 = load i64* %r4807
ret i64 %r4855
}

; @f112
define i64 @f113(i64* %env) gc "shadow-stack" {
%r4878 = alloca i8*
call void @llvm.gcroot(i8** %r4878, i8* null)
%r4873 = bitcast i8** %r4878 to i64*
%r4881 = alloca i8*
call void @llvm.gcroot(i8** %r4881, i8* null)
%r4879 = bitcast i8** %r4881 to i64*
%r4880 = add i64 0, 4
store i64 %r4880, i64* %r4879
%r4884 = alloca i8*
call void @llvm.gcroot(i8** %r4884, i8* null)
%r4882 = bitcast i8** %r4884 to i64*
%r4883 = add i64 0, 16
store i64 %r4883, i64* %r4882
%r4877 = call i64 @f36(i64* %env, i64* %r4879, i64* %r4882) ; @lookup-variable
store i64 %r4877, i64* %r4873
%r4886 = alloca i8*
call void @llvm.gcroot(i8** %r4886, i8* null)
%r4874 = bitcast i8** %r4886 to i64*
%r4885 = call i64 @f18(i64* %r4873) ; @get-procedure-env
store i64 %r4885, i64* %r4874
%r4888 = alloca i8*
call void @llvm.gcroot(i8** %r4888, i8* null)
%r4876 = bitcast i8** %r4888 to i64*
%r4891 = alloca i8*
call void @llvm.gcroot(i8** %r4891, i8* null)
%r4889 = bitcast i8** %r4891 to i64*
%r4890 = add i64 0, 8
store i64 %r4890, i64* %r4889
%r4887 = call i64 @f17(i64* %r4889, i64* %r4874) ; @make-env
store i64 %r4887, i64* %r4876
%r4894 = alloca i8*
call void @llvm.gcroot(i8** %r4894, i8* null)
%r4892 = bitcast i8** %r4894 to i64*
%r4897 = alloca i8*
call void @llvm.gcroot(i8** %r4897, i8* null)
%r4895 = bitcast i8** %r4897 to i64*
%r4896 = add i64 0, 0
store i64 %r4896, i64* %r4895
%r4900 = alloca i8*
call void @llvm.gcroot(i8** %r4900, i8* null)
%r4898 = bitcast i8** %r4900 to i64*
%r4899 = add i64 0, 4
store i64 %r4899, i64* %r4898
%r4893 = call i64 @f36(i64* %env, i64* %r4895, i64* %r4898) ; @lookup-variable
store i64 %r4893, i64* %r4892
%r4904 = alloca i8*
call void @llvm.gcroot(i8** %r4904, i8* null)
%r4902 = bitcast i8** %r4904 to i64*
%r4903 = add i64 0, 4
store i64 %r4903, i64* %r4902
%r4901 = call i64 @f13(i64* %r4876, i64* %r4902, i64* %r4892) ; @vector-set!
%r4907 = alloca i8*
call void @llvm.gcroot(i8** %r4907, i8* null)
%r4905 = bitcast i8** %r4907 to i64*
%r4906 = add i64 0, 184
store i64 %r4906, i64* %r4905
%r4911 = alloca i8*
call void @llvm.gcroot(i8** %r4911, i8* null)
%r4909 = bitcast i8** %r4911 to i64*
%r4910 = add i64 0, 8
store i64 %r4910, i64* %r4909
%r4908 = call i64 @f13(i64* %r4876, i64* %r4909, i64* %r4905) ; @vector-set!
%r4913 = alloca i8*
call void @llvm.gcroot(i8** %r4913, i8* null)
%r4875 = bitcast i8** %r4913 to i64*
%r4912 = call i64 @f19(i64* %r4873) ; @get-procedure-nparams
store i64 %r4912, i64* %r4875
%r4914 = call i64 @f23(i64* %r4875, i64* %r4876) ; @fix-arbitrary-procs
%r4916 = bitcast [20 x i8]* @g4915 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r4916, i32 1, i64* %r4876)
%r4918 = alloca i8*
call void @llvm.gcroot(i8** %r4918, i8* null)
%r4871 = bitcast i8** %r4918 to i64*
%r4917 = call i64 @apply-procedure(i64* %r4873, i64* %r4876) ; @apply-procedure
store i64 %r4917, i64* %r4871
%r4919 = load i64* %r4871
ret i64 %r4919
}

; @f114
define i64 @f115(i64* %env) gc "shadow-stack" {
%r4942 = alloca i8*
call void @llvm.gcroot(i8** %r4942, i8* null)
%r4937 = bitcast i8** %r4942 to i64*
%r4945 = alloca i8*
call void @llvm.gcroot(i8** %r4945, i8* null)
%r4943 = bitcast i8** %r4945 to i64*
%r4944 = add i64 0, 4
store i64 %r4944, i64* %r4943
%r4948 = alloca i8*
call void @llvm.gcroot(i8** %r4948, i8* null)
%r4946 = bitcast i8** %r4948 to i64*
%r4947 = add i64 0, 16
store i64 %r4947, i64* %r4946
%r4941 = call i64 @f36(i64* %env, i64* %r4943, i64* %r4946) ; @lookup-variable
store i64 %r4941, i64* %r4937
%r4950 = alloca i8*
call void @llvm.gcroot(i8** %r4950, i8* null)
%r4938 = bitcast i8** %r4950 to i64*
%r4949 = call i64 @f18(i64* %r4937) ; @get-procedure-env
store i64 %r4949, i64* %r4938
%r4952 = alloca i8*
call void @llvm.gcroot(i8** %r4952, i8* null)
%r4940 = bitcast i8** %r4952 to i64*
%r4955 = alloca i8*
call void @llvm.gcroot(i8** %r4955, i8* null)
%r4953 = bitcast i8** %r4955 to i64*
%r4954 = add i64 0, 8
store i64 %r4954, i64* %r4953
%r4951 = call i64 @f17(i64* %r4953, i64* %r4938) ; @make-env
store i64 %r4951, i64* %r4940
%r4958 = alloca i8*
call void @llvm.gcroot(i8** %r4958, i8* null)
%r4956 = bitcast i8** %r4958 to i64*
%r4961 = alloca i8*
call void @llvm.gcroot(i8** %r4961, i8* null)
%r4959 = bitcast i8** %r4961 to i64*
%r4960 = add i64 0, 0
store i64 %r4960, i64* %r4959
%r4964 = alloca i8*
call void @llvm.gcroot(i8** %r4964, i8* null)
%r4962 = bitcast i8** %r4964 to i64*
%r4963 = add i64 0, 4
store i64 %r4963, i64* %r4962
%r4957 = call i64 @f36(i64* %env, i64* %r4959, i64* %r4962) ; @lookup-variable
store i64 %r4957, i64* %r4956
%r4968 = alloca i8*
call void @llvm.gcroot(i8** %r4968, i8* null)
%r4966 = bitcast i8** %r4968 to i64*
%r4967 = add i64 0, 4
store i64 %r4967, i64* %r4966
%r4965 = call i64 @f13(i64* %r4940, i64* %r4966, i64* %r4956) ; @vector-set!
%r4971 = alloca i8*
call void @llvm.gcroot(i8** %r4971, i8* null)
%r4969 = bitcast i8** %r4971 to i64*
%r4970 = add i64 0, 156
store i64 %r4970, i64* %r4969
%r4975 = alloca i8*
call void @llvm.gcroot(i8** %r4975, i8* null)
%r4973 = bitcast i8** %r4975 to i64*
%r4974 = add i64 0, 8
store i64 %r4974, i64* %r4973
%r4972 = call i64 @f13(i64* %r4940, i64* %r4973, i64* %r4969) ; @vector-set!
%r4977 = alloca i8*
call void @llvm.gcroot(i8** %r4977, i8* null)
%r4939 = bitcast i8** %r4977 to i64*
%r4976 = call i64 @f19(i64* %r4937) ; @get-procedure-nparams
store i64 %r4976, i64* %r4939
%r4978 = call i64 @f23(i64* %r4939, i64* %r4940) ; @fix-arbitrary-procs
%r4980 = bitcast [20 x i8]* @g4979 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r4980, i32 1, i64* %r4940)
%r4982 = alloca i8*
call void @llvm.gcroot(i8** %r4982, i8* null)
%r4935 = bitcast i8** %r4982 to i64*
%r4981 = call i64 @apply-procedure(i64* %r4937, i64* %r4940) ; @apply-procedure
store i64 %r4981, i64* %r4935
%r4983 = load i64* %r4935
ret i64 %r4983
}

; @f116
define i64 @f117(i64* %env) gc "shadow-stack" {
%r5006 = alloca i8*
call void @llvm.gcroot(i8** %r5006, i8* null)
%r5001 = bitcast i8** %r5006 to i64*
%r5009 = alloca i8*
call void @llvm.gcroot(i8** %r5009, i8* null)
%r5007 = bitcast i8** %r5009 to i64*
%r5008 = add i64 0, 4
store i64 %r5008, i64* %r5007
%r5012 = alloca i8*
call void @llvm.gcroot(i8** %r5012, i8* null)
%r5010 = bitcast i8** %r5012 to i64*
%r5011 = add i64 0, 16
store i64 %r5011, i64* %r5010
%r5005 = call i64 @f36(i64* %env, i64* %r5007, i64* %r5010) ; @lookup-variable
store i64 %r5005, i64* %r5001
%r5014 = alloca i8*
call void @llvm.gcroot(i8** %r5014, i8* null)
%r5002 = bitcast i8** %r5014 to i64*
%r5013 = call i64 @f18(i64* %r5001) ; @get-procedure-env
store i64 %r5013, i64* %r5002
%r5016 = alloca i8*
call void @llvm.gcroot(i8** %r5016, i8* null)
%r5004 = bitcast i8** %r5016 to i64*
%r5019 = alloca i8*
call void @llvm.gcroot(i8** %r5019, i8* null)
%r5017 = bitcast i8** %r5019 to i64*
%r5018 = add i64 0, 8
store i64 %r5018, i64* %r5017
%r5015 = call i64 @f17(i64* %r5017, i64* %r5002) ; @make-env
store i64 %r5015, i64* %r5004
%r5022 = alloca i8*
call void @llvm.gcroot(i8** %r5022, i8* null)
%r5020 = bitcast i8** %r5022 to i64*
%r5025 = alloca i8*
call void @llvm.gcroot(i8** %r5025, i8* null)
%r5023 = bitcast i8** %r5025 to i64*
%r5024 = add i64 0, 0
store i64 %r5024, i64* %r5023
%r5028 = alloca i8*
call void @llvm.gcroot(i8** %r5028, i8* null)
%r5026 = bitcast i8** %r5028 to i64*
%r5027 = add i64 0, 4
store i64 %r5027, i64* %r5026
%r5021 = call i64 @f36(i64* %env, i64* %r5023, i64* %r5026) ; @lookup-variable
store i64 %r5021, i64* %r5020
%r5032 = alloca i8*
call void @llvm.gcroot(i8** %r5032, i8* null)
%r5030 = bitcast i8** %r5032 to i64*
%r5031 = add i64 0, 4
store i64 %r5031, i64* %r5030
%r5029 = call i64 @f13(i64* %r5004, i64* %r5030, i64* %r5020) ; @vector-set!
%r5035 = alloca i8*
call void @llvm.gcroot(i8** %r5035, i8* null)
%r5033 = bitcast i8** %r5035 to i64*
%r5034 = add i64 0, 384
store i64 %r5034, i64* %r5033
%r5039 = alloca i8*
call void @llvm.gcroot(i8** %r5039, i8* null)
%r5037 = bitcast i8** %r5039 to i64*
%r5038 = add i64 0, 8
store i64 %r5038, i64* %r5037
%r5036 = call i64 @f13(i64* %r5004, i64* %r5037, i64* %r5033) ; @vector-set!
%r5041 = alloca i8*
call void @llvm.gcroot(i8** %r5041, i8* null)
%r5003 = bitcast i8** %r5041 to i64*
%r5040 = call i64 @f19(i64* %r5001) ; @get-procedure-nparams
store i64 %r5040, i64* %r5003
%r5042 = call i64 @f23(i64* %r5003, i64* %r5004) ; @fix-arbitrary-procs
%r5044 = bitcast [20 x i8]* @g5043 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5044, i32 1, i64* %r5004)
%r5046 = alloca i8*
call void @llvm.gcroot(i8** %r5046, i8* null)
%r4999 = bitcast i8** %r5046 to i64*
%r5045 = call i64 @apply-procedure(i64* %r5001, i64* %r5004) ; @apply-procedure
store i64 %r5045, i64* %r4999
%r5047 = load i64* %r4999
ret i64 %r5047
}

; @f118
define i64 @f119(i64* %env) gc "shadow-stack" {
%r5070 = alloca i8*
call void @llvm.gcroot(i8** %r5070, i8* null)
%r5065 = bitcast i8** %r5070 to i64*
%r5073 = alloca i8*
call void @llvm.gcroot(i8** %r5073, i8* null)
%r5071 = bitcast i8** %r5073 to i64*
%r5072 = add i64 0, 4
store i64 %r5072, i64* %r5071
%r5076 = alloca i8*
call void @llvm.gcroot(i8** %r5076, i8* null)
%r5074 = bitcast i8** %r5076 to i64*
%r5075 = add i64 0, 16
store i64 %r5075, i64* %r5074
%r5069 = call i64 @f36(i64* %env, i64* %r5071, i64* %r5074) ; @lookup-variable
store i64 %r5069, i64* %r5065
%r5078 = alloca i8*
call void @llvm.gcroot(i8** %r5078, i8* null)
%r5066 = bitcast i8** %r5078 to i64*
%r5077 = call i64 @f18(i64* %r5065) ; @get-procedure-env
store i64 %r5077, i64* %r5066
%r5080 = alloca i8*
call void @llvm.gcroot(i8** %r5080, i8* null)
%r5068 = bitcast i8** %r5080 to i64*
%r5083 = alloca i8*
call void @llvm.gcroot(i8** %r5083, i8* null)
%r5081 = bitcast i8** %r5083 to i64*
%r5082 = add i64 0, 8
store i64 %r5082, i64* %r5081
%r5079 = call i64 @f17(i64* %r5081, i64* %r5066) ; @make-env
store i64 %r5079, i64* %r5068
%r5086 = alloca i8*
call void @llvm.gcroot(i8** %r5086, i8* null)
%r5084 = bitcast i8** %r5086 to i64*
%r5089 = alloca i8*
call void @llvm.gcroot(i8** %r5089, i8* null)
%r5087 = bitcast i8** %r5089 to i64*
%r5088 = add i64 0, 0
store i64 %r5088, i64* %r5087
%r5092 = alloca i8*
call void @llvm.gcroot(i8** %r5092, i8* null)
%r5090 = bitcast i8** %r5092 to i64*
%r5091 = add i64 0, 4
store i64 %r5091, i64* %r5090
%r5085 = call i64 @f36(i64* %env, i64* %r5087, i64* %r5090) ; @lookup-variable
store i64 %r5085, i64* %r5084
%r5096 = alloca i8*
call void @llvm.gcroot(i8** %r5096, i8* null)
%r5094 = bitcast i8** %r5096 to i64*
%r5095 = add i64 0, 4
store i64 %r5095, i64* %r5094
%r5093 = call i64 @f13(i64* %r5068, i64* %r5094, i64* %r5084) ; @vector-set!
%r5099 = alloca i8*
call void @llvm.gcroot(i8** %r5099, i8* null)
%r5097 = bitcast i8** %r5099 to i64*
%r5098 = add i64 0, 176
store i64 %r5098, i64* %r5097
%r5103 = alloca i8*
call void @llvm.gcroot(i8** %r5103, i8* null)
%r5101 = bitcast i8** %r5103 to i64*
%r5102 = add i64 0, 8
store i64 %r5102, i64* %r5101
%r5100 = call i64 @f13(i64* %r5068, i64* %r5101, i64* %r5097) ; @vector-set!
%r5105 = alloca i8*
call void @llvm.gcroot(i8** %r5105, i8* null)
%r5067 = bitcast i8** %r5105 to i64*
%r5104 = call i64 @f19(i64* %r5065) ; @get-procedure-nparams
store i64 %r5104, i64* %r5067
%r5106 = call i64 @f23(i64* %r5067, i64* %r5068) ; @fix-arbitrary-procs
%r5108 = bitcast [20 x i8]* @g5107 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5108, i32 1, i64* %r5068)
%r5110 = alloca i8*
call void @llvm.gcroot(i8** %r5110, i8* null)
%r5063 = bitcast i8** %r5110 to i64*
%r5109 = call i64 @apply-procedure(i64* %r5065, i64* %r5068) ; @apply-procedure
store i64 %r5109, i64* %r5063
%r5111 = load i64* %r5063
ret i64 %r5111
}

; @f120
define i64 @f121(i64* %env) gc "shadow-stack" {
%r5134 = alloca i8*
call void @llvm.gcroot(i8** %r5134, i8* null)
%r5129 = bitcast i8** %r5134 to i64*
%r5137 = alloca i8*
call void @llvm.gcroot(i8** %r5137, i8* null)
%r5135 = bitcast i8** %r5137 to i64*
%r5136 = add i64 0, 4
store i64 %r5136, i64* %r5135
%r5140 = alloca i8*
call void @llvm.gcroot(i8** %r5140, i8* null)
%r5138 = bitcast i8** %r5140 to i64*
%r5139 = add i64 0, 16
store i64 %r5139, i64* %r5138
%r5133 = call i64 @f36(i64* %env, i64* %r5135, i64* %r5138) ; @lookup-variable
store i64 %r5133, i64* %r5129
%r5142 = alloca i8*
call void @llvm.gcroot(i8** %r5142, i8* null)
%r5130 = bitcast i8** %r5142 to i64*
%r5141 = call i64 @f18(i64* %r5129) ; @get-procedure-env
store i64 %r5141, i64* %r5130
%r5144 = alloca i8*
call void @llvm.gcroot(i8** %r5144, i8* null)
%r5132 = bitcast i8** %r5144 to i64*
%r5147 = alloca i8*
call void @llvm.gcroot(i8** %r5147, i8* null)
%r5145 = bitcast i8** %r5147 to i64*
%r5146 = add i64 0, 8
store i64 %r5146, i64* %r5145
%r5143 = call i64 @f17(i64* %r5145, i64* %r5130) ; @make-env
store i64 %r5143, i64* %r5132
%r5150 = alloca i8*
call void @llvm.gcroot(i8** %r5150, i8* null)
%r5148 = bitcast i8** %r5150 to i64*
%r5153 = alloca i8*
call void @llvm.gcroot(i8** %r5153, i8* null)
%r5151 = bitcast i8** %r5153 to i64*
%r5152 = add i64 0, 0
store i64 %r5152, i64* %r5151
%r5156 = alloca i8*
call void @llvm.gcroot(i8** %r5156, i8* null)
%r5154 = bitcast i8** %r5156 to i64*
%r5155 = add i64 0, 4
store i64 %r5155, i64* %r5154
%r5149 = call i64 @f36(i64* %env, i64* %r5151, i64* %r5154) ; @lookup-variable
store i64 %r5149, i64* %r5148
%r5160 = alloca i8*
call void @llvm.gcroot(i8** %r5160, i8* null)
%r5158 = bitcast i8** %r5160 to i64*
%r5159 = add i64 0, 4
store i64 %r5159, i64* %r5158
%r5157 = call i64 @f13(i64* %r5132, i64* %r5158, i64* %r5148) ; @vector-set!
%r5163 = alloca i8*
call void @llvm.gcroot(i8** %r5163, i8* null)
%r5161 = bitcast i8** %r5163 to i64*
%r5162 = add i64 0, 368
store i64 %r5162, i64* %r5161
%r5167 = alloca i8*
call void @llvm.gcroot(i8** %r5167, i8* null)
%r5165 = bitcast i8** %r5167 to i64*
%r5166 = add i64 0, 8
store i64 %r5166, i64* %r5165
%r5164 = call i64 @f13(i64* %r5132, i64* %r5165, i64* %r5161) ; @vector-set!
%r5169 = alloca i8*
call void @llvm.gcroot(i8** %r5169, i8* null)
%r5131 = bitcast i8** %r5169 to i64*
%r5168 = call i64 @f19(i64* %r5129) ; @get-procedure-nparams
store i64 %r5168, i64* %r5131
%r5170 = call i64 @f23(i64* %r5131, i64* %r5132) ; @fix-arbitrary-procs
%r5172 = bitcast [20 x i8]* @g5171 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5172, i32 1, i64* %r5132)
%r5174 = alloca i8*
call void @llvm.gcroot(i8** %r5174, i8* null)
%r5127 = bitcast i8** %r5174 to i64*
%r5173 = call i64 @apply-procedure(i64* %r5129, i64* %r5132) ; @apply-procedure
store i64 %r5173, i64* %r5127
%r5175 = load i64* %r5127
ret i64 %r5175
}

; @f122
define i64 @f123(i64* %env) gc "shadow-stack" {
%r5198 = alloca i8*
call void @llvm.gcroot(i8** %r5198, i8* null)
%r5193 = bitcast i8** %r5198 to i64*
%r5201 = alloca i8*
call void @llvm.gcroot(i8** %r5201, i8* null)
%r5199 = bitcast i8** %r5201 to i64*
%r5200 = add i64 0, 4
store i64 %r5200, i64* %r5199
%r5204 = alloca i8*
call void @llvm.gcroot(i8** %r5204, i8* null)
%r5202 = bitcast i8** %r5204 to i64*
%r5203 = add i64 0, 16
store i64 %r5203, i64* %r5202
%r5197 = call i64 @f36(i64* %env, i64* %r5199, i64* %r5202) ; @lookup-variable
store i64 %r5197, i64* %r5193
%r5206 = alloca i8*
call void @llvm.gcroot(i8** %r5206, i8* null)
%r5194 = bitcast i8** %r5206 to i64*
%r5205 = call i64 @f18(i64* %r5193) ; @get-procedure-env
store i64 %r5205, i64* %r5194
%r5208 = alloca i8*
call void @llvm.gcroot(i8** %r5208, i8* null)
%r5196 = bitcast i8** %r5208 to i64*
%r5211 = alloca i8*
call void @llvm.gcroot(i8** %r5211, i8* null)
%r5209 = bitcast i8** %r5211 to i64*
%r5210 = add i64 0, 8
store i64 %r5210, i64* %r5209
%r5207 = call i64 @f17(i64* %r5209, i64* %r5194) ; @make-env
store i64 %r5207, i64* %r5196
%r5214 = alloca i8*
call void @llvm.gcroot(i8** %r5214, i8* null)
%r5212 = bitcast i8** %r5214 to i64*
%r5217 = alloca i8*
call void @llvm.gcroot(i8** %r5217, i8* null)
%r5215 = bitcast i8** %r5217 to i64*
%r5216 = add i64 0, 0
store i64 %r5216, i64* %r5215
%r5220 = alloca i8*
call void @llvm.gcroot(i8** %r5220, i8* null)
%r5218 = bitcast i8** %r5220 to i64*
%r5219 = add i64 0, 4
store i64 %r5219, i64* %r5218
%r5213 = call i64 @f36(i64* %env, i64* %r5215, i64* %r5218) ; @lookup-variable
store i64 %r5213, i64* %r5212
%r5224 = alloca i8*
call void @llvm.gcroot(i8** %r5224, i8* null)
%r5222 = bitcast i8** %r5224 to i64*
%r5223 = add i64 0, 4
store i64 %r5223, i64* %r5222
%r5221 = call i64 @f13(i64* %r5196, i64* %r5222, i64* %r5212) ; @vector-set!
%r5227 = alloca i8*
call void @llvm.gcroot(i8** %r5227, i8* null)
%r5225 = bitcast i8** %r5227 to i64*
%r5226 = add i64 0, 140
store i64 %r5226, i64* %r5225
%r5231 = alloca i8*
call void @llvm.gcroot(i8** %r5231, i8* null)
%r5229 = bitcast i8** %r5231 to i64*
%r5230 = add i64 0, 8
store i64 %r5230, i64* %r5229
%r5228 = call i64 @f13(i64* %r5196, i64* %r5229, i64* %r5225) ; @vector-set!
%r5233 = alloca i8*
call void @llvm.gcroot(i8** %r5233, i8* null)
%r5195 = bitcast i8** %r5233 to i64*
%r5232 = call i64 @f19(i64* %r5193) ; @get-procedure-nparams
store i64 %r5232, i64* %r5195
%r5234 = call i64 @f23(i64* %r5195, i64* %r5196) ; @fix-arbitrary-procs
%r5236 = bitcast [20 x i8]* @g5235 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5236, i32 1, i64* %r5196)
%r5238 = alloca i8*
call void @llvm.gcroot(i8** %r5238, i8* null)
%r5191 = bitcast i8** %r5238 to i64*
%r5237 = call i64 @apply-procedure(i64* %r5193, i64* %r5196) ; @apply-procedure
store i64 %r5237, i64* %r5191
%r5239 = load i64* %r5191
ret i64 %r5239
}

; @f125
define i64 @f126(i64* %env) gc "shadow-stack" {
%r5302 = alloca i8*
call void @llvm.gcroot(i8** %r5302, i8* null)
%r5297 = bitcast i8** %r5302 to i64*
%r5305 = alloca i8*
call void @llvm.gcroot(i8** %r5305, i8* null)
%r5303 = bitcast i8** %r5305 to i64*
%r5304 = add i64 0, 8
store i64 %r5304, i64* %r5303
%r5308 = alloca i8*
call void @llvm.gcroot(i8** %r5308, i8* null)
%r5306 = bitcast i8** %r5308 to i64*
%r5307 = add i64 0, 72
store i64 %r5307, i64* %r5306
%r5301 = call i64 @f36(i64* %env, i64* %r5303, i64* %r5306) ; @lookup-variable
store i64 %r5301, i64* %r5297
%r5310 = alloca i8*
call void @llvm.gcroot(i8** %r5310, i8* null)
%r5298 = bitcast i8** %r5310 to i64*
%r5309 = call i64 @f18(i64* %r5297) ; @get-procedure-env
store i64 %r5309, i64* %r5298
%r5312 = alloca i8*
call void @llvm.gcroot(i8** %r5312, i8* null)
%r5300 = bitcast i8** %r5312 to i64*
%r5315 = alloca i8*
call void @llvm.gcroot(i8** %r5315, i8* null)
%r5313 = bitcast i8** %r5315 to i64*
%r5314 = add i64 0, 0
store i64 %r5314, i64* %r5313
%r5311 = call i64 @f17(i64* %r5313, i64* %r5298) ; @make-env
store i64 %r5311, i64* %r5300
%r5317 = alloca i8*
call void @llvm.gcroot(i8** %r5317, i8* null)
%r5299 = bitcast i8** %r5317 to i64*
%r5316 = call i64 @f19(i64* %r5297) ; @get-procedure-nparams
store i64 %r5316, i64* %r5299
%r5318 = call i64 @f23(i64* %r5299, i64* %r5300) ; @fix-arbitrary-procs
%r5320 = bitcast [20 x i8]* @g5319 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5320, i32 1, i64* %r5300)
%r5322 = alloca i8*
call void @llvm.gcroot(i8** %r5322, i8* null)
%r5296 = bitcast i8** %r5322 to i64*
%r5321 = call i64 @apply-procedure(i64* %r5297, i64* %r5300) ; @apply-procedure
store i64 %r5321, i64* %r5296
%r5324 = alloca i8*
call void @llvm.gcroot(i8** %r5324, i8* null)
%r5295 = bitcast i8** %r5324 to i64*
%r5327 = alloca i8*
call void @llvm.gcroot(i8** %r5327, i8* null)
%r5325 = bitcast i8** %r5327 to i64*
%r5326 = add i64 0, 0
store i64 %r5326, i64* %r5325
%r5330 = alloca i8*
call void @llvm.gcroot(i8** %r5330, i8* null)
%r5328 = bitcast i8** %r5330 to i64*
%r5329 = add i64 0, 4
store i64 %r5329, i64* %r5328
%r5323 = call i64 @f37(i64* %env, i64* %r5325, i64* %r5328, i64* %r5296) ; @set-variable!
store i64 %r5323, i64* %r5295
%r5332 = alloca i8*
call void @llvm.gcroot(i8** %r5332, i8* null)
%r5293 = bitcast i8** %r5332 to i64*
%r5338 = alloca i8*
call void @llvm.gcroot(i8** %r5338, i8* null)
%r5333 = bitcast i8** %r5338 to i64*
%r5341 = alloca i8*
call void @llvm.gcroot(i8** %r5341, i8* null)
%r5339 = bitcast i8** %r5341 to i64*
%r5340 = add i64 0, 8
store i64 %r5340, i64* %r5339
%r5344 = alloca i8*
call void @llvm.gcroot(i8** %r5344, i8* null)
%r5342 = bitcast i8** %r5344 to i64*
%r5343 = add i64 0, 88
store i64 %r5343, i64* %r5342
%r5337 = call i64 @f36(i64* %env, i64* %r5339, i64* %r5342) ; @lookup-variable
store i64 %r5337, i64* %r5333
%r5346 = alloca i8*
call void @llvm.gcroot(i8** %r5346, i8* null)
%r5334 = bitcast i8** %r5346 to i64*
%r5345 = call i64 @f18(i64* %r5333) ; @get-procedure-env
store i64 %r5345, i64* %r5334
%r5348 = alloca i8*
call void @llvm.gcroot(i8** %r5348, i8* null)
%r5336 = bitcast i8** %r5348 to i64*
%r5351 = alloca i8*
call void @llvm.gcroot(i8** %r5351, i8* null)
%r5349 = bitcast i8** %r5351 to i64*
%r5350 = add i64 0, 4
store i64 %r5350, i64* %r5349
%r5347 = call i64 @f17(i64* %r5349, i64* %r5334) ; @make-env
store i64 %r5347, i64* %r5336
%r5354 = alloca i8*
call void @llvm.gcroot(i8** %r5354, i8* null)
%r5352 = bitcast i8** %r5354 to i64*
%r5357 = alloca i8*
call void @llvm.gcroot(i8** %r5357, i8* null)
%r5355 = bitcast i8** %r5357 to i64*
%r5356 = add i64 0, 0
store i64 %r5356, i64* %r5355
%r5360 = alloca i8*
call void @llvm.gcroot(i8** %r5360, i8* null)
%r5358 = bitcast i8** %r5360 to i64*
%r5359 = add i64 0, 4
store i64 %r5359, i64* %r5358
%r5353 = call i64 @f36(i64* %env, i64* %r5355, i64* %r5358) ; @lookup-variable
store i64 %r5353, i64* %r5352
%r5364 = alloca i8*
call void @llvm.gcroot(i8** %r5364, i8* null)
%r5362 = bitcast i8** %r5364 to i64*
%r5363 = add i64 0, 4
store i64 %r5363, i64* %r5362
%r5361 = call i64 @f13(i64* %r5336, i64* %r5362, i64* %r5352) ; @vector-set!
%r5366 = alloca i8*
call void @llvm.gcroot(i8** %r5366, i8* null)
%r5335 = bitcast i8** %r5366 to i64*
%r5365 = call i64 @f19(i64* %r5333) ; @get-procedure-nparams
store i64 %r5365, i64* %r5335
%r5367 = call i64 @f23(i64* %r5335, i64* %r5336) ; @fix-arbitrary-procs
%r5369 = bitcast [20 x i8]* @g5368 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5369, i32 1, i64* %r5336)
%r5371 = alloca i8*
call void @llvm.gcroot(i8** %r5371, i8* null)
%r5331 = bitcast i8** %r5371 to i64*
%r5370 = call i64 @apply-procedure(i64* %r5333, i64* %r5336) ; @apply-procedure
store i64 %r5370, i64* %r5331
%r5372 = call i64 @f2(i64* %r5331) ; @raw-number
%r5373 = trunc i64 %r5372 to i1
br i1 %r5373, label %label139, label %label140
label139:
%r5379 = alloca i8*
call void @llvm.gcroot(i8** %r5379, i8* null)
%r5374 = bitcast i8** %r5379 to i64*
%r5382 = alloca i8*
call void @llvm.gcroot(i8** %r5382, i8* null)
%r5380 = bitcast i8** %r5382 to i64*
%r5381 = add i64 0, 8
store i64 %r5381, i64* %r5380
%r5385 = alloca i8*
call void @llvm.gcroot(i8** %r5385, i8* null)
%r5383 = bitcast i8** %r5385 to i64*
%r5384 = add i64 0, 148
store i64 %r5384, i64* %r5383
%r5378 = call i64 @f36(i64* %env, i64* %r5380, i64* %r5383) ; @lookup-variable
store i64 %r5378, i64* %r5374
%r5387 = alloca i8*
call void @llvm.gcroot(i8** %r5387, i8* null)
%r5375 = bitcast i8** %r5387 to i64*
%r5386 = call i64 @f18(i64* %r5374) ; @get-procedure-env
store i64 %r5386, i64* %r5375
%r5389 = alloca i8*
call void @llvm.gcroot(i8** %r5389, i8* null)
%r5377 = bitcast i8** %r5389 to i64*
%r5392 = alloca i8*
call void @llvm.gcroot(i8** %r5392, i8* null)
%r5390 = bitcast i8** %r5392 to i64*
%r5391 = add i64 0, 0
store i64 %r5391, i64* %r5390
%r5388 = call i64 @f17(i64* %r5390, i64* %r5375) ; @make-env
store i64 %r5388, i64* %r5377
%r5394 = alloca i8*
call void @llvm.gcroot(i8** %r5394, i8* null)
%r5376 = bitcast i8** %r5394 to i64*
%r5393 = call i64 @f19(i64* %r5374) ; @get-procedure-nparams
store i64 %r5393, i64* %r5376
%r5395 = call i64 @f23(i64* %r5376, i64* %r5377) ; @fix-arbitrary-procs
%r5397 = bitcast [20 x i8]* @g5396 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5397, i32 1, i64* %r5377)
%r5399 = alloca i8*
call void @llvm.gcroot(i8** %r5399, i8* null)
%r5293 = bitcast i8** %r5399 to i64*
%r5398 = call i64 @apply-procedure(i64* %r5374, i64* %r5377) ; @apply-procedure
store i64 %r5398, i64* %r5293
br label %label141
label140:
%r5401 = alloca i8*
call void @llvm.gcroot(i8** %r5401, i8* null)
%r5293 = bitcast i8** %r5401 to i64*
%r5407 = alloca i8*
call void @llvm.gcroot(i8** %r5407, i8* null)
%r5402 = bitcast i8** %r5407 to i64*
%r5410 = alloca i8*
call void @llvm.gcroot(i8** %r5410, i8* null)
%r5408 = bitcast i8** %r5410 to i64*
%r5409 = add i64 0, 8
store i64 %r5409, i64* %r5408
%r5413 = alloca i8*
call void @llvm.gcroot(i8** %r5413, i8* null)
%r5411 = bitcast i8** %r5413 to i64*
%r5412 = add i64 0, 80
store i64 %r5412, i64* %r5411
%r5406 = call i64 @f36(i64* %env, i64* %r5408, i64* %r5411) ; @lookup-variable
store i64 %r5406, i64* %r5402
%r5415 = alloca i8*
call void @llvm.gcroot(i8** %r5415, i8* null)
%r5403 = bitcast i8** %r5415 to i64*
%r5414 = call i64 @f18(i64* %r5402) ; @get-procedure-env
store i64 %r5414, i64* %r5403
%r5417 = alloca i8*
call void @llvm.gcroot(i8** %r5417, i8* null)
%r5405 = bitcast i8** %r5417 to i64*
%r5420 = alloca i8*
call void @llvm.gcroot(i8** %r5420, i8* null)
%r5418 = bitcast i8** %r5420 to i64*
%r5419 = add i64 0, 4
store i64 %r5419, i64* %r5418
%r5416 = call i64 @f17(i64* %r5418, i64* %r5403) ; @make-env
store i64 %r5416, i64* %r5405
%r5423 = alloca i8*
call void @llvm.gcroot(i8** %r5423, i8* null)
%r5421 = bitcast i8** %r5423 to i64*
%r5426 = alloca i8*
call void @llvm.gcroot(i8** %r5426, i8* null)
%r5424 = bitcast i8** %r5426 to i64*
%r5425 = add i64 0, 0
store i64 %r5425, i64* %r5424
%r5429 = alloca i8*
call void @llvm.gcroot(i8** %r5429, i8* null)
%r5427 = bitcast i8** %r5429 to i64*
%r5428 = add i64 0, 4
store i64 %r5428, i64* %r5427
%r5422 = call i64 @f36(i64* %env, i64* %r5424, i64* %r5427) ; @lookup-variable
store i64 %r5422, i64* %r5421
%r5433 = alloca i8*
call void @llvm.gcroot(i8** %r5433, i8* null)
%r5431 = bitcast i8** %r5433 to i64*
%r5432 = add i64 0, 4
store i64 %r5432, i64* %r5431
%r5430 = call i64 @f13(i64* %r5405, i64* %r5431, i64* %r5421) ; @vector-set!
%r5435 = alloca i8*
call void @llvm.gcroot(i8** %r5435, i8* null)
%r5404 = bitcast i8** %r5435 to i64*
%r5434 = call i64 @f19(i64* %r5402) ; @get-procedure-nparams
store i64 %r5434, i64* %r5404
%r5436 = call i64 @f23(i64* %r5404, i64* %r5405) ; @fix-arbitrary-procs
%r5438 = bitcast [20 x i8]* @g5437 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5438, i32 1, i64* %r5405)
%r5440 = alloca i8*
call void @llvm.gcroot(i8** %r5440, i8* null)
%r5400 = bitcast i8** %r5440 to i64*
%r5439 = call i64 @apply-procedure(i64* %r5402, i64* %r5405) ; @apply-procedure
store i64 %r5439, i64* %r5400
%r5441 = call i64 @f2(i64* %r5400) ; @raw-number
%r5442 = trunc i64 %r5441 to i1
br i1 %r5442, label %label142, label %label143
label142:
%r5448 = alloca i8*
call void @llvm.gcroot(i8** %r5448, i8* null)
%r5443 = bitcast i8** %r5448 to i64*
%r5451 = alloca i8*
call void @llvm.gcroot(i8** %r5451, i8* null)
%r5449 = bitcast i8** %r5451 to i64*
%r5450 = add i64 0, 8
store i64 %r5450, i64* %r5449
%r5454 = alloca i8*
call void @llvm.gcroot(i8** %r5454, i8* null)
%r5452 = bitcast i8** %r5454 to i64*
%r5453 = add i64 0, 136
store i64 %r5453, i64* %r5452
%r5447 = call i64 @f36(i64* %env, i64* %r5449, i64* %r5452) ; @lookup-variable
store i64 %r5447, i64* %r5443
%r5456 = alloca i8*
call void @llvm.gcroot(i8** %r5456, i8* null)
%r5444 = bitcast i8** %r5456 to i64*
%r5455 = call i64 @f18(i64* %r5443) ; @get-procedure-env
store i64 %r5455, i64* %r5444
%r5458 = alloca i8*
call void @llvm.gcroot(i8** %r5458, i8* null)
%r5446 = bitcast i8** %r5458 to i64*
%r5461 = alloca i8*
call void @llvm.gcroot(i8** %r5461, i8* null)
%r5459 = bitcast i8** %r5461 to i64*
%r5460 = add i64 0, 0
store i64 %r5460, i64* %r5459
%r5457 = call i64 @f17(i64* %r5459, i64* %r5444) ; @make-env
store i64 %r5457, i64* %r5446
%r5463 = alloca i8*
call void @llvm.gcroot(i8** %r5463, i8* null)
%r5445 = bitcast i8** %r5463 to i64*
%r5462 = call i64 @f19(i64* %r5443) ; @get-procedure-nparams
store i64 %r5462, i64* %r5445
%r5464 = call i64 @f23(i64* %r5445, i64* %r5446) ; @fix-arbitrary-procs
%r5466 = bitcast [20 x i8]* @g5465 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5466, i32 1, i64* %r5446)
%r5468 = alloca i8*
call void @llvm.gcroot(i8** %r5468, i8* null)
%r5293 = bitcast i8** %r5468 to i64*
%r5467 = call i64 @apply-procedure(i64* %r5443, i64* %r5446) ; @apply-procedure
store i64 %r5467, i64* %r5293
br label %label144
label143:
%r5470 = alloca i8*
call void @llvm.gcroot(i8** %r5470, i8* null)
%r5293 = bitcast i8** %r5470 to i64*
%r5476 = alloca i8*
call void @llvm.gcroot(i8** %r5476, i8* null)
%r5471 = bitcast i8** %r5476 to i64*
%r5479 = alloca i8*
call void @llvm.gcroot(i8** %r5479, i8* null)
%r5477 = bitcast i8** %r5479 to i64*
%r5478 = add i64 0, 8
store i64 %r5478, i64* %r5477
%r5482 = alloca i8*
call void @llvm.gcroot(i8** %r5482, i8* null)
%r5480 = bitcast i8** %r5482 to i64*
%r5481 = add i64 0, 96
store i64 %r5481, i64* %r5480
%r5475 = call i64 @f36(i64* %env, i64* %r5477, i64* %r5480) ; @lookup-variable
store i64 %r5475, i64* %r5471
%r5484 = alloca i8*
call void @llvm.gcroot(i8** %r5484, i8* null)
%r5472 = bitcast i8** %r5484 to i64*
%r5483 = call i64 @f18(i64* %r5471) ; @get-procedure-env
store i64 %r5483, i64* %r5472
%r5486 = alloca i8*
call void @llvm.gcroot(i8** %r5486, i8* null)
%r5474 = bitcast i8** %r5486 to i64*
%r5489 = alloca i8*
call void @llvm.gcroot(i8** %r5489, i8* null)
%r5487 = bitcast i8** %r5489 to i64*
%r5488 = add i64 0, 4
store i64 %r5488, i64* %r5487
%r5485 = call i64 @f17(i64* %r5487, i64* %r5472) ; @make-env
store i64 %r5485, i64* %r5474
%r5492 = alloca i8*
call void @llvm.gcroot(i8** %r5492, i8* null)
%r5490 = bitcast i8** %r5492 to i64*
%r5495 = alloca i8*
call void @llvm.gcroot(i8** %r5495, i8* null)
%r5493 = bitcast i8** %r5495 to i64*
%r5494 = add i64 0, 0
store i64 %r5494, i64* %r5493
%r5498 = alloca i8*
call void @llvm.gcroot(i8** %r5498, i8* null)
%r5496 = bitcast i8** %r5498 to i64*
%r5497 = add i64 0, 4
store i64 %r5497, i64* %r5496
%r5491 = call i64 @f36(i64* %env, i64* %r5493, i64* %r5496) ; @lookup-variable
store i64 %r5491, i64* %r5490
%r5502 = alloca i8*
call void @llvm.gcroot(i8** %r5502, i8* null)
%r5500 = bitcast i8** %r5502 to i64*
%r5501 = add i64 0, 4
store i64 %r5501, i64* %r5500
%r5499 = call i64 @f13(i64* %r5474, i64* %r5500, i64* %r5490) ; @vector-set!
%r5504 = alloca i8*
call void @llvm.gcroot(i8** %r5504, i8* null)
%r5473 = bitcast i8** %r5504 to i64*
%r5503 = call i64 @f19(i64* %r5471) ; @get-procedure-nparams
store i64 %r5503, i64* %r5473
%r5505 = call i64 @f23(i64* %r5473, i64* %r5474) ; @fix-arbitrary-procs
%r5507 = bitcast [20 x i8]* @g5506 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5507, i32 1, i64* %r5474)
%r5509 = alloca i8*
call void @llvm.gcroot(i8** %r5509, i8* null)
%r5469 = bitcast i8** %r5509 to i64*
%r5508 = call i64 @apply-procedure(i64* %r5471, i64* %r5474) ; @apply-procedure
store i64 %r5508, i64* %r5469
%r5510 = call i64 @f2(i64* %r5469) ; @raw-number
%r5511 = trunc i64 %r5510 to i1
br i1 %r5511, label %label145, label %label146
label145:
%r5518 = alloca i8*
call void @llvm.gcroot(i8** %r5518, i8* null)
%r5513 = bitcast i8** %r5518 to i64*
%r5521 = alloca i8*
call void @llvm.gcroot(i8** %r5521, i8* null)
%r5519 = bitcast i8** %r5521 to i64*
%r5520 = add i64 0, 8
store i64 %r5520, i64* %r5519
%r5524 = alloca i8*
call void @llvm.gcroot(i8** %r5524, i8* null)
%r5522 = bitcast i8** %r5524 to i64*
%r5523 = add i64 0, 144
store i64 %r5523, i64* %r5522
%r5517 = call i64 @f36(i64* %env, i64* %r5519, i64* %r5522) ; @lookup-variable
store i64 %r5517, i64* %r5513
%r5526 = alloca i8*
call void @llvm.gcroot(i8** %r5526, i8* null)
%r5514 = bitcast i8** %r5526 to i64*
%r5525 = call i64 @f18(i64* %r5513) ; @get-procedure-env
store i64 %r5525, i64* %r5514
%r5528 = alloca i8*
call void @llvm.gcroot(i8** %r5528, i8* null)
%r5516 = bitcast i8** %r5528 to i64*
%r5531 = alloca i8*
call void @llvm.gcroot(i8** %r5531, i8* null)
%r5529 = bitcast i8** %r5531 to i64*
%r5530 = add i64 0, 0
store i64 %r5530, i64* %r5529
%r5527 = call i64 @f17(i64* %r5529, i64* %r5514) ; @make-env
store i64 %r5527, i64* %r5516
%r5533 = alloca i8*
call void @llvm.gcroot(i8** %r5533, i8* null)
%r5515 = bitcast i8** %r5533 to i64*
%r5532 = call i64 @f19(i64* %r5513) ; @get-procedure-nparams
store i64 %r5532, i64* %r5515
%r5534 = call i64 @f23(i64* %r5515, i64* %r5516) ; @fix-arbitrary-procs
%r5536 = bitcast [20 x i8]* @g5535 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5536, i32 1, i64* %r5516)
%r5538 = alloca i8*
call void @llvm.gcroot(i8** %r5538, i8* null)
%r5512 = bitcast i8** %r5538 to i64*
%r5537 = call i64 @apply-procedure(i64* %r5513, i64* %r5516) ; @apply-procedure
store i64 %r5537, i64* %r5512
%r5544 = alloca i8*
call void @llvm.gcroot(i8** %r5544, i8* null)
%r5539 = bitcast i8** %r5544 to i64*
%r5547 = alloca i8*
call void @llvm.gcroot(i8** %r5547, i8* null)
%r5545 = bitcast i8** %r5547 to i64*
%r5546 = add i64 0, 8
store i64 %r5546, i64* %r5545
%r5550 = alloca i8*
call void @llvm.gcroot(i8** %r5550, i8* null)
%r5548 = bitcast i8** %r5550 to i64*
%r5549 = add i64 0, 136
store i64 %r5549, i64* %r5548
%r5543 = call i64 @f36(i64* %env, i64* %r5545, i64* %r5548) ; @lookup-variable
store i64 %r5543, i64* %r5539
%r5552 = alloca i8*
call void @llvm.gcroot(i8** %r5552, i8* null)
%r5540 = bitcast i8** %r5552 to i64*
%r5551 = call i64 @f18(i64* %r5539) ; @get-procedure-env
store i64 %r5551, i64* %r5540
%r5554 = alloca i8*
call void @llvm.gcroot(i8** %r5554, i8* null)
%r5542 = bitcast i8** %r5554 to i64*
%r5557 = alloca i8*
call void @llvm.gcroot(i8** %r5557, i8* null)
%r5555 = bitcast i8** %r5557 to i64*
%r5556 = add i64 0, 0
store i64 %r5556, i64* %r5555
%r5553 = call i64 @f17(i64* %r5555, i64* %r5540) ; @make-env
store i64 %r5553, i64* %r5542
%r5559 = alloca i8*
call void @llvm.gcroot(i8** %r5559, i8* null)
%r5541 = bitcast i8** %r5559 to i64*
%r5558 = call i64 @f19(i64* %r5539) ; @get-procedure-nparams
store i64 %r5558, i64* %r5541
%r5560 = call i64 @f23(i64* %r5541, i64* %r5542) ; @fix-arbitrary-procs
%r5562 = bitcast [20 x i8]* @g5561 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5562, i32 1, i64* %r5542)
%r5564 = alloca i8*
call void @llvm.gcroot(i8** %r5564, i8* null)
%r5293 = bitcast i8** %r5564 to i64*
%r5563 = call i64 @apply-procedure(i64* %r5539, i64* %r5542) ; @apply-procedure
store i64 %r5563, i64* %r5293
br label %label147
label146:
%r5566 = alloca i8*
call void @llvm.gcroot(i8** %r5566, i8* null)
%r5293 = bitcast i8** %r5566 to i64*
%r5572 = alloca i8*
call void @llvm.gcroot(i8** %r5572, i8* null)
%r5567 = bitcast i8** %r5572 to i64*
%r5575 = alloca i8*
call void @llvm.gcroot(i8** %r5575, i8* null)
%r5573 = bitcast i8** %r5575 to i64*
%r5574 = add i64 0, 8
store i64 %r5574, i64* %r5573
%r5578 = alloca i8*
call void @llvm.gcroot(i8** %r5578, i8* null)
%r5576 = bitcast i8** %r5578 to i64*
%r5577 = add i64 0, 112
store i64 %r5577, i64* %r5576
%r5571 = call i64 @f36(i64* %env, i64* %r5573, i64* %r5576) ; @lookup-variable
store i64 %r5571, i64* %r5567
%r5580 = alloca i8*
call void @llvm.gcroot(i8** %r5580, i8* null)
%r5568 = bitcast i8** %r5580 to i64*
%r5579 = call i64 @f18(i64* %r5567) ; @get-procedure-env
store i64 %r5579, i64* %r5568
%r5582 = alloca i8*
call void @llvm.gcroot(i8** %r5582, i8* null)
%r5570 = bitcast i8** %r5582 to i64*
%r5585 = alloca i8*
call void @llvm.gcroot(i8** %r5585, i8* null)
%r5583 = bitcast i8** %r5585 to i64*
%r5584 = add i64 0, 4
store i64 %r5584, i64* %r5583
%r5581 = call i64 @f17(i64* %r5583, i64* %r5568) ; @make-env
store i64 %r5581, i64* %r5570
%r5588 = alloca i8*
call void @llvm.gcroot(i8** %r5588, i8* null)
%r5586 = bitcast i8** %r5588 to i64*
%r5591 = alloca i8*
call void @llvm.gcroot(i8** %r5591, i8* null)
%r5589 = bitcast i8** %r5591 to i64*
%r5590 = add i64 0, 0
store i64 %r5590, i64* %r5589
%r5594 = alloca i8*
call void @llvm.gcroot(i8** %r5594, i8* null)
%r5592 = bitcast i8** %r5594 to i64*
%r5593 = add i64 0, 4
store i64 %r5593, i64* %r5592
%r5587 = call i64 @f36(i64* %env, i64* %r5589, i64* %r5592) ; @lookup-variable
store i64 %r5587, i64* %r5586
%r5598 = alloca i8*
call void @llvm.gcroot(i8** %r5598, i8* null)
%r5596 = bitcast i8** %r5598 to i64*
%r5597 = add i64 0, 4
store i64 %r5597, i64* %r5596
%r5595 = call i64 @f13(i64* %r5570, i64* %r5596, i64* %r5586) ; @vector-set!
%r5600 = alloca i8*
call void @llvm.gcroot(i8** %r5600, i8* null)
%r5569 = bitcast i8** %r5600 to i64*
%r5599 = call i64 @f19(i64* %r5567) ; @get-procedure-nparams
store i64 %r5599, i64* %r5569
%r5601 = call i64 @f23(i64* %r5569, i64* %r5570) ; @fix-arbitrary-procs
%r5603 = bitcast [20 x i8]* @g5602 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5603, i32 1, i64* %r5570)
%r5605 = alloca i8*
call void @llvm.gcroot(i8** %r5605, i8* null)
%r5565 = bitcast i8** %r5605 to i64*
%r5604 = call i64 @apply-procedure(i64* %r5567, i64* %r5570) ; @apply-procedure
store i64 %r5604, i64* %r5565
%r5606 = call i64 @f2(i64* %r5565) ; @raw-number
%r5607 = trunc i64 %r5606 to i1
br i1 %r5607, label %label148, label %label149
label148:
%r5611 = ptrtoint [6 x i8]* @g5610 to i64
%r5613 = alloca i8*
call void @llvm.gcroot(i8** %r5613, i8* null)
%r5608 = bitcast i8** %r5613 to i64*
%r5616 = alloca i8*
call void @llvm.gcroot(i8** %r5616, i8* null)
%r5614 = bitcast i8** %r5616 to i64*
%r5615 = add i64 0, 20
store i64 %r5615, i64* %r5614
%r5619 = alloca i8*
call void @llvm.gcroot(i8** %r5619, i8* null)
%r5617 = bitcast i8** %r5619 to i64*
%r5618 = add i64 0, 4
store i64 %r5618, i64* %r5617
%r5612 = call i64 @make-string-or-symbol(i64 %r5611, i64* %r5614, i64* %r5617)
store i64 %r5612, i64* %r5608
%r5627 = alloca i8*
call void @llvm.gcroot(i8** %r5627, i8* null)
%r5622 = bitcast i8** %r5627 to i64*
%r5630 = alloca i8*
call void @llvm.gcroot(i8** %r5630, i8* null)
%r5628 = bitcast i8** %r5630 to i64*
%r5629 = add i64 0, 8
store i64 %r5629, i64* %r5628
%r5633 = alloca i8*
call void @llvm.gcroot(i8** %r5633, i8* null)
%r5631 = bitcast i8** %r5633 to i64*
%r5632 = add i64 0, 136
store i64 %r5632, i64* %r5631
%r5626 = call i64 @f36(i64* %env, i64* %r5628, i64* %r5631) ; @lookup-variable
store i64 %r5626, i64* %r5622
%r5635 = alloca i8*
call void @llvm.gcroot(i8** %r5635, i8* null)
%r5623 = bitcast i8** %r5635 to i64*
%r5634 = call i64 @f18(i64* %r5622) ; @get-procedure-env
store i64 %r5634, i64* %r5623
%r5637 = alloca i8*
call void @llvm.gcroot(i8** %r5637, i8* null)
%r5625 = bitcast i8** %r5637 to i64*
%r5640 = alloca i8*
call void @llvm.gcroot(i8** %r5640, i8* null)
%r5638 = bitcast i8** %r5640 to i64*
%r5639 = add i64 0, 0
store i64 %r5639, i64* %r5638
%r5636 = call i64 @f17(i64* %r5638, i64* %r5623) ; @make-env
store i64 %r5636, i64* %r5625
%r5642 = alloca i8*
call void @llvm.gcroot(i8** %r5642, i8* null)
%r5624 = bitcast i8** %r5642 to i64*
%r5641 = call i64 @f19(i64* %r5622) ; @get-procedure-nparams
store i64 %r5641, i64* %r5624
%r5643 = call i64 @f23(i64* %r5624, i64* %r5625) ; @fix-arbitrary-procs
%r5645 = bitcast [20 x i8]* @g5644 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5645, i32 1, i64* %r5625)
%r5647 = alloca i8*
call void @llvm.gcroot(i8** %r5647, i8* null)
%r5620 = bitcast i8** %r5647 to i64*
%r5646 = call i64 @apply-procedure(i64* %r5622, i64* %r5625) ; @apply-procedure
store i64 %r5646, i64* %r5620
%r5649 = alloca i8*
call void @llvm.gcroot(i8** %r5649, i8* null)
%r5621 = bitcast i8** %r5649 to i64*
%r5648 = call i64 @make-null() ; @make-null
store i64 %r5648, i64* %r5621
%r5651 = alloca i8*
call void @llvm.gcroot(i8** %r5651, i8* null)
%r5609 = bitcast i8** %r5651 to i64*
%r5650 = call i64 @f21(i64* %r5620, i64* %r5621) ; @cons
store i64 %r5650, i64* %r5609
%r5653 = alloca i8*
call void @llvm.gcroot(i8** %r5653, i8* null)
%r5293 = bitcast i8** %r5653 to i64*
%r5652 = call i64 @f21(i64* %r5608, i64* %r5609) ; @cons
store i64 %r5652, i64* %r5293
br label %label150
label149:
%r5655 = alloca i8*
call void @llvm.gcroot(i8** %r5655, i8* null)
%r5293 = bitcast i8** %r5655 to i64*
%r5661 = alloca i8*
call void @llvm.gcroot(i8** %r5661, i8* null)
%r5656 = bitcast i8** %r5661 to i64*
%r5664 = alloca i8*
call void @llvm.gcroot(i8** %r5664, i8* null)
%r5662 = bitcast i8** %r5664 to i64*
%r5663 = add i64 0, 8
store i64 %r5663, i64* %r5662
%r5667 = alloca i8*
call void @llvm.gcroot(i8** %r5667, i8* null)
%r5665 = bitcast i8** %r5667 to i64*
%r5666 = add i64 0, 100
store i64 %r5666, i64* %r5665
%r5660 = call i64 @f36(i64* %env, i64* %r5662, i64* %r5665) ; @lookup-variable
store i64 %r5660, i64* %r5656
%r5669 = alloca i8*
call void @llvm.gcroot(i8** %r5669, i8* null)
%r5657 = bitcast i8** %r5669 to i64*
%r5668 = call i64 @f18(i64* %r5656) ; @get-procedure-env
store i64 %r5668, i64* %r5657
%r5671 = alloca i8*
call void @llvm.gcroot(i8** %r5671, i8* null)
%r5659 = bitcast i8** %r5671 to i64*
%r5674 = alloca i8*
call void @llvm.gcroot(i8** %r5674, i8* null)
%r5672 = bitcast i8** %r5674 to i64*
%r5673 = add i64 0, 4
store i64 %r5673, i64* %r5672
%r5670 = call i64 @f17(i64* %r5672, i64* %r5657) ; @make-env
store i64 %r5670, i64* %r5659
%r5677 = alloca i8*
call void @llvm.gcroot(i8** %r5677, i8* null)
%r5675 = bitcast i8** %r5677 to i64*
%r5680 = alloca i8*
call void @llvm.gcroot(i8** %r5680, i8* null)
%r5678 = bitcast i8** %r5680 to i64*
%r5679 = add i64 0, 0
store i64 %r5679, i64* %r5678
%r5683 = alloca i8*
call void @llvm.gcroot(i8** %r5683, i8* null)
%r5681 = bitcast i8** %r5683 to i64*
%r5682 = add i64 0, 4
store i64 %r5682, i64* %r5681
%r5676 = call i64 @f36(i64* %env, i64* %r5678, i64* %r5681) ; @lookup-variable
store i64 %r5676, i64* %r5675
%r5687 = alloca i8*
call void @llvm.gcroot(i8** %r5687, i8* null)
%r5685 = bitcast i8** %r5687 to i64*
%r5686 = add i64 0, 4
store i64 %r5686, i64* %r5685
%r5684 = call i64 @f13(i64* %r5659, i64* %r5685, i64* %r5675) ; @vector-set!
%r5689 = alloca i8*
call void @llvm.gcroot(i8** %r5689, i8* null)
%r5658 = bitcast i8** %r5689 to i64*
%r5688 = call i64 @f19(i64* %r5656) ; @get-procedure-nparams
store i64 %r5688, i64* %r5658
%r5690 = call i64 @f23(i64* %r5658, i64* %r5659) ; @fix-arbitrary-procs
%r5692 = bitcast [20 x i8]* @g5691 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5692, i32 1, i64* %r5659)
%r5694 = alloca i8*
call void @llvm.gcroot(i8** %r5694, i8* null)
%r5654 = bitcast i8** %r5694 to i64*
%r5693 = call i64 @apply-procedure(i64* %r5656, i64* %r5659) ; @apply-procedure
store i64 %r5693, i64* %r5654
%r5695 = call i64 @f2(i64* %r5654) ; @raw-number
%r5696 = trunc i64 %r5695 to i1
br i1 %r5696, label %label151, label %label152
label151:
%r5702 = alloca i8*
call void @llvm.gcroot(i8** %r5702, i8* null)
%r5697 = bitcast i8** %r5702 to i64*
%r5705 = alloca i8*
call void @llvm.gcroot(i8** %r5705, i8* null)
%r5703 = bitcast i8** %r5705 to i64*
%r5704 = add i64 0, 8
store i64 %r5704, i64* %r5703
%r5708 = alloca i8*
call void @llvm.gcroot(i8** %r5708, i8* null)
%r5706 = bitcast i8** %r5708 to i64*
%r5707 = add i64 0, 164
store i64 %r5707, i64* %r5706
%r5701 = call i64 @f36(i64* %env, i64* %r5703, i64* %r5706) ; @lookup-variable
store i64 %r5701, i64* %r5697
%r5710 = alloca i8*
call void @llvm.gcroot(i8** %r5710, i8* null)
%r5698 = bitcast i8** %r5710 to i64*
%r5709 = call i64 @f18(i64* %r5697) ; @get-procedure-env
store i64 %r5709, i64* %r5698
%r5712 = alloca i8*
call void @llvm.gcroot(i8** %r5712, i8* null)
%r5700 = bitcast i8** %r5712 to i64*
%r5715 = alloca i8*
call void @llvm.gcroot(i8** %r5715, i8* null)
%r5713 = bitcast i8** %r5715 to i64*
%r5714 = add i64 0, 0
store i64 %r5714, i64* %r5713
%r5711 = call i64 @f17(i64* %r5713, i64* %r5698) ; @make-env
store i64 %r5711, i64* %r5700
%r5717 = alloca i8*
call void @llvm.gcroot(i8** %r5717, i8* null)
%r5699 = bitcast i8** %r5717 to i64*
%r5716 = call i64 @f19(i64* %r5697) ; @get-procedure-nparams
store i64 %r5716, i64* %r5699
%r5718 = call i64 @f23(i64* %r5699, i64* %r5700) ; @fix-arbitrary-procs
%r5720 = bitcast [20 x i8]* @g5719 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5720, i32 1, i64* %r5700)
%r5722 = alloca i8*
call void @llvm.gcroot(i8** %r5722, i8* null)
%r5293 = bitcast i8** %r5722 to i64*
%r5721 = call i64 @apply-procedure(i64* %r5697, i64* %r5700) ; @apply-procedure
store i64 %r5721, i64* %r5293
br label %label153
label152:
%r5724 = alloca i8*
call void @llvm.gcroot(i8** %r5724, i8* null)
%r5293 = bitcast i8** %r5724 to i64*
%r5730 = alloca i8*
call void @llvm.gcroot(i8** %r5730, i8* null)
%r5725 = bitcast i8** %r5730 to i64*
%r5733 = alloca i8*
call void @llvm.gcroot(i8** %r5733, i8* null)
%r5731 = bitcast i8** %r5733 to i64*
%r5732 = add i64 0, 8
store i64 %r5732, i64* %r5731
%r5736 = alloca i8*
call void @llvm.gcroot(i8** %r5736, i8* null)
%r5734 = bitcast i8** %r5736 to i64*
%r5735 = add i64 0, 128
store i64 %r5735, i64* %r5734
%r5729 = call i64 @f36(i64* %env, i64* %r5731, i64* %r5734) ; @lookup-variable
store i64 %r5729, i64* %r5725
%r5738 = alloca i8*
call void @llvm.gcroot(i8** %r5738, i8* null)
%r5726 = bitcast i8** %r5738 to i64*
%r5737 = call i64 @f18(i64* %r5725) ; @get-procedure-env
store i64 %r5737, i64* %r5726
%r5740 = alloca i8*
call void @llvm.gcroot(i8** %r5740, i8* null)
%r5728 = bitcast i8** %r5740 to i64*
%r5743 = alloca i8*
call void @llvm.gcroot(i8** %r5743, i8* null)
%r5741 = bitcast i8** %r5743 to i64*
%r5742 = add i64 0, 4
store i64 %r5742, i64* %r5741
%r5739 = call i64 @f17(i64* %r5741, i64* %r5726) ; @make-env
store i64 %r5739, i64* %r5728
%r5746 = alloca i8*
call void @llvm.gcroot(i8** %r5746, i8* null)
%r5744 = bitcast i8** %r5746 to i64*
%r5749 = alloca i8*
call void @llvm.gcroot(i8** %r5749, i8* null)
%r5747 = bitcast i8** %r5749 to i64*
%r5748 = add i64 0, 0
store i64 %r5748, i64* %r5747
%r5752 = alloca i8*
call void @llvm.gcroot(i8** %r5752, i8* null)
%r5750 = bitcast i8** %r5752 to i64*
%r5751 = add i64 0, 4
store i64 %r5751, i64* %r5750
%r5745 = call i64 @f36(i64* %env, i64* %r5747, i64* %r5750) ; @lookup-variable
store i64 %r5745, i64* %r5744
%r5756 = alloca i8*
call void @llvm.gcroot(i8** %r5756, i8* null)
%r5754 = bitcast i8** %r5756 to i64*
%r5755 = add i64 0, 4
store i64 %r5755, i64* %r5754
%r5753 = call i64 @f13(i64* %r5728, i64* %r5754, i64* %r5744) ; @vector-set!
%r5758 = alloca i8*
call void @llvm.gcroot(i8** %r5758, i8* null)
%r5727 = bitcast i8** %r5758 to i64*
%r5757 = call i64 @f19(i64* %r5725) ; @get-procedure-nparams
store i64 %r5757, i64* %r5727
%r5759 = call i64 @f23(i64* %r5727, i64* %r5728) ; @fix-arbitrary-procs
%r5761 = bitcast [20 x i8]* @g5760 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5761, i32 1, i64* %r5728)
%r5763 = alloca i8*
call void @llvm.gcroot(i8** %r5763, i8* null)
%r5723 = bitcast i8** %r5763 to i64*
%r5762 = call i64 @apply-procedure(i64* %r5725, i64* %r5728) ; @apply-procedure
store i64 %r5762, i64* %r5723
%r5764 = call i64 @f2(i64* %r5723) ; @raw-number
%r5765 = trunc i64 %r5764 to i1
br i1 %r5765, label %label154, label %label155
label154:
%r5771 = alloca i8*
call void @llvm.gcroot(i8** %r5771, i8* null)
%r5766 = bitcast i8** %r5771 to i64*
%r5774 = alloca i8*
call void @llvm.gcroot(i8** %r5774, i8* null)
%r5772 = bitcast i8** %r5774 to i64*
%r5773 = add i64 0, 8
store i64 %r5773, i64* %r5772
%r5777 = alloca i8*
call void @llvm.gcroot(i8** %r5777, i8* null)
%r5775 = bitcast i8** %r5777 to i64*
%r5776 = add i64 0, 140
store i64 %r5776, i64* %r5775
%r5770 = call i64 @f36(i64* %env, i64* %r5772, i64* %r5775) ; @lookup-variable
store i64 %r5770, i64* %r5766
%r5779 = alloca i8*
call void @llvm.gcroot(i8** %r5779, i8* null)
%r5767 = bitcast i8** %r5779 to i64*
%r5778 = call i64 @f18(i64* %r5766) ; @get-procedure-env
store i64 %r5778, i64* %r5767
%r5781 = alloca i8*
call void @llvm.gcroot(i8** %r5781, i8* null)
%r5769 = bitcast i8** %r5781 to i64*
%r5784 = alloca i8*
call void @llvm.gcroot(i8** %r5784, i8* null)
%r5782 = bitcast i8** %r5784 to i64*
%r5783 = add i64 0, 0
store i64 %r5783, i64* %r5782
%r5780 = call i64 @f17(i64* %r5782, i64* %r5767) ; @make-env
store i64 %r5780, i64* %r5769
%r5786 = alloca i8*
call void @llvm.gcroot(i8** %r5786, i8* null)
%r5768 = bitcast i8** %r5786 to i64*
%r5785 = call i64 @f19(i64* %r5766) ; @get-procedure-nparams
store i64 %r5785, i64* %r5768
%r5787 = call i64 @f23(i64* %r5768, i64* %r5769) ; @fix-arbitrary-procs
%r5789 = bitcast [20 x i8]* @g5788 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5789, i32 1, i64* %r5769)
%r5791 = alloca i8*
call void @llvm.gcroot(i8** %r5791, i8* null)
%r5293 = bitcast i8** %r5791 to i64*
%r5790 = call i64 @apply-procedure(i64* %r5766, i64* %r5769) ; @apply-procedure
store i64 %r5790, i64* %r5293
br label %label156
label155:
%r5793 = alloca i8*
call void @llvm.gcroot(i8** %r5793, i8* null)
%r5293 = bitcast i8** %r5793 to i64*
%r5799 = alloca i8*
call void @llvm.gcroot(i8** %r5799, i8* null)
%r5794 = bitcast i8** %r5799 to i64*
%r5802 = alloca i8*
call void @llvm.gcroot(i8** %r5802, i8* null)
%r5800 = bitcast i8** %r5802 to i64*
%r5801 = add i64 0, 8
store i64 %r5801, i64* %r5800
%r5805 = alloca i8*
call void @llvm.gcroot(i8** %r5805, i8* null)
%r5803 = bitcast i8** %r5805 to i64*
%r5804 = add i64 0, 84
store i64 %r5804, i64* %r5803
%r5798 = call i64 @f36(i64* %env, i64* %r5800, i64* %r5803) ; @lookup-variable
store i64 %r5798, i64* %r5794
%r5807 = alloca i8*
call void @llvm.gcroot(i8** %r5807, i8* null)
%r5795 = bitcast i8** %r5807 to i64*
%r5806 = call i64 @f18(i64* %r5794) ; @get-procedure-env
store i64 %r5806, i64* %r5795
%r5809 = alloca i8*
call void @llvm.gcroot(i8** %r5809, i8* null)
%r5797 = bitcast i8** %r5809 to i64*
%r5812 = alloca i8*
call void @llvm.gcroot(i8** %r5812, i8* null)
%r5810 = bitcast i8** %r5812 to i64*
%r5811 = add i64 0, 4
store i64 %r5811, i64* %r5810
%r5808 = call i64 @f17(i64* %r5810, i64* %r5795) ; @make-env
store i64 %r5808, i64* %r5797
%r5815 = alloca i8*
call void @llvm.gcroot(i8** %r5815, i8* null)
%r5813 = bitcast i8** %r5815 to i64*
%r5818 = alloca i8*
call void @llvm.gcroot(i8** %r5818, i8* null)
%r5816 = bitcast i8** %r5818 to i64*
%r5817 = add i64 0, 0
store i64 %r5817, i64* %r5816
%r5821 = alloca i8*
call void @llvm.gcroot(i8** %r5821, i8* null)
%r5819 = bitcast i8** %r5821 to i64*
%r5820 = add i64 0, 4
store i64 %r5820, i64* %r5819
%r5814 = call i64 @f36(i64* %env, i64* %r5816, i64* %r5819) ; @lookup-variable
store i64 %r5814, i64* %r5813
%r5825 = alloca i8*
call void @llvm.gcroot(i8** %r5825, i8* null)
%r5823 = bitcast i8** %r5825 to i64*
%r5824 = add i64 0, 4
store i64 %r5824, i64* %r5823
%r5822 = call i64 @f13(i64* %r5797, i64* %r5823, i64* %r5813) ; @vector-set!
%r5827 = alloca i8*
call void @llvm.gcroot(i8** %r5827, i8* null)
%r5796 = bitcast i8** %r5827 to i64*
%r5826 = call i64 @f19(i64* %r5794) ; @get-procedure-nparams
store i64 %r5826, i64* %r5796
%r5828 = call i64 @f23(i64* %r5796, i64* %r5797) ; @fix-arbitrary-procs
%r5830 = bitcast [20 x i8]* @g5829 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5830, i32 1, i64* %r5797)
%r5832 = alloca i8*
call void @llvm.gcroot(i8** %r5832, i8* null)
%r5792 = bitcast i8** %r5832 to i64*
%r5831 = call i64 @apply-procedure(i64* %r5794, i64* %r5797) ; @apply-procedure
store i64 %r5831, i64* %r5792
%r5833 = call i64 @f2(i64* %r5792) ; @raw-number
%r5834 = trunc i64 %r5833 to i1
br i1 %r5834, label %label157, label %label158
label157:
%r5840 = alloca i8*
call void @llvm.gcroot(i8** %r5840, i8* null)
%r5835 = bitcast i8** %r5840 to i64*
%r5843 = alloca i8*
call void @llvm.gcroot(i8** %r5843, i8* null)
%r5841 = bitcast i8** %r5843 to i64*
%r5842 = add i64 0, 8
store i64 %r5842, i64* %r5841
%r5846 = alloca i8*
call void @llvm.gcroot(i8** %r5846, i8* null)
%r5844 = bitcast i8** %r5846 to i64*
%r5845 = add i64 0, 156
store i64 %r5845, i64* %r5844
%r5839 = call i64 @f36(i64* %env, i64* %r5841, i64* %r5844) ; @lookup-variable
store i64 %r5839, i64* %r5835
%r5848 = alloca i8*
call void @llvm.gcroot(i8** %r5848, i8* null)
%r5836 = bitcast i8** %r5848 to i64*
%r5847 = call i64 @f18(i64* %r5835) ; @get-procedure-env
store i64 %r5847, i64* %r5836
%r5850 = alloca i8*
call void @llvm.gcroot(i8** %r5850, i8* null)
%r5838 = bitcast i8** %r5850 to i64*
%r5853 = alloca i8*
call void @llvm.gcroot(i8** %r5853, i8* null)
%r5851 = bitcast i8** %r5853 to i64*
%r5852 = add i64 0, 4
store i64 %r5852, i64* %r5851
%r5849 = call i64 @f17(i64* %r5851, i64* %r5836) ; @make-env
store i64 %r5849, i64* %r5838
%r5856 = alloca i8*
call void @llvm.gcroot(i8** %r5856, i8* null)
%r5854 = bitcast i8** %r5856 to i64*
%r5859 = alloca i8*
call void @llvm.gcroot(i8** %r5859, i8* null)
%r5857 = bitcast i8** %r5859 to i64*
%r5858 = add i64 0, 0
store i64 %r5858, i64* %r5857
%r5862 = alloca i8*
call void @llvm.gcroot(i8** %r5862, i8* null)
%r5860 = bitcast i8** %r5862 to i64*
%r5861 = add i64 0, 4
store i64 %r5861, i64* %r5860
%r5855 = call i64 @f36(i64* %env, i64* %r5857, i64* %r5860) ; @lookup-variable
store i64 %r5855, i64* %r5854
%r5866 = alloca i8*
call void @llvm.gcroot(i8** %r5866, i8* null)
%r5864 = bitcast i8** %r5866 to i64*
%r5865 = add i64 0, 4
store i64 %r5865, i64* %r5864
%r5863 = call i64 @f13(i64* %r5838, i64* %r5864, i64* %r5854) ; @vector-set!
%r5868 = alloca i8*
call void @llvm.gcroot(i8** %r5868, i8* null)
%r5837 = bitcast i8** %r5868 to i64*
%r5867 = call i64 @f19(i64* %r5835) ; @get-procedure-nparams
store i64 %r5867, i64* %r5837
%r5869 = call i64 @f23(i64* %r5837, i64* %r5838) ; @fix-arbitrary-procs
%r5871 = bitcast [20 x i8]* @g5870 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5871, i32 1, i64* %r5838)
%r5873 = alloca i8*
call void @llvm.gcroot(i8** %r5873, i8* null)
%r5293 = bitcast i8** %r5873 to i64*
%r5872 = call i64 @apply-procedure(i64* %r5835, i64* %r5838) ; @apply-procedure
store i64 %r5872, i64* %r5293
br label %label159
label158:
%r5879 = alloca i8*
call void @llvm.gcroot(i8** %r5879, i8* null)
%r5874 = bitcast i8** %r5879 to i64*
%r5882 = alloca i8*
call void @llvm.gcroot(i8** %r5882, i8* null)
%r5880 = bitcast i8** %r5882 to i64*
%r5881 = add i64 0, 8
store i64 %r5881, i64* %r5880
%r5885 = alloca i8*
call void @llvm.gcroot(i8** %r5885, i8* null)
%r5883 = bitcast i8** %r5885 to i64*
%r5884 = add i64 0, 160
store i64 %r5884, i64* %r5883
%r5878 = call i64 @f36(i64* %env, i64* %r5880, i64* %r5883) ; @lookup-variable
store i64 %r5878, i64* %r5874
%r5887 = alloca i8*
call void @llvm.gcroot(i8** %r5887, i8* null)
%r5875 = bitcast i8** %r5887 to i64*
%r5886 = call i64 @f18(i64* %r5874) ; @get-procedure-env
store i64 %r5886, i64* %r5875
%r5889 = alloca i8*
call void @llvm.gcroot(i8** %r5889, i8* null)
%r5877 = bitcast i8** %r5889 to i64*
%r5892 = alloca i8*
call void @llvm.gcroot(i8** %r5892, i8* null)
%r5890 = bitcast i8** %r5892 to i64*
%r5891 = add i64 0, 4
store i64 %r5891, i64* %r5890
%r5888 = call i64 @f17(i64* %r5890, i64* %r5875) ; @make-env
store i64 %r5888, i64* %r5877
%r5895 = alloca i8*
call void @llvm.gcroot(i8** %r5895, i8* null)
%r5893 = bitcast i8** %r5895 to i64*
%r5898 = alloca i8*
call void @llvm.gcroot(i8** %r5898, i8* null)
%r5896 = bitcast i8** %r5898 to i64*
%r5897 = add i64 0, 0
store i64 %r5897, i64* %r5896
%r5901 = alloca i8*
call void @llvm.gcroot(i8** %r5901, i8* null)
%r5899 = bitcast i8** %r5901 to i64*
%r5900 = add i64 0, 4
store i64 %r5900, i64* %r5899
%r5894 = call i64 @f36(i64* %env, i64* %r5896, i64* %r5899) ; @lookup-variable
store i64 %r5894, i64* %r5893
%r5905 = alloca i8*
call void @llvm.gcroot(i8** %r5905, i8* null)
%r5903 = bitcast i8** %r5905 to i64*
%r5904 = add i64 0, 4
store i64 %r5904, i64* %r5903
%r5902 = call i64 @f13(i64* %r5877, i64* %r5903, i64* %r5893) ; @vector-set!
%r5907 = alloca i8*
call void @llvm.gcroot(i8** %r5907, i8* null)
%r5876 = bitcast i8** %r5907 to i64*
%r5906 = call i64 @f19(i64* %r5874) ; @get-procedure-nparams
store i64 %r5906, i64* %r5876
%r5908 = call i64 @f23(i64* %r5876, i64* %r5877) ; @fix-arbitrary-procs
%r5910 = bitcast [20 x i8]* @g5909 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5910, i32 1, i64* %r5877)
%r5912 = alloca i8*
call void @llvm.gcroot(i8** %r5912, i8* null)
%r5293 = bitcast i8** %r5912 to i64*
%r5911 = call i64 @apply-procedure(i64* %r5874, i64* %r5877) ; @apply-procedure
store i64 %r5911, i64* %r5293
br label %label159
label159:
br label %label156
label156:
br label %label153
label153:
br label %label150
label150:
br label %label147
label147:
br label %label144
label144:
br label %label141
label141:
%r5913 = load i64* %r5293
ret i64 %r5913
}

; @f124
define i64 @f127(i64* %env) gc "shadow-stack" {
%r5915 = alloca i8*
call void @llvm.gcroot(i8** %r5915, i8* null)
%r5294 = bitcast i8** %r5915 to i64*
%r5918 = alloca i8*
call void @llvm.gcroot(i8** %r5918, i8* null)
%r5916 = bitcast i8** %r5918 to i64*
%r5917 = add i64 0, 4
store i64 %r5917, i64* %r5916
%r5914 = call i64 @f17(i64* %r5916, i64* %env) ; @make-env
store i64 %r5914, i64* %r5294
%r5920 = alloca i8*
call void @llvm.gcroot(i8** %r5920, i8* null)
%r5291 = bitcast i8** %r5920 to i64*
%r5919 = call i64 @f126(i64* %r5294) ; @f125
store i64 %r5919, i64* %r5291
%r5921 = load i64* %r5291
ret i64 %r5921
}

; @f128
define i64 @f129(i64* %env) gc "shadow-stack" {
%r5945 = alloca i8*
call void @llvm.gcroot(i8** %r5945, i8* null)
%r5940 = bitcast i8** %r5945 to i64*
%r5948 = alloca i8*
call void @llvm.gcroot(i8** %r5948, i8* null)
%r5946 = bitcast i8** %r5948 to i64*
%r5947 = add i64 0, 4
store i64 %r5947, i64* %r5946
%r5951 = alloca i8*
call void @llvm.gcroot(i8** %r5951, i8* null)
%r5949 = bitcast i8** %r5951 to i64*
%r5950 = add i64 0, 72
store i64 %r5950, i64* %r5949
%r5944 = call i64 @f36(i64* %env, i64* %r5946, i64* %r5949) ; @lookup-variable
store i64 %r5944, i64* %r5940
%r5953 = alloca i8*
call void @llvm.gcroot(i8** %r5953, i8* null)
%r5941 = bitcast i8** %r5953 to i64*
%r5952 = call i64 @f18(i64* %r5940) ; @get-procedure-env
store i64 %r5952, i64* %r5941
%r5955 = alloca i8*
call void @llvm.gcroot(i8** %r5955, i8* null)
%r5943 = bitcast i8** %r5955 to i64*
%r5958 = alloca i8*
call void @llvm.gcroot(i8** %r5958, i8* null)
%r5956 = bitcast i8** %r5958 to i64*
%r5957 = add i64 0, 0
store i64 %r5957, i64* %r5956
%r5954 = call i64 @f17(i64* %r5956, i64* %r5941) ; @make-env
store i64 %r5954, i64* %r5943
%r5960 = alloca i8*
call void @llvm.gcroot(i8** %r5960, i8* null)
%r5942 = bitcast i8** %r5960 to i64*
%r5959 = call i64 @f19(i64* %r5940) ; @get-procedure-nparams
store i64 %r5959, i64* %r5942
%r5961 = call i64 @f23(i64* %r5942, i64* %r5943) ; @fix-arbitrary-procs
%r5963 = bitcast [20 x i8]* @g5962 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5963, i32 1, i64* %r5943)
%r5965 = alloca i8*
call void @llvm.gcroot(i8** %r5965, i8* null)
%r5939 = bitcast i8** %r5965 to i64*
%r5964 = call i64 @apply-procedure(i64* %r5940, i64* %r5943) ; @apply-procedure
store i64 %r5964, i64* %r5939
%r5971 = alloca i8*
call void @llvm.gcroot(i8** %r5971, i8* null)
%r5966 = bitcast i8** %r5971 to i64*
%r5974 = alloca i8*
call void @llvm.gcroot(i8** %r5974, i8* null)
%r5972 = bitcast i8** %r5974 to i64*
%r5973 = add i64 0, 4
store i64 %r5973, i64* %r5972
%r5977 = alloca i8*
call void @llvm.gcroot(i8** %r5977, i8* null)
%r5975 = bitcast i8** %r5977 to i64*
%r5976 = add i64 0, 72
store i64 %r5976, i64* %r5975
%r5970 = call i64 @f36(i64* %env, i64* %r5972, i64* %r5975) ; @lookup-variable
store i64 %r5970, i64* %r5966
%r5979 = alloca i8*
call void @llvm.gcroot(i8** %r5979, i8* null)
%r5967 = bitcast i8** %r5979 to i64*
%r5978 = call i64 @f18(i64* %r5966) ; @get-procedure-env
store i64 %r5978, i64* %r5967
%r5981 = alloca i8*
call void @llvm.gcroot(i8** %r5981, i8* null)
%r5969 = bitcast i8** %r5981 to i64*
%r5984 = alloca i8*
call void @llvm.gcroot(i8** %r5984, i8* null)
%r5982 = bitcast i8** %r5984 to i64*
%r5983 = add i64 0, 0
store i64 %r5983, i64* %r5982
%r5980 = call i64 @f17(i64* %r5982, i64* %r5967) ; @make-env
store i64 %r5980, i64* %r5969
%r5986 = alloca i8*
call void @llvm.gcroot(i8** %r5986, i8* null)
%r5968 = bitcast i8** %r5986 to i64*
%r5985 = call i64 @f19(i64* %r5966) ; @get-procedure-nparams
store i64 %r5985, i64* %r5968
%r5987 = call i64 @f23(i64* %r5968, i64* %r5969) ; @fix-arbitrary-procs
%r5989 = bitcast [20 x i8]* @g5988 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r5989, i32 1, i64* %r5969)
%r5991 = alloca i8*
call void @llvm.gcroot(i8** %r5991, i8* null)
%r5937 = bitcast i8** %r5991 to i64*
%r5990 = call i64 @apply-procedure(i64* %r5966, i64* %r5969) ; @apply-procedure
store i64 %r5990, i64* %r5937
%r5992 = load i64* %r5937
ret i64 %r5992
}

; @f130
define i64 @f131(i64* %env) gc "shadow-stack" {
%r6011 = alloca i8*
call void @llvm.gcroot(i8** %r6011, i8* null)
%r6008 = bitcast i8** %r6011 to i64*
%r6018 = alloca i8*
call void @llvm.gcroot(i8** %r6018, i8* null)
%r6013 = bitcast i8** %r6018 to i64*
%r6021 = alloca i8*
call void @llvm.gcroot(i8** %r6021, i8* null)
%r6019 = bitcast i8** %r6021 to i64*
%r6020 = add i64 0, 4
store i64 %r6020, i64* %r6019
%r6024 = alloca i8*
call void @llvm.gcroot(i8** %r6024, i8* null)
%r6022 = bitcast i8** %r6024 to i64*
%r6023 = add i64 0, 104
store i64 %r6023, i64* %r6022
%r6017 = call i64 @f36(i64* %env, i64* %r6019, i64* %r6022) ; @lookup-variable
store i64 %r6017, i64* %r6013
%r6026 = alloca i8*
call void @llvm.gcroot(i8** %r6026, i8* null)
%r6014 = bitcast i8** %r6026 to i64*
%r6025 = call i64 @f18(i64* %r6013) ; @get-procedure-env
store i64 %r6025, i64* %r6014
%r6028 = alloca i8*
call void @llvm.gcroot(i8** %r6028, i8* null)
%r6016 = bitcast i8** %r6028 to i64*
%r6031 = alloca i8*
call void @llvm.gcroot(i8** %r6031, i8* null)
%r6029 = bitcast i8** %r6031 to i64*
%r6030 = add i64 0, 4
store i64 %r6030, i64* %r6029
%r6027 = call i64 @f17(i64* %r6029, i64* %r6014) ; @make-env
store i64 %r6027, i64* %r6016
%r6038 = alloca i8*
call void @llvm.gcroot(i8** %r6038, i8* null)
%r6033 = bitcast i8** %r6038 to i64*
%r6041 = alloca i8*
call void @llvm.gcroot(i8** %r6041, i8* null)
%r6039 = bitcast i8** %r6041 to i64*
%r6040 = add i64 0, 4
store i64 %r6040, i64* %r6039
%r6044 = alloca i8*
call void @llvm.gcroot(i8** %r6044, i8* null)
%r6042 = bitcast i8** %r6044 to i64*
%r6043 = add i64 0, 72
store i64 %r6043, i64* %r6042
%r6037 = call i64 @f36(i64* %env, i64* %r6039, i64* %r6042) ; @lookup-variable
store i64 %r6037, i64* %r6033
%r6046 = alloca i8*
call void @llvm.gcroot(i8** %r6046, i8* null)
%r6034 = bitcast i8** %r6046 to i64*
%r6045 = call i64 @f18(i64* %r6033) ; @get-procedure-env
store i64 %r6045, i64* %r6034
%r6048 = alloca i8*
call void @llvm.gcroot(i8** %r6048, i8* null)
%r6036 = bitcast i8** %r6048 to i64*
%r6051 = alloca i8*
call void @llvm.gcroot(i8** %r6051, i8* null)
%r6049 = bitcast i8** %r6051 to i64*
%r6050 = add i64 0, 0
store i64 %r6050, i64* %r6049
%r6047 = call i64 @f17(i64* %r6049, i64* %r6034) ; @make-env
store i64 %r6047, i64* %r6036
%r6053 = alloca i8*
call void @llvm.gcroot(i8** %r6053, i8* null)
%r6035 = bitcast i8** %r6053 to i64*
%r6052 = call i64 @f19(i64* %r6033) ; @get-procedure-nparams
store i64 %r6052, i64* %r6035
%r6054 = call i64 @f23(i64* %r6035, i64* %r6036) ; @fix-arbitrary-procs
%r6056 = bitcast [20 x i8]* @g6055 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6056, i32 1, i64* %r6036)
%r6058 = alloca i8*
call void @llvm.gcroot(i8** %r6058, i8* null)
%r6032 = bitcast i8** %r6058 to i64*
%r6057 = call i64 @apply-procedure(i64* %r6033, i64* %r6036) ; @apply-procedure
store i64 %r6057, i64* %r6032
%r6062 = alloca i8*
call void @llvm.gcroot(i8** %r6062, i8* null)
%r6060 = bitcast i8** %r6062 to i64*
%r6061 = add i64 0, 4
store i64 %r6061, i64* %r6060
%r6059 = call i64 @f13(i64* %r6016, i64* %r6060, i64* %r6032) ; @vector-set!
%r6064 = alloca i8*
call void @llvm.gcroot(i8** %r6064, i8* null)
%r6015 = bitcast i8** %r6064 to i64*
%r6063 = call i64 @f19(i64* %r6013) ; @get-procedure-nparams
store i64 %r6063, i64* %r6015
%r6065 = call i64 @f23(i64* %r6015, i64* %r6016) ; @fix-arbitrary-procs
%r6067 = bitcast [20 x i8]* @g6066 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6067, i32 1, i64* %r6016)
%r6069 = alloca i8*
call void @llvm.gcroot(i8** %r6069, i8* null)
%r6012 = bitcast i8** %r6069 to i64*
%r6068 = call i64 @apply-procedure(i64* %r6013, i64* %r6016) ; @apply-procedure
store i64 %r6068, i64* %r6012
%r6071 = alloca i8*
call void @llvm.gcroot(i8** %r6071, i8* null)
%r6010 = bitcast i8** %r6071 to i64*
%r6070 = call i64 @f5(i64* %r6012) ; @not
store i64 %r6070, i64* %r6010
%r6072 = call i64 @f2(i64* %r6010) ; @raw-number
%r6073 = trunc i64 %r6072 to i1
br i1 %r6073, label %label160, label %label161
label160:
%r6079 = alloca i8*
call void @llvm.gcroot(i8** %r6079, i8* null)
%r6074 = bitcast i8** %r6079 to i64*
%r6082 = alloca i8*
call void @llvm.gcroot(i8** %r6082, i8* null)
%r6080 = bitcast i8** %r6082 to i64*
%r6081 = add i64 0, 4
store i64 %r6081, i64* %r6080
%r6085 = alloca i8*
call void @llvm.gcroot(i8** %r6085, i8* null)
%r6083 = bitcast i8** %r6085 to i64*
%r6084 = add i64 0, 144
store i64 %r6084, i64* %r6083
%r6078 = call i64 @f36(i64* %env, i64* %r6080, i64* %r6083) ; @lookup-variable
store i64 %r6078, i64* %r6074
%r6087 = alloca i8*
call void @llvm.gcroot(i8** %r6087, i8* null)
%r6075 = bitcast i8** %r6087 to i64*
%r6086 = call i64 @f18(i64* %r6074) ; @get-procedure-env
store i64 %r6086, i64* %r6075
%r6089 = alloca i8*
call void @llvm.gcroot(i8** %r6089, i8* null)
%r6077 = bitcast i8** %r6089 to i64*
%r6092 = alloca i8*
call void @llvm.gcroot(i8** %r6092, i8* null)
%r6090 = bitcast i8** %r6092 to i64*
%r6091 = add i64 0, 0
store i64 %r6091, i64* %r6090
%r6088 = call i64 @f17(i64* %r6090, i64* %r6075) ; @make-env
store i64 %r6088, i64* %r6077
%r6094 = alloca i8*
call void @llvm.gcroot(i8** %r6094, i8* null)
%r6076 = bitcast i8** %r6094 to i64*
%r6093 = call i64 @f19(i64* %r6074) ; @get-procedure-nparams
store i64 %r6093, i64* %r6076
%r6095 = call i64 @f23(i64* %r6076, i64* %r6077) ; @fix-arbitrary-procs
%r6097 = bitcast [20 x i8]* @g6096 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6097, i32 1, i64* %r6077)
%r6099 = alloca i8*
call void @llvm.gcroot(i8** %r6099, i8* null)
%r6008 = bitcast i8** %r6099 to i64*
%r6098 = call i64 @apply-procedure(i64* %r6074, i64* %r6077) ; @apply-procedure
store i64 %r6098, i64* %r6008
br label %label162
label161:
%r6101 = alloca i8*
call void @llvm.gcroot(i8** %r6101, i8* null)
%r6008 = bitcast i8** %r6101 to i64*
%r6100 = add i64 0, 0
store i64 %r6100, i64* %r6008
br label %label162
label162:
%r6102 = load i64* %r6008
ret i64 %r6102
}

; @f133
define i64 @f134(i64* %env) gc "shadow-stack" {
%r6129 = alloca i8*
call void @llvm.gcroot(i8** %r6129, i8* null)
%r6124 = bitcast i8** %r6129 to i64*
%r6132 = alloca i8*
call void @llvm.gcroot(i8** %r6132, i8* null)
%r6130 = bitcast i8** %r6132 to i64*
%r6131 = add i64 0, 8
store i64 %r6131, i64* %r6130
%r6135 = alloca i8*
call void @llvm.gcroot(i8** %r6135, i8* null)
%r6133 = bitcast i8** %r6135 to i64*
%r6134 = add i64 0, 72
store i64 %r6134, i64* %r6133
%r6128 = call i64 @f36(i64* %env, i64* %r6130, i64* %r6133) ; @lookup-variable
store i64 %r6128, i64* %r6124
%r6137 = alloca i8*
call void @llvm.gcroot(i8** %r6137, i8* null)
%r6125 = bitcast i8** %r6137 to i64*
%r6136 = call i64 @f18(i64* %r6124) ; @get-procedure-env
store i64 %r6136, i64* %r6125
%r6139 = alloca i8*
call void @llvm.gcroot(i8** %r6139, i8* null)
%r6127 = bitcast i8** %r6139 to i64*
%r6142 = alloca i8*
call void @llvm.gcroot(i8** %r6142, i8* null)
%r6140 = bitcast i8** %r6142 to i64*
%r6141 = add i64 0, 0
store i64 %r6141, i64* %r6140
%r6138 = call i64 @f17(i64* %r6140, i64* %r6125) ; @make-env
store i64 %r6138, i64* %r6127
%r6144 = alloca i8*
call void @llvm.gcroot(i8** %r6144, i8* null)
%r6126 = bitcast i8** %r6144 to i64*
%r6143 = call i64 @f19(i64* %r6124) ; @get-procedure-nparams
store i64 %r6143, i64* %r6126
%r6145 = call i64 @f23(i64* %r6126, i64* %r6127) ; @fix-arbitrary-procs
%r6147 = bitcast [20 x i8]* @g6146 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6147, i32 1, i64* %r6127)
%r6149 = alloca i8*
call void @llvm.gcroot(i8** %r6149, i8* null)
%r6123 = bitcast i8** %r6149 to i64*
%r6148 = call i64 @apply-procedure(i64* %r6124, i64* %r6127) ; @apply-procedure
store i64 %r6148, i64* %r6123
%r6151 = alloca i8*
call void @llvm.gcroot(i8** %r6151, i8* null)
%r6122 = bitcast i8** %r6151 to i64*
%r6154 = alloca i8*
call void @llvm.gcroot(i8** %r6154, i8* null)
%r6152 = bitcast i8** %r6154 to i64*
%r6153 = add i64 0, 0
store i64 %r6153, i64* %r6152
%r6157 = alloca i8*
call void @llvm.gcroot(i8** %r6157, i8* null)
%r6155 = bitcast i8** %r6157 to i64*
%r6156 = add i64 0, 4
store i64 %r6156, i64* %r6155
%r6150 = call i64 @f37(i64* %env, i64* %r6152, i64* %r6155, i64* %r6123) ; @set-variable!
store i64 %r6150, i64* %r6122
%r6159 = alloca i8*
call void @llvm.gcroot(i8** %r6159, i8* null)
%r6120 = bitcast i8** %r6159 to i64*
%r6165 = alloca i8*
call void @llvm.gcroot(i8** %r6165, i8* null)
%r6160 = bitcast i8** %r6165 to i64*
%r6168 = alloca i8*
call void @llvm.gcroot(i8** %r6168, i8* null)
%r6166 = bitcast i8** %r6168 to i64*
%r6167 = add i64 0, 8
store i64 %r6167, i64* %r6166
%r6171 = alloca i8*
call void @llvm.gcroot(i8** %r6171, i8* null)
%r6169 = bitcast i8** %r6171 to i64*
%r6170 = add i64 0, 92
store i64 %r6170, i64* %r6169
%r6164 = call i64 @f36(i64* %env, i64* %r6166, i64* %r6169) ; @lookup-variable
store i64 %r6164, i64* %r6160
%r6173 = alloca i8*
call void @llvm.gcroot(i8** %r6173, i8* null)
%r6161 = bitcast i8** %r6173 to i64*
%r6172 = call i64 @f18(i64* %r6160) ; @get-procedure-env
store i64 %r6172, i64* %r6161
%r6175 = alloca i8*
call void @llvm.gcroot(i8** %r6175, i8* null)
%r6163 = bitcast i8** %r6175 to i64*
%r6178 = alloca i8*
call void @llvm.gcroot(i8** %r6178, i8* null)
%r6176 = bitcast i8** %r6178 to i64*
%r6177 = add i64 0, 4
store i64 %r6177, i64* %r6176
%r6174 = call i64 @f17(i64* %r6176, i64* %r6161) ; @make-env
store i64 %r6174, i64* %r6163
%r6181 = alloca i8*
call void @llvm.gcroot(i8** %r6181, i8* null)
%r6179 = bitcast i8** %r6181 to i64*
%r6184 = alloca i8*
call void @llvm.gcroot(i8** %r6184, i8* null)
%r6182 = bitcast i8** %r6184 to i64*
%r6183 = add i64 0, 0
store i64 %r6183, i64* %r6182
%r6187 = alloca i8*
call void @llvm.gcroot(i8** %r6187, i8* null)
%r6185 = bitcast i8** %r6187 to i64*
%r6186 = add i64 0, 4
store i64 %r6186, i64* %r6185
%r6180 = call i64 @f36(i64* %env, i64* %r6182, i64* %r6185) ; @lookup-variable
store i64 %r6180, i64* %r6179
%r6191 = alloca i8*
call void @llvm.gcroot(i8** %r6191, i8* null)
%r6189 = bitcast i8** %r6191 to i64*
%r6190 = add i64 0, 4
store i64 %r6190, i64* %r6189
%r6188 = call i64 @f13(i64* %r6163, i64* %r6189, i64* %r6179) ; @vector-set!
%r6193 = alloca i8*
call void @llvm.gcroot(i8** %r6193, i8* null)
%r6162 = bitcast i8** %r6193 to i64*
%r6192 = call i64 @f19(i64* %r6160) ; @get-procedure-nparams
store i64 %r6192, i64* %r6162
%r6194 = call i64 @f23(i64* %r6162, i64* %r6163) ; @fix-arbitrary-procs
%r6196 = bitcast [20 x i8]* @g6195 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6196, i32 1, i64* %r6163)
%r6198 = alloca i8*
call void @llvm.gcroot(i8** %r6198, i8* null)
%r6158 = bitcast i8** %r6198 to i64*
%r6197 = call i64 @apply-procedure(i64* %r6160, i64* %r6163) ; @apply-procedure
store i64 %r6197, i64* %r6158
%r6199 = call i64 @f2(i64* %r6158) ; @raw-number
%r6200 = trunc i64 %r6199 to i1
br i1 %r6200, label %label163, label %label164
label163:
%r6202 = alloca i8*
call void @llvm.gcroot(i8** %r6202, i8* null)
%r6120 = bitcast i8** %r6202 to i64*
%r6201 = call i64 @make-null() ; @make-null
store i64 %r6201, i64* %r6120
br label %label165
label164:
%r6204 = alloca i8*
call void @llvm.gcroot(i8** %r6204, i8* null)
%r6120 = bitcast i8** %r6204 to i64*
%r6210 = alloca i8*
call void @llvm.gcroot(i8** %r6210, i8* null)
%r6205 = bitcast i8** %r6210 to i64*
%r6213 = alloca i8*
call void @llvm.gcroot(i8** %r6213, i8* null)
%r6211 = bitcast i8** %r6213 to i64*
%r6212 = add i64 0, 8
store i64 %r6212, i64* %r6211
%r6216 = alloca i8*
call void @llvm.gcroot(i8** %r6216, i8* null)
%r6214 = bitcast i8** %r6216 to i64*
%r6215 = add i64 0, 108
store i64 %r6215, i64* %r6214
%r6209 = call i64 @f36(i64* %env, i64* %r6211, i64* %r6214) ; @lookup-variable
store i64 %r6209, i64* %r6205
%r6218 = alloca i8*
call void @llvm.gcroot(i8** %r6218, i8* null)
%r6206 = bitcast i8** %r6218 to i64*
%r6217 = call i64 @f18(i64* %r6205) ; @get-procedure-env
store i64 %r6217, i64* %r6206
%r6220 = alloca i8*
call void @llvm.gcroot(i8** %r6220, i8* null)
%r6208 = bitcast i8** %r6220 to i64*
%r6223 = alloca i8*
call void @llvm.gcroot(i8** %r6223, i8* null)
%r6221 = bitcast i8** %r6223 to i64*
%r6222 = add i64 0, 4
store i64 %r6222, i64* %r6221
%r6219 = call i64 @f17(i64* %r6221, i64* %r6206) ; @make-env
store i64 %r6219, i64* %r6208
%r6226 = alloca i8*
call void @llvm.gcroot(i8** %r6226, i8* null)
%r6224 = bitcast i8** %r6226 to i64*
%r6229 = alloca i8*
call void @llvm.gcroot(i8** %r6229, i8* null)
%r6227 = bitcast i8** %r6229 to i64*
%r6228 = add i64 0, 0
store i64 %r6228, i64* %r6227
%r6232 = alloca i8*
call void @llvm.gcroot(i8** %r6232, i8* null)
%r6230 = bitcast i8** %r6232 to i64*
%r6231 = add i64 0, 4
store i64 %r6231, i64* %r6230
%r6225 = call i64 @f36(i64* %env, i64* %r6227, i64* %r6230) ; @lookup-variable
store i64 %r6225, i64* %r6224
%r6236 = alloca i8*
call void @llvm.gcroot(i8** %r6236, i8* null)
%r6234 = bitcast i8** %r6236 to i64*
%r6235 = add i64 0, 4
store i64 %r6235, i64* %r6234
%r6233 = call i64 @f13(i64* %r6208, i64* %r6234, i64* %r6224) ; @vector-set!
%r6238 = alloca i8*
call void @llvm.gcroot(i8** %r6238, i8* null)
%r6207 = bitcast i8** %r6238 to i64*
%r6237 = call i64 @f19(i64* %r6205) ; @get-procedure-nparams
store i64 %r6237, i64* %r6207
%r6239 = call i64 @f23(i64* %r6207, i64* %r6208) ; @fix-arbitrary-procs
%r6241 = bitcast [20 x i8]* @g6240 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6241, i32 1, i64* %r6208)
%r6243 = alloca i8*
call void @llvm.gcroot(i8** %r6243, i8* null)
%r6203 = bitcast i8** %r6243 to i64*
%r6242 = call i64 @apply-procedure(i64* %r6205, i64* %r6208) ; @apply-procedure
store i64 %r6242, i64* %r6203
%r6244 = call i64 @f2(i64* %r6203) ; @raw-number
%r6245 = trunc i64 %r6244 to i1
br i1 %r6245, label %label166, label %label167
label166:
%r6252 = alloca i8*
call void @llvm.gcroot(i8** %r6252, i8* null)
%r6247 = bitcast i8** %r6252 to i64*
%r6255 = alloca i8*
call void @llvm.gcroot(i8** %r6255, i8* null)
%r6253 = bitcast i8** %r6255 to i64*
%r6254 = add i64 0, 8
store i64 %r6254, i64* %r6253
%r6258 = alloca i8*
call void @llvm.gcroot(i8** %r6258, i8* null)
%r6256 = bitcast i8** %r6258 to i64*
%r6257 = add i64 0, 148
store i64 %r6257, i64* %r6256
%r6251 = call i64 @f36(i64* %env, i64* %r6253, i64* %r6256) ; @lookup-variable
store i64 %r6251, i64* %r6247
%r6260 = alloca i8*
call void @llvm.gcroot(i8** %r6260, i8* null)
%r6248 = bitcast i8** %r6260 to i64*
%r6259 = call i64 @f18(i64* %r6247) ; @get-procedure-env
store i64 %r6259, i64* %r6248
%r6262 = alloca i8*
call void @llvm.gcroot(i8** %r6262, i8* null)
%r6250 = bitcast i8** %r6262 to i64*
%r6265 = alloca i8*
call void @llvm.gcroot(i8** %r6265, i8* null)
%r6263 = bitcast i8** %r6265 to i64*
%r6264 = add i64 0, 0
store i64 %r6264, i64* %r6263
%r6261 = call i64 @f17(i64* %r6263, i64* %r6248) ; @make-env
store i64 %r6261, i64* %r6250
%r6267 = alloca i8*
call void @llvm.gcroot(i8** %r6267, i8* null)
%r6249 = bitcast i8** %r6267 to i64*
%r6266 = call i64 @f19(i64* %r6247) ; @get-procedure-nparams
store i64 %r6266, i64* %r6249
%r6268 = call i64 @f23(i64* %r6249, i64* %r6250) ; @fix-arbitrary-procs
%r6270 = bitcast [20 x i8]* @g6269 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6270, i32 1, i64* %r6250)
%r6272 = alloca i8*
call void @llvm.gcroot(i8** %r6272, i8* null)
%r6246 = bitcast i8** %r6272 to i64*
%r6271 = call i64 @apply-procedure(i64* %r6247, i64* %r6250) ; @apply-procedure
store i64 %r6271, i64* %r6246
%r6274 = alloca i8*
call void @llvm.gcroot(i8** %r6274, i8* null)
%r6120 = bitcast i8** %r6274 to i64*
%r6273 = call i64 @f29(i64* %r6246) ; @car
store i64 %r6273, i64* %r6120
br label %label168
label167:
%r6276 = alloca i8*
call void @llvm.gcroot(i8** %r6276, i8* null)
%r6120 = bitcast i8** %r6276 to i64*
%r6282 = alloca i8*
call void @llvm.gcroot(i8** %r6282, i8* null)
%r6277 = bitcast i8** %r6282 to i64*
%r6285 = alloca i8*
call void @llvm.gcroot(i8** %r6285, i8* null)
%r6283 = bitcast i8** %r6285 to i64*
%r6284 = add i64 0, 8
store i64 %r6284, i64* %r6283
%r6288 = alloca i8*
call void @llvm.gcroot(i8** %r6288, i8* null)
%r6286 = bitcast i8** %r6288 to i64*
%r6287 = add i64 0, 88
store i64 %r6287, i64* %r6286
%r6281 = call i64 @f36(i64* %env, i64* %r6283, i64* %r6286) ; @lookup-variable
store i64 %r6281, i64* %r6277
%r6290 = alloca i8*
call void @llvm.gcroot(i8** %r6290, i8* null)
%r6278 = bitcast i8** %r6290 to i64*
%r6289 = call i64 @f18(i64* %r6277) ; @get-procedure-env
store i64 %r6289, i64* %r6278
%r6292 = alloca i8*
call void @llvm.gcroot(i8** %r6292, i8* null)
%r6280 = bitcast i8** %r6292 to i64*
%r6295 = alloca i8*
call void @llvm.gcroot(i8** %r6295, i8* null)
%r6293 = bitcast i8** %r6295 to i64*
%r6294 = add i64 0, 4
store i64 %r6294, i64* %r6293
%r6291 = call i64 @f17(i64* %r6293, i64* %r6278) ; @make-env
store i64 %r6291, i64* %r6280
%r6298 = alloca i8*
call void @llvm.gcroot(i8** %r6298, i8* null)
%r6296 = bitcast i8** %r6298 to i64*
%r6301 = alloca i8*
call void @llvm.gcroot(i8** %r6301, i8* null)
%r6299 = bitcast i8** %r6301 to i64*
%r6300 = add i64 0, 0
store i64 %r6300, i64* %r6299
%r6304 = alloca i8*
call void @llvm.gcroot(i8** %r6304, i8* null)
%r6302 = bitcast i8** %r6304 to i64*
%r6303 = add i64 0, 4
store i64 %r6303, i64* %r6302
%r6297 = call i64 @f36(i64* %env, i64* %r6299, i64* %r6302) ; @lookup-variable
store i64 %r6297, i64* %r6296
%r6308 = alloca i8*
call void @llvm.gcroot(i8** %r6308, i8* null)
%r6306 = bitcast i8** %r6308 to i64*
%r6307 = add i64 0, 4
store i64 %r6307, i64* %r6306
%r6305 = call i64 @f13(i64* %r6280, i64* %r6306, i64* %r6296) ; @vector-set!
%r6310 = alloca i8*
call void @llvm.gcroot(i8** %r6310, i8* null)
%r6279 = bitcast i8** %r6310 to i64*
%r6309 = call i64 @f19(i64* %r6277) ; @get-procedure-nparams
store i64 %r6309, i64* %r6279
%r6311 = call i64 @f23(i64* %r6279, i64* %r6280) ; @fix-arbitrary-procs
%r6313 = bitcast [20 x i8]* @g6312 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6313, i32 1, i64* %r6280)
%r6315 = alloca i8*
call void @llvm.gcroot(i8** %r6315, i8* null)
%r6275 = bitcast i8** %r6315 to i64*
%r6314 = call i64 @apply-procedure(i64* %r6277, i64* %r6280) ; @apply-procedure
store i64 %r6314, i64* %r6275
%r6316 = call i64 @f2(i64* %r6275) ; @raw-number
%r6317 = trunc i64 %r6316 to i1
br i1 %r6317, label %label169, label %label170
label169:
%r6325 = alloca i8*
call void @llvm.gcroot(i8** %r6325, i8* null)
%r6320 = bitcast i8** %r6325 to i64*
%r6328 = alloca i8*
call void @llvm.gcroot(i8** %r6328, i8* null)
%r6326 = bitcast i8** %r6328 to i64*
%r6327 = add i64 0, 8
store i64 %r6327, i64* %r6326
%r6331 = alloca i8*
call void @llvm.gcroot(i8** %r6331, i8* null)
%r6329 = bitcast i8** %r6331 to i64*
%r6330 = add i64 0, 148
store i64 %r6330, i64* %r6329
%r6324 = call i64 @f36(i64* %env, i64* %r6326, i64* %r6329) ; @lookup-variable
store i64 %r6324, i64* %r6320
%r6333 = alloca i8*
call void @llvm.gcroot(i8** %r6333, i8* null)
%r6321 = bitcast i8** %r6333 to i64*
%r6332 = call i64 @f18(i64* %r6320) ; @get-procedure-env
store i64 %r6332, i64* %r6321
%r6335 = alloca i8*
call void @llvm.gcroot(i8** %r6335, i8* null)
%r6323 = bitcast i8** %r6335 to i64*
%r6338 = alloca i8*
call void @llvm.gcroot(i8** %r6338, i8* null)
%r6336 = bitcast i8** %r6338 to i64*
%r6337 = add i64 0, 0
store i64 %r6337, i64* %r6336
%r6334 = call i64 @f17(i64* %r6336, i64* %r6321) ; @make-env
store i64 %r6334, i64* %r6323
%r6340 = alloca i8*
call void @llvm.gcroot(i8** %r6340, i8* null)
%r6322 = bitcast i8** %r6340 to i64*
%r6339 = call i64 @f19(i64* %r6320) ; @get-procedure-nparams
store i64 %r6339, i64* %r6322
%r6341 = call i64 @f23(i64* %r6322, i64* %r6323) ; @fix-arbitrary-procs
%r6343 = bitcast [20 x i8]* @g6342 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6343, i32 1, i64* %r6323)
%r6345 = alloca i8*
call void @llvm.gcroot(i8** %r6345, i8* null)
%r6318 = bitcast i8** %r6345 to i64*
%r6344 = call i64 @apply-procedure(i64* %r6320, i64* %r6323) ; @apply-procedure
store i64 %r6344, i64* %r6318
%r6351 = alloca i8*
call void @llvm.gcroot(i8** %r6351, i8* null)
%r6346 = bitcast i8** %r6351 to i64*
%r6354 = alloca i8*
call void @llvm.gcroot(i8** %r6354, i8* null)
%r6352 = bitcast i8** %r6354 to i64*
%r6353 = add i64 0, 8
store i64 %r6353, i64* %r6352
%r6357 = alloca i8*
call void @llvm.gcroot(i8** %r6357, i8* null)
%r6355 = bitcast i8** %r6357 to i64*
%r6356 = add i64 0, 148
store i64 %r6356, i64* %r6355
%r6350 = call i64 @f36(i64* %env, i64* %r6352, i64* %r6355) ; @lookup-variable
store i64 %r6350, i64* %r6346
%r6359 = alloca i8*
call void @llvm.gcroot(i8** %r6359, i8* null)
%r6347 = bitcast i8** %r6359 to i64*
%r6358 = call i64 @f18(i64* %r6346) ; @get-procedure-env
store i64 %r6358, i64* %r6347
%r6361 = alloca i8*
call void @llvm.gcroot(i8** %r6361, i8* null)
%r6349 = bitcast i8** %r6361 to i64*
%r6364 = alloca i8*
call void @llvm.gcroot(i8** %r6364, i8* null)
%r6362 = bitcast i8** %r6364 to i64*
%r6363 = add i64 0, 0
store i64 %r6363, i64* %r6362
%r6360 = call i64 @f17(i64* %r6362, i64* %r6347) ; @make-env
store i64 %r6360, i64* %r6349
%r6366 = alloca i8*
call void @llvm.gcroot(i8** %r6366, i8* null)
%r6348 = bitcast i8** %r6366 to i64*
%r6365 = call i64 @f19(i64* %r6346) ; @get-procedure-nparams
store i64 %r6365, i64* %r6348
%r6367 = call i64 @f23(i64* %r6348, i64* %r6349) ; @fix-arbitrary-procs
%r6369 = bitcast [20 x i8]* @g6368 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6369, i32 1, i64* %r6349)
%r6371 = alloca i8*
call void @llvm.gcroot(i8** %r6371, i8* null)
%r6319 = bitcast i8** %r6371 to i64*
%r6370 = call i64 @apply-procedure(i64* %r6346, i64* %r6349) ; @apply-procedure
store i64 %r6370, i64* %r6319
%r6373 = alloca i8*
call void @llvm.gcroot(i8** %r6373, i8* null)
%r6120 = bitcast i8** %r6373 to i64*
%r6372 = call i64 @f21(i64* %r6318, i64* %r6319) ; @cons
store i64 %r6372, i64* %r6120
br label %label171
label170:
%r6375 = alloca i8*
call void @llvm.gcroot(i8** %r6375, i8* null)
%r6120 = bitcast i8** %r6375 to i64*
%r6381 = alloca i8*
call void @llvm.gcroot(i8** %r6381, i8* null)
%r6376 = bitcast i8** %r6381 to i64*
%r6384 = alloca i8*
call void @llvm.gcroot(i8** %r6384, i8* null)
%r6382 = bitcast i8** %r6384 to i64*
%r6383 = add i64 0, 8
store i64 %r6383, i64* %r6382
%r6387 = alloca i8*
call void @llvm.gcroot(i8** %r6387, i8* null)
%r6385 = bitcast i8** %r6387 to i64*
%r6386 = add i64 0, 80
store i64 %r6386, i64* %r6385
%r6380 = call i64 @f36(i64* %env, i64* %r6382, i64* %r6385) ; @lookup-variable
store i64 %r6380, i64* %r6376
%r6389 = alloca i8*
call void @llvm.gcroot(i8** %r6389, i8* null)
%r6377 = bitcast i8** %r6389 to i64*
%r6388 = call i64 @f18(i64* %r6376) ; @get-procedure-env
store i64 %r6388, i64* %r6377
%r6391 = alloca i8*
call void @llvm.gcroot(i8** %r6391, i8* null)
%r6379 = bitcast i8** %r6391 to i64*
%r6394 = alloca i8*
call void @llvm.gcroot(i8** %r6394, i8* null)
%r6392 = bitcast i8** %r6394 to i64*
%r6393 = add i64 0, 4
store i64 %r6393, i64* %r6392
%r6390 = call i64 @f17(i64* %r6392, i64* %r6377) ; @make-env
store i64 %r6390, i64* %r6379
%r6397 = alloca i8*
call void @llvm.gcroot(i8** %r6397, i8* null)
%r6395 = bitcast i8** %r6397 to i64*
%r6400 = alloca i8*
call void @llvm.gcroot(i8** %r6400, i8* null)
%r6398 = bitcast i8** %r6400 to i64*
%r6399 = add i64 0, 0
store i64 %r6399, i64* %r6398
%r6403 = alloca i8*
call void @llvm.gcroot(i8** %r6403, i8* null)
%r6401 = bitcast i8** %r6403 to i64*
%r6402 = add i64 0, 4
store i64 %r6402, i64* %r6401
%r6396 = call i64 @f36(i64* %env, i64* %r6398, i64* %r6401) ; @lookup-variable
store i64 %r6396, i64* %r6395
%r6407 = alloca i8*
call void @llvm.gcroot(i8** %r6407, i8* null)
%r6405 = bitcast i8** %r6407 to i64*
%r6406 = add i64 0, 4
store i64 %r6406, i64* %r6405
%r6404 = call i64 @f13(i64* %r6379, i64* %r6405, i64* %r6395) ; @vector-set!
%r6409 = alloca i8*
call void @llvm.gcroot(i8** %r6409, i8* null)
%r6378 = bitcast i8** %r6409 to i64*
%r6408 = call i64 @f19(i64* %r6376) ; @get-procedure-nparams
store i64 %r6408, i64* %r6378
%r6410 = call i64 @f23(i64* %r6378, i64* %r6379) ; @fix-arbitrary-procs
%r6412 = bitcast [20 x i8]* @g6411 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6412, i32 1, i64* %r6379)
%r6414 = alloca i8*
call void @llvm.gcroot(i8** %r6414, i8* null)
%r6374 = bitcast i8** %r6414 to i64*
%r6413 = call i64 @apply-procedure(i64* %r6376, i64* %r6379) ; @apply-procedure
store i64 %r6413, i64* %r6374
%r6415 = call i64 @f2(i64* %r6374) ; @raw-number
%r6416 = trunc i64 %r6415 to i1
br i1 %r6416, label %label172, label %label173
label172:
%r6422 = alloca i8*
call void @llvm.gcroot(i8** %r6422, i8* null)
%r6417 = bitcast i8** %r6422 to i64*
%r6425 = alloca i8*
call void @llvm.gcroot(i8** %r6425, i8* null)
%r6423 = bitcast i8** %r6425 to i64*
%r6424 = add i64 0, 8
store i64 %r6424, i64* %r6423
%r6428 = alloca i8*
call void @llvm.gcroot(i8** %r6428, i8* null)
%r6426 = bitcast i8** %r6428 to i64*
%r6427 = add i64 0, 148
store i64 %r6427, i64* %r6426
%r6421 = call i64 @f36(i64* %env, i64* %r6423, i64* %r6426) ; @lookup-variable
store i64 %r6421, i64* %r6417
%r6430 = alloca i8*
call void @llvm.gcroot(i8** %r6430, i8* null)
%r6418 = bitcast i8** %r6430 to i64*
%r6429 = call i64 @f18(i64* %r6417) ; @get-procedure-env
store i64 %r6429, i64* %r6418
%r6432 = alloca i8*
call void @llvm.gcroot(i8** %r6432, i8* null)
%r6420 = bitcast i8** %r6432 to i64*
%r6435 = alloca i8*
call void @llvm.gcroot(i8** %r6435, i8* null)
%r6433 = bitcast i8** %r6435 to i64*
%r6434 = add i64 0, 0
store i64 %r6434, i64* %r6433
%r6431 = call i64 @f17(i64* %r6433, i64* %r6418) ; @make-env
store i64 %r6431, i64* %r6420
%r6437 = alloca i8*
call void @llvm.gcroot(i8** %r6437, i8* null)
%r6419 = bitcast i8** %r6437 to i64*
%r6436 = call i64 @f19(i64* %r6417) ; @get-procedure-nparams
store i64 %r6436, i64* %r6419
%r6438 = call i64 @f23(i64* %r6419, i64* %r6420) ; @fix-arbitrary-procs
%r6440 = bitcast [20 x i8]* @g6439 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6440, i32 1, i64* %r6420)
%r6442 = alloca i8*
call void @llvm.gcroot(i8** %r6442, i8* null)
%r6120 = bitcast i8** %r6442 to i64*
%r6441 = call i64 @apply-procedure(i64* %r6417, i64* %r6420) ; @apply-procedure
store i64 %r6441, i64* %r6120
br label %label174
label173:
%r6444 = alloca i8*
call void @llvm.gcroot(i8** %r6444, i8* null)
%r6120 = bitcast i8** %r6444 to i64*
%r6450 = alloca i8*
call void @llvm.gcroot(i8** %r6450, i8* null)
%r6445 = bitcast i8** %r6450 to i64*
%r6453 = alloca i8*
call void @llvm.gcroot(i8** %r6453, i8* null)
%r6451 = bitcast i8** %r6453 to i64*
%r6452 = add i64 0, 8
store i64 %r6452, i64* %r6451
%r6456 = alloca i8*
call void @llvm.gcroot(i8** %r6456, i8* null)
%r6454 = bitcast i8** %r6456 to i64*
%r6455 = add i64 0, 96
store i64 %r6455, i64* %r6454
%r6449 = call i64 @f36(i64* %env, i64* %r6451, i64* %r6454) ; @lookup-variable
store i64 %r6449, i64* %r6445
%r6458 = alloca i8*
call void @llvm.gcroot(i8** %r6458, i8* null)
%r6446 = bitcast i8** %r6458 to i64*
%r6457 = call i64 @f18(i64* %r6445) ; @get-procedure-env
store i64 %r6457, i64* %r6446
%r6460 = alloca i8*
call void @llvm.gcroot(i8** %r6460, i8* null)
%r6448 = bitcast i8** %r6460 to i64*
%r6463 = alloca i8*
call void @llvm.gcroot(i8** %r6463, i8* null)
%r6461 = bitcast i8** %r6463 to i64*
%r6462 = add i64 0, 4
store i64 %r6462, i64* %r6461
%r6459 = call i64 @f17(i64* %r6461, i64* %r6446) ; @make-env
store i64 %r6459, i64* %r6448
%r6466 = alloca i8*
call void @llvm.gcroot(i8** %r6466, i8* null)
%r6464 = bitcast i8** %r6466 to i64*
%r6469 = alloca i8*
call void @llvm.gcroot(i8** %r6469, i8* null)
%r6467 = bitcast i8** %r6469 to i64*
%r6468 = add i64 0, 0
store i64 %r6468, i64* %r6467
%r6472 = alloca i8*
call void @llvm.gcroot(i8** %r6472, i8* null)
%r6470 = bitcast i8** %r6472 to i64*
%r6471 = add i64 0, 4
store i64 %r6471, i64* %r6470
%r6465 = call i64 @f36(i64* %env, i64* %r6467, i64* %r6470) ; @lookup-variable
store i64 %r6465, i64* %r6464
%r6476 = alloca i8*
call void @llvm.gcroot(i8** %r6476, i8* null)
%r6474 = bitcast i8** %r6476 to i64*
%r6475 = add i64 0, 4
store i64 %r6475, i64* %r6474
%r6473 = call i64 @f13(i64* %r6448, i64* %r6474, i64* %r6464) ; @vector-set!
%r6478 = alloca i8*
call void @llvm.gcroot(i8** %r6478, i8* null)
%r6447 = bitcast i8** %r6478 to i64*
%r6477 = call i64 @f19(i64* %r6445) ; @get-procedure-nparams
store i64 %r6477, i64* %r6447
%r6479 = call i64 @f23(i64* %r6447, i64* %r6448) ; @fix-arbitrary-procs
%r6481 = bitcast [20 x i8]* @g6480 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6481, i32 1, i64* %r6448)
%r6483 = alloca i8*
call void @llvm.gcroot(i8** %r6483, i8* null)
%r6443 = bitcast i8** %r6483 to i64*
%r6482 = call i64 @apply-procedure(i64* %r6445, i64* %r6448) ; @apply-procedure
store i64 %r6482, i64* %r6443
%r6484 = call i64 @f2(i64* %r6443) ; @raw-number
%r6485 = trunc i64 %r6484 to i1
br i1 %r6485, label %label175, label %label176
label175:
%r6492 = alloca i8*
call void @llvm.gcroot(i8** %r6492, i8* null)
%r6487 = bitcast i8** %r6492 to i64*
%r6495 = alloca i8*
call void @llvm.gcroot(i8** %r6495, i8* null)
%r6493 = bitcast i8** %r6495 to i64*
%r6494 = add i64 0, 8
store i64 %r6494, i64* %r6493
%r6498 = alloca i8*
call void @llvm.gcroot(i8** %r6498, i8* null)
%r6496 = bitcast i8** %r6498 to i64*
%r6497 = add i64 0, 144
store i64 %r6497, i64* %r6496
%r6491 = call i64 @f36(i64* %env, i64* %r6493, i64* %r6496) ; @lookup-variable
store i64 %r6491, i64* %r6487
%r6500 = alloca i8*
call void @llvm.gcroot(i8** %r6500, i8* null)
%r6488 = bitcast i8** %r6500 to i64*
%r6499 = call i64 @f18(i64* %r6487) ; @get-procedure-env
store i64 %r6499, i64* %r6488
%r6502 = alloca i8*
call void @llvm.gcroot(i8** %r6502, i8* null)
%r6490 = bitcast i8** %r6502 to i64*
%r6505 = alloca i8*
call void @llvm.gcroot(i8** %r6505, i8* null)
%r6503 = bitcast i8** %r6505 to i64*
%r6504 = add i64 0, 0
store i64 %r6504, i64* %r6503
%r6501 = call i64 @f17(i64* %r6503, i64* %r6488) ; @make-env
store i64 %r6501, i64* %r6490
%r6507 = alloca i8*
call void @llvm.gcroot(i8** %r6507, i8* null)
%r6489 = bitcast i8** %r6507 to i64*
%r6506 = call i64 @f19(i64* %r6487) ; @get-procedure-nparams
store i64 %r6506, i64* %r6489
%r6508 = call i64 @f23(i64* %r6489, i64* %r6490) ; @fix-arbitrary-procs
%r6510 = bitcast [20 x i8]* @g6509 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6510, i32 1, i64* %r6490)
%r6512 = alloca i8*
call void @llvm.gcroot(i8** %r6512, i8* null)
%r6486 = bitcast i8** %r6512 to i64*
%r6511 = call i64 @apply-procedure(i64* %r6487, i64* %r6490) ; @apply-procedure
store i64 %r6511, i64* %r6486
%r6518 = alloca i8*
call void @llvm.gcroot(i8** %r6518, i8* null)
%r6513 = bitcast i8** %r6518 to i64*
%r6521 = alloca i8*
call void @llvm.gcroot(i8** %r6521, i8* null)
%r6519 = bitcast i8** %r6521 to i64*
%r6520 = add i64 0, 8
store i64 %r6520, i64* %r6519
%r6524 = alloca i8*
call void @llvm.gcroot(i8** %r6524, i8* null)
%r6522 = bitcast i8** %r6524 to i64*
%r6523 = add i64 0, 148
store i64 %r6523, i64* %r6522
%r6517 = call i64 @f36(i64* %env, i64* %r6519, i64* %r6522) ; @lookup-variable
store i64 %r6517, i64* %r6513
%r6526 = alloca i8*
call void @llvm.gcroot(i8** %r6526, i8* null)
%r6514 = bitcast i8** %r6526 to i64*
%r6525 = call i64 @f18(i64* %r6513) ; @get-procedure-env
store i64 %r6525, i64* %r6514
%r6528 = alloca i8*
call void @llvm.gcroot(i8** %r6528, i8* null)
%r6516 = bitcast i8** %r6528 to i64*
%r6531 = alloca i8*
call void @llvm.gcroot(i8** %r6531, i8* null)
%r6529 = bitcast i8** %r6531 to i64*
%r6530 = add i64 0, 0
store i64 %r6530, i64* %r6529
%r6527 = call i64 @f17(i64* %r6529, i64* %r6514) ; @make-env
store i64 %r6527, i64* %r6516
%r6533 = alloca i8*
call void @llvm.gcroot(i8** %r6533, i8* null)
%r6515 = bitcast i8** %r6533 to i64*
%r6532 = call i64 @f19(i64* %r6513) ; @get-procedure-nparams
store i64 %r6532, i64* %r6515
%r6534 = call i64 @f23(i64* %r6515, i64* %r6516) ; @fix-arbitrary-procs
%r6536 = bitcast [20 x i8]* @g6535 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6536, i32 1, i64* %r6516)
%r6538 = alloca i8*
call void @llvm.gcroot(i8** %r6538, i8* null)
%r6120 = bitcast i8** %r6538 to i64*
%r6537 = call i64 @apply-procedure(i64* %r6513, i64* %r6516) ; @apply-procedure
store i64 %r6537, i64* %r6120
br label %label177
label176:
%r6540 = alloca i8*
call void @llvm.gcroot(i8** %r6540, i8* null)
%r6120 = bitcast i8** %r6540 to i64*
%r6546 = alloca i8*
call void @llvm.gcroot(i8** %r6546, i8* null)
%r6541 = bitcast i8** %r6546 to i64*
%r6549 = alloca i8*
call void @llvm.gcroot(i8** %r6549, i8* null)
%r6547 = bitcast i8** %r6549 to i64*
%r6548 = add i64 0, 8
store i64 %r6548, i64* %r6547
%r6552 = alloca i8*
call void @llvm.gcroot(i8** %r6552, i8* null)
%r6550 = bitcast i8** %r6552 to i64*
%r6551 = add i64 0, 112
store i64 %r6551, i64* %r6550
%r6545 = call i64 @f36(i64* %env, i64* %r6547, i64* %r6550) ; @lookup-variable
store i64 %r6545, i64* %r6541
%r6554 = alloca i8*
call void @llvm.gcroot(i8** %r6554, i8* null)
%r6542 = bitcast i8** %r6554 to i64*
%r6553 = call i64 @f18(i64* %r6541) ; @get-procedure-env
store i64 %r6553, i64* %r6542
%r6556 = alloca i8*
call void @llvm.gcroot(i8** %r6556, i8* null)
%r6544 = bitcast i8** %r6556 to i64*
%r6559 = alloca i8*
call void @llvm.gcroot(i8** %r6559, i8* null)
%r6557 = bitcast i8** %r6559 to i64*
%r6558 = add i64 0, 4
store i64 %r6558, i64* %r6557
%r6555 = call i64 @f17(i64* %r6557, i64* %r6542) ; @make-env
store i64 %r6555, i64* %r6544
%r6562 = alloca i8*
call void @llvm.gcroot(i8** %r6562, i8* null)
%r6560 = bitcast i8** %r6562 to i64*
%r6565 = alloca i8*
call void @llvm.gcroot(i8** %r6565, i8* null)
%r6563 = bitcast i8** %r6565 to i64*
%r6564 = add i64 0, 0
store i64 %r6564, i64* %r6563
%r6568 = alloca i8*
call void @llvm.gcroot(i8** %r6568, i8* null)
%r6566 = bitcast i8** %r6568 to i64*
%r6567 = add i64 0, 4
store i64 %r6567, i64* %r6566
%r6561 = call i64 @f36(i64* %env, i64* %r6563, i64* %r6566) ; @lookup-variable
store i64 %r6561, i64* %r6560
%r6572 = alloca i8*
call void @llvm.gcroot(i8** %r6572, i8* null)
%r6570 = bitcast i8** %r6572 to i64*
%r6571 = add i64 0, 4
store i64 %r6571, i64* %r6570
%r6569 = call i64 @f13(i64* %r6544, i64* %r6570, i64* %r6560) ; @vector-set!
%r6574 = alloca i8*
call void @llvm.gcroot(i8** %r6574, i8* null)
%r6543 = bitcast i8** %r6574 to i64*
%r6573 = call i64 @f19(i64* %r6541) ; @get-procedure-nparams
store i64 %r6573, i64* %r6543
%r6575 = call i64 @f23(i64* %r6543, i64* %r6544) ; @fix-arbitrary-procs
%r6577 = bitcast [20 x i8]* @g6576 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6577, i32 1, i64* %r6544)
%r6579 = alloca i8*
call void @llvm.gcroot(i8** %r6579, i8* null)
%r6539 = bitcast i8** %r6579 to i64*
%r6578 = call i64 @apply-procedure(i64* %r6541, i64* %r6544) ; @apply-procedure
store i64 %r6578, i64* %r6539
%r6580 = call i64 @f2(i64* %r6539) ; @raw-number
%r6581 = trunc i64 %r6580 to i1
br i1 %r6581, label %label178, label %label179
label178:
%r6587 = ptrtoint [6 x i8]* @g6586 to i64
%r6589 = alloca i8*
call void @llvm.gcroot(i8** %r6589, i8* null)
%r6584 = bitcast i8** %r6589 to i64*
%r6592 = alloca i8*
call void @llvm.gcroot(i8** %r6592, i8* null)
%r6590 = bitcast i8** %r6592 to i64*
%r6591 = add i64 0, 20
store i64 %r6591, i64* %r6590
%r6595 = alloca i8*
call void @llvm.gcroot(i8** %r6595, i8* null)
%r6593 = bitcast i8** %r6595 to i64*
%r6594 = add i64 0, 4
store i64 %r6594, i64* %r6593
%r6588 = call i64 @make-string-or-symbol(i64 %r6587, i64* %r6590, i64* %r6593)
store i64 %r6588, i64* %r6584
%r6601 = alloca i8*
call void @llvm.gcroot(i8** %r6601, i8* null)
%r6596 = bitcast i8** %r6601 to i64*
%r6604 = alloca i8*
call void @llvm.gcroot(i8** %r6604, i8* null)
%r6602 = bitcast i8** %r6604 to i64*
%r6603 = add i64 0, 8
store i64 %r6603, i64* %r6602
%r6607 = alloca i8*
call void @llvm.gcroot(i8** %r6607, i8* null)
%r6605 = bitcast i8** %r6607 to i64*
%r6606 = add i64 0, 136
store i64 %r6606, i64* %r6605
%r6600 = call i64 @f36(i64* %env, i64* %r6602, i64* %r6605) ; @lookup-variable
store i64 %r6600, i64* %r6596
%r6609 = alloca i8*
call void @llvm.gcroot(i8** %r6609, i8* null)
%r6597 = bitcast i8** %r6609 to i64*
%r6608 = call i64 @f18(i64* %r6596) ; @get-procedure-env
store i64 %r6608, i64* %r6597
%r6611 = alloca i8*
call void @llvm.gcroot(i8** %r6611, i8* null)
%r6599 = bitcast i8** %r6611 to i64*
%r6614 = alloca i8*
call void @llvm.gcroot(i8** %r6614, i8* null)
%r6612 = bitcast i8** %r6614 to i64*
%r6613 = add i64 0, 0
store i64 %r6613, i64* %r6612
%r6610 = call i64 @f17(i64* %r6612, i64* %r6597) ; @make-env
store i64 %r6610, i64* %r6599
%r6616 = alloca i8*
call void @llvm.gcroot(i8** %r6616, i8* null)
%r6598 = bitcast i8** %r6616 to i64*
%r6615 = call i64 @f19(i64* %r6596) ; @get-procedure-nparams
store i64 %r6615, i64* %r6598
%r6617 = call i64 @f23(i64* %r6598, i64* %r6599) ; @fix-arbitrary-procs
%r6619 = bitcast [20 x i8]* @g6618 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6619, i32 1, i64* %r6599)
%r6621 = alloca i8*
call void @llvm.gcroot(i8** %r6621, i8* null)
%r6585 = bitcast i8** %r6621 to i64*
%r6620 = call i64 @apply-procedure(i64* %r6596, i64* %r6599) ; @apply-procedure
store i64 %r6620, i64* %r6585
%r6623 = alloca i8*
call void @llvm.gcroot(i8** %r6623, i8* null)
%r6582 = bitcast i8** %r6623 to i64*
%r6622 = call i64 @f21(i64* %r6584, i64* %r6585) ; @cons
store i64 %r6622, i64* %r6582
%r6629 = alloca i8*
call void @llvm.gcroot(i8** %r6629, i8* null)
%r6624 = bitcast i8** %r6629 to i64*
%r6632 = alloca i8*
call void @llvm.gcroot(i8** %r6632, i8* null)
%r6630 = bitcast i8** %r6632 to i64*
%r6631 = add i64 0, 8
store i64 %r6631, i64* %r6630
%r6635 = alloca i8*
call void @llvm.gcroot(i8** %r6635, i8* null)
%r6633 = bitcast i8** %r6635 to i64*
%r6634 = add i64 0, 148
store i64 %r6634, i64* %r6633
%r6628 = call i64 @f36(i64* %env, i64* %r6630, i64* %r6633) ; @lookup-variable
store i64 %r6628, i64* %r6624
%r6637 = alloca i8*
call void @llvm.gcroot(i8** %r6637, i8* null)
%r6625 = bitcast i8** %r6637 to i64*
%r6636 = call i64 @f18(i64* %r6624) ; @get-procedure-env
store i64 %r6636, i64* %r6625
%r6639 = alloca i8*
call void @llvm.gcroot(i8** %r6639, i8* null)
%r6627 = bitcast i8** %r6639 to i64*
%r6642 = alloca i8*
call void @llvm.gcroot(i8** %r6642, i8* null)
%r6640 = bitcast i8** %r6642 to i64*
%r6641 = add i64 0, 0
store i64 %r6641, i64* %r6640
%r6638 = call i64 @f17(i64* %r6640, i64* %r6625) ; @make-env
store i64 %r6638, i64* %r6627
%r6644 = alloca i8*
call void @llvm.gcroot(i8** %r6644, i8* null)
%r6626 = bitcast i8** %r6644 to i64*
%r6643 = call i64 @f19(i64* %r6624) ; @get-procedure-nparams
store i64 %r6643, i64* %r6626
%r6645 = call i64 @f23(i64* %r6626, i64* %r6627) ; @fix-arbitrary-procs
%r6647 = bitcast [20 x i8]* @g6646 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6647, i32 1, i64* %r6627)
%r6649 = alloca i8*
call void @llvm.gcroot(i8** %r6649, i8* null)
%r6583 = bitcast i8** %r6649 to i64*
%r6648 = call i64 @apply-procedure(i64* %r6624, i64* %r6627) ; @apply-procedure
store i64 %r6648, i64* %r6583
%r6651 = alloca i8*
call void @llvm.gcroot(i8** %r6651, i8* null)
%r6120 = bitcast i8** %r6651 to i64*
%r6650 = call i64 @f21(i64* %r6582, i64* %r6583) ; @cons
store i64 %r6650, i64* %r6120
br label %label180
label179:
%r6653 = alloca i8*
call void @llvm.gcroot(i8** %r6653, i8* null)
%r6120 = bitcast i8** %r6653 to i64*
%r6659 = alloca i8*
call void @llvm.gcroot(i8** %r6659, i8* null)
%r6654 = bitcast i8** %r6659 to i64*
%r6662 = alloca i8*
call void @llvm.gcroot(i8** %r6662, i8* null)
%r6660 = bitcast i8** %r6662 to i64*
%r6661 = add i64 0, 8
store i64 %r6661, i64* %r6660
%r6665 = alloca i8*
call void @llvm.gcroot(i8** %r6665, i8* null)
%r6663 = bitcast i8** %r6665 to i64*
%r6664 = add i64 0, 100
store i64 %r6664, i64* %r6663
%r6658 = call i64 @f36(i64* %env, i64* %r6660, i64* %r6663) ; @lookup-variable
store i64 %r6658, i64* %r6654
%r6667 = alloca i8*
call void @llvm.gcroot(i8** %r6667, i8* null)
%r6655 = bitcast i8** %r6667 to i64*
%r6666 = call i64 @f18(i64* %r6654) ; @get-procedure-env
store i64 %r6666, i64* %r6655
%r6669 = alloca i8*
call void @llvm.gcroot(i8** %r6669, i8* null)
%r6657 = bitcast i8** %r6669 to i64*
%r6672 = alloca i8*
call void @llvm.gcroot(i8** %r6672, i8* null)
%r6670 = bitcast i8** %r6672 to i64*
%r6671 = add i64 0, 4
store i64 %r6671, i64* %r6670
%r6668 = call i64 @f17(i64* %r6670, i64* %r6655) ; @make-env
store i64 %r6668, i64* %r6657
%r6675 = alloca i8*
call void @llvm.gcroot(i8** %r6675, i8* null)
%r6673 = bitcast i8** %r6675 to i64*
%r6678 = alloca i8*
call void @llvm.gcroot(i8** %r6678, i8* null)
%r6676 = bitcast i8** %r6678 to i64*
%r6677 = add i64 0, 0
store i64 %r6677, i64* %r6676
%r6681 = alloca i8*
call void @llvm.gcroot(i8** %r6681, i8* null)
%r6679 = bitcast i8** %r6681 to i64*
%r6680 = add i64 0, 4
store i64 %r6680, i64* %r6679
%r6674 = call i64 @f36(i64* %env, i64* %r6676, i64* %r6679) ; @lookup-variable
store i64 %r6674, i64* %r6673
%r6685 = alloca i8*
call void @llvm.gcroot(i8** %r6685, i8* null)
%r6683 = bitcast i8** %r6685 to i64*
%r6684 = add i64 0, 4
store i64 %r6684, i64* %r6683
%r6682 = call i64 @f13(i64* %r6657, i64* %r6683, i64* %r6673) ; @vector-set!
%r6687 = alloca i8*
call void @llvm.gcroot(i8** %r6687, i8* null)
%r6656 = bitcast i8** %r6687 to i64*
%r6686 = call i64 @f19(i64* %r6654) ; @get-procedure-nparams
store i64 %r6686, i64* %r6656
%r6688 = call i64 @f23(i64* %r6656, i64* %r6657) ; @fix-arbitrary-procs
%r6690 = bitcast [20 x i8]* @g6689 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6690, i32 1, i64* %r6657)
%r6692 = alloca i8*
call void @llvm.gcroot(i8** %r6692, i8* null)
%r6652 = bitcast i8** %r6692 to i64*
%r6691 = call i64 @apply-procedure(i64* %r6654, i64* %r6657) ; @apply-procedure
store i64 %r6691, i64* %r6652
%r6693 = call i64 @f2(i64* %r6652) ; @raw-number
%r6694 = trunc i64 %r6693 to i1
br i1 %r6694, label %label181, label %label182
label181:
%r6702 = alloca i8*
call void @llvm.gcroot(i8** %r6702, i8* null)
%r6697 = bitcast i8** %r6702 to i64*
%r6705 = alloca i8*
call void @llvm.gcroot(i8** %r6705, i8* null)
%r6703 = bitcast i8** %r6705 to i64*
%r6704 = add i64 0, 8
store i64 %r6704, i64* %r6703
%r6708 = alloca i8*
call void @llvm.gcroot(i8** %r6708, i8* null)
%r6706 = bitcast i8** %r6708 to i64*
%r6707 = add i64 0, 164
store i64 %r6707, i64* %r6706
%r6701 = call i64 @f36(i64* %env, i64* %r6703, i64* %r6706) ; @lookup-variable
store i64 %r6701, i64* %r6697
%r6710 = alloca i8*
call void @llvm.gcroot(i8** %r6710, i8* null)
%r6698 = bitcast i8** %r6710 to i64*
%r6709 = call i64 @f18(i64* %r6697) ; @get-procedure-env
store i64 %r6709, i64* %r6698
%r6712 = alloca i8*
call void @llvm.gcroot(i8** %r6712, i8* null)
%r6700 = bitcast i8** %r6712 to i64*
%r6715 = alloca i8*
call void @llvm.gcroot(i8** %r6715, i8* null)
%r6713 = bitcast i8** %r6715 to i64*
%r6714 = add i64 0, 0
store i64 %r6714, i64* %r6713
%r6711 = call i64 @f17(i64* %r6713, i64* %r6698) ; @make-env
store i64 %r6711, i64* %r6700
%r6717 = alloca i8*
call void @llvm.gcroot(i8** %r6717, i8* null)
%r6699 = bitcast i8** %r6717 to i64*
%r6716 = call i64 @f19(i64* %r6697) ; @get-procedure-nparams
store i64 %r6716, i64* %r6699
%r6718 = call i64 @f23(i64* %r6699, i64* %r6700) ; @fix-arbitrary-procs
%r6720 = bitcast [20 x i8]* @g6719 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6720, i32 1, i64* %r6700)
%r6722 = alloca i8*
call void @llvm.gcroot(i8** %r6722, i8* null)
%r6695 = bitcast i8** %r6722 to i64*
%r6721 = call i64 @apply-procedure(i64* %r6697, i64* %r6700) ; @apply-procedure
store i64 %r6721, i64* %r6695
%r6728 = alloca i8*
call void @llvm.gcroot(i8** %r6728, i8* null)
%r6723 = bitcast i8** %r6728 to i64*
%r6731 = alloca i8*
call void @llvm.gcroot(i8** %r6731, i8* null)
%r6729 = bitcast i8** %r6731 to i64*
%r6730 = add i64 0, 8
store i64 %r6730, i64* %r6729
%r6734 = alloca i8*
call void @llvm.gcroot(i8** %r6734, i8* null)
%r6732 = bitcast i8** %r6734 to i64*
%r6733 = add i64 0, 148
store i64 %r6733, i64* %r6732
%r6727 = call i64 @f36(i64* %env, i64* %r6729, i64* %r6732) ; @lookup-variable
store i64 %r6727, i64* %r6723
%r6736 = alloca i8*
call void @llvm.gcroot(i8** %r6736, i8* null)
%r6724 = bitcast i8** %r6736 to i64*
%r6735 = call i64 @f18(i64* %r6723) ; @get-procedure-env
store i64 %r6735, i64* %r6724
%r6738 = alloca i8*
call void @llvm.gcroot(i8** %r6738, i8* null)
%r6726 = bitcast i8** %r6738 to i64*
%r6741 = alloca i8*
call void @llvm.gcroot(i8** %r6741, i8* null)
%r6739 = bitcast i8** %r6741 to i64*
%r6740 = add i64 0, 0
store i64 %r6740, i64* %r6739
%r6737 = call i64 @f17(i64* %r6739, i64* %r6724) ; @make-env
store i64 %r6737, i64* %r6726
%r6743 = alloca i8*
call void @llvm.gcroot(i8** %r6743, i8* null)
%r6725 = bitcast i8** %r6743 to i64*
%r6742 = call i64 @f19(i64* %r6723) ; @get-procedure-nparams
store i64 %r6742, i64* %r6725
%r6744 = call i64 @f23(i64* %r6725, i64* %r6726) ; @fix-arbitrary-procs
%r6746 = bitcast [20 x i8]* @g6745 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6746, i32 1, i64* %r6726)
%r6748 = alloca i8*
call void @llvm.gcroot(i8** %r6748, i8* null)
%r6696 = bitcast i8** %r6748 to i64*
%r6747 = call i64 @apply-procedure(i64* %r6723, i64* %r6726) ; @apply-procedure
store i64 %r6747, i64* %r6696
%r6750 = alloca i8*
call void @llvm.gcroot(i8** %r6750, i8* null)
%r6120 = bitcast i8** %r6750 to i64*
%r6749 = call i64 @f21(i64* %r6695, i64* %r6696) ; @cons
store i64 %r6749, i64* %r6120
br label %label183
label182:
%r6752 = alloca i8*
call void @llvm.gcroot(i8** %r6752, i8* null)
%r6120 = bitcast i8** %r6752 to i64*
%r6758 = alloca i8*
call void @llvm.gcroot(i8** %r6758, i8* null)
%r6753 = bitcast i8** %r6758 to i64*
%r6761 = alloca i8*
call void @llvm.gcroot(i8** %r6761, i8* null)
%r6759 = bitcast i8** %r6761 to i64*
%r6760 = add i64 0, 8
store i64 %r6760, i64* %r6759
%r6764 = alloca i8*
call void @llvm.gcroot(i8** %r6764, i8* null)
%r6762 = bitcast i8** %r6764 to i64*
%r6763 = add i64 0, 128
store i64 %r6763, i64* %r6762
%r6757 = call i64 @f36(i64* %env, i64* %r6759, i64* %r6762) ; @lookup-variable
store i64 %r6757, i64* %r6753
%r6766 = alloca i8*
call void @llvm.gcroot(i8** %r6766, i8* null)
%r6754 = bitcast i8** %r6766 to i64*
%r6765 = call i64 @f18(i64* %r6753) ; @get-procedure-env
store i64 %r6765, i64* %r6754
%r6768 = alloca i8*
call void @llvm.gcroot(i8** %r6768, i8* null)
%r6756 = bitcast i8** %r6768 to i64*
%r6771 = alloca i8*
call void @llvm.gcroot(i8** %r6771, i8* null)
%r6769 = bitcast i8** %r6771 to i64*
%r6770 = add i64 0, 4
store i64 %r6770, i64* %r6769
%r6767 = call i64 @f17(i64* %r6769, i64* %r6754) ; @make-env
store i64 %r6767, i64* %r6756
%r6774 = alloca i8*
call void @llvm.gcroot(i8** %r6774, i8* null)
%r6772 = bitcast i8** %r6774 to i64*
%r6777 = alloca i8*
call void @llvm.gcroot(i8** %r6777, i8* null)
%r6775 = bitcast i8** %r6777 to i64*
%r6776 = add i64 0, 0
store i64 %r6776, i64* %r6775
%r6780 = alloca i8*
call void @llvm.gcroot(i8** %r6780, i8* null)
%r6778 = bitcast i8** %r6780 to i64*
%r6779 = add i64 0, 4
store i64 %r6779, i64* %r6778
%r6773 = call i64 @f36(i64* %env, i64* %r6775, i64* %r6778) ; @lookup-variable
store i64 %r6773, i64* %r6772
%r6784 = alloca i8*
call void @llvm.gcroot(i8** %r6784, i8* null)
%r6782 = bitcast i8** %r6784 to i64*
%r6783 = add i64 0, 4
store i64 %r6783, i64* %r6782
%r6781 = call i64 @f13(i64* %r6756, i64* %r6782, i64* %r6772) ; @vector-set!
%r6786 = alloca i8*
call void @llvm.gcroot(i8** %r6786, i8* null)
%r6755 = bitcast i8** %r6786 to i64*
%r6785 = call i64 @f19(i64* %r6753) ; @get-procedure-nparams
store i64 %r6785, i64* %r6755
%r6787 = call i64 @f23(i64* %r6755, i64* %r6756) ; @fix-arbitrary-procs
%r6789 = bitcast [20 x i8]* @g6788 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6789, i32 1, i64* %r6756)
%r6791 = alloca i8*
call void @llvm.gcroot(i8** %r6791, i8* null)
%r6751 = bitcast i8** %r6791 to i64*
%r6790 = call i64 @apply-procedure(i64* %r6753, i64* %r6756) ; @apply-procedure
store i64 %r6790, i64* %r6751
%r6792 = call i64 @f2(i64* %r6751) ; @raw-number
%r6793 = trunc i64 %r6792 to i1
br i1 %r6793, label %label184, label %label185
label184:
%r6799 = alloca i8*
call void @llvm.gcroot(i8** %r6799, i8* null)
%r6794 = bitcast i8** %r6799 to i64*
%r6802 = alloca i8*
call void @llvm.gcroot(i8** %r6802, i8* null)
%r6800 = bitcast i8** %r6802 to i64*
%r6801 = add i64 0, 8
store i64 %r6801, i64* %r6800
%r6805 = alloca i8*
call void @llvm.gcroot(i8** %r6805, i8* null)
%r6803 = bitcast i8** %r6805 to i64*
%r6804 = add i64 0, 140
store i64 %r6804, i64* %r6803
%r6798 = call i64 @f36(i64* %env, i64* %r6800, i64* %r6803) ; @lookup-variable
store i64 %r6798, i64* %r6794
%r6807 = alloca i8*
call void @llvm.gcroot(i8** %r6807, i8* null)
%r6795 = bitcast i8** %r6807 to i64*
%r6806 = call i64 @f18(i64* %r6794) ; @get-procedure-env
store i64 %r6806, i64* %r6795
%r6809 = alloca i8*
call void @llvm.gcroot(i8** %r6809, i8* null)
%r6797 = bitcast i8** %r6809 to i64*
%r6812 = alloca i8*
call void @llvm.gcroot(i8** %r6812, i8* null)
%r6810 = bitcast i8** %r6812 to i64*
%r6811 = add i64 0, 0
store i64 %r6811, i64* %r6810
%r6808 = call i64 @f17(i64* %r6810, i64* %r6795) ; @make-env
store i64 %r6808, i64* %r6797
%r6814 = alloca i8*
call void @llvm.gcroot(i8** %r6814, i8* null)
%r6796 = bitcast i8** %r6814 to i64*
%r6813 = call i64 @f19(i64* %r6794) ; @get-procedure-nparams
store i64 %r6813, i64* %r6796
%r6815 = call i64 @f23(i64* %r6796, i64* %r6797) ; @fix-arbitrary-procs
%r6817 = bitcast [20 x i8]* @g6816 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6817, i32 1, i64* %r6797)
%r6819 = alloca i8*
call void @llvm.gcroot(i8** %r6819, i8* null)
%r6120 = bitcast i8** %r6819 to i64*
%r6818 = call i64 @apply-procedure(i64* %r6794, i64* %r6797) ; @apply-procedure
store i64 %r6818, i64* %r6120
br label %label186
label185:
%r6821 = alloca i8*
call void @llvm.gcroot(i8** %r6821, i8* null)
%r6120 = bitcast i8** %r6821 to i64*
%r6827 = alloca i8*
call void @llvm.gcroot(i8** %r6827, i8* null)
%r6822 = bitcast i8** %r6827 to i64*
%r6830 = alloca i8*
call void @llvm.gcroot(i8** %r6830, i8* null)
%r6828 = bitcast i8** %r6830 to i64*
%r6829 = add i64 0, 8
store i64 %r6829, i64* %r6828
%r6833 = alloca i8*
call void @llvm.gcroot(i8** %r6833, i8* null)
%r6831 = bitcast i8** %r6833 to i64*
%r6832 = add i64 0, 84
store i64 %r6832, i64* %r6831
%r6826 = call i64 @f36(i64* %env, i64* %r6828, i64* %r6831) ; @lookup-variable
store i64 %r6826, i64* %r6822
%r6835 = alloca i8*
call void @llvm.gcroot(i8** %r6835, i8* null)
%r6823 = bitcast i8** %r6835 to i64*
%r6834 = call i64 @f18(i64* %r6822) ; @get-procedure-env
store i64 %r6834, i64* %r6823
%r6837 = alloca i8*
call void @llvm.gcroot(i8** %r6837, i8* null)
%r6825 = bitcast i8** %r6837 to i64*
%r6840 = alloca i8*
call void @llvm.gcroot(i8** %r6840, i8* null)
%r6838 = bitcast i8** %r6840 to i64*
%r6839 = add i64 0, 4
store i64 %r6839, i64* %r6838
%r6836 = call i64 @f17(i64* %r6838, i64* %r6823) ; @make-env
store i64 %r6836, i64* %r6825
%r6843 = alloca i8*
call void @llvm.gcroot(i8** %r6843, i8* null)
%r6841 = bitcast i8** %r6843 to i64*
%r6846 = alloca i8*
call void @llvm.gcroot(i8** %r6846, i8* null)
%r6844 = bitcast i8** %r6846 to i64*
%r6845 = add i64 0, 0
store i64 %r6845, i64* %r6844
%r6849 = alloca i8*
call void @llvm.gcroot(i8** %r6849, i8* null)
%r6847 = bitcast i8** %r6849 to i64*
%r6848 = add i64 0, 4
store i64 %r6848, i64* %r6847
%r6842 = call i64 @f36(i64* %env, i64* %r6844, i64* %r6847) ; @lookup-variable
store i64 %r6842, i64* %r6841
%r6853 = alloca i8*
call void @llvm.gcroot(i8** %r6853, i8* null)
%r6851 = bitcast i8** %r6853 to i64*
%r6852 = add i64 0, 4
store i64 %r6852, i64* %r6851
%r6850 = call i64 @f13(i64* %r6825, i64* %r6851, i64* %r6841) ; @vector-set!
%r6855 = alloca i8*
call void @llvm.gcroot(i8** %r6855, i8* null)
%r6824 = bitcast i8** %r6855 to i64*
%r6854 = call i64 @f19(i64* %r6822) ; @get-procedure-nparams
store i64 %r6854, i64* %r6824
%r6856 = call i64 @f23(i64* %r6824, i64* %r6825) ; @fix-arbitrary-procs
%r6858 = bitcast [20 x i8]* @g6857 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6858, i32 1, i64* %r6825)
%r6860 = alloca i8*
call void @llvm.gcroot(i8** %r6860, i8* null)
%r6820 = bitcast i8** %r6860 to i64*
%r6859 = call i64 @apply-procedure(i64* %r6822, i64* %r6825) ; @apply-procedure
store i64 %r6859, i64* %r6820
%r6861 = call i64 @f2(i64* %r6820) ; @raw-number
%r6862 = trunc i64 %r6861 to i1
br i1 %r6862, label %label187, label %label188
label187:
%r6870 = alloca i8*
call void @llvm.gcroot(i8** %r6870, i8* null)
%r6865 = bitcast i8** %r6870 to i64*
%r6873 = alloca i8*
call void @llvm.gcroot(i8** %r6873, i8* null)
%r6871 = bitcast i8** %r6873 to i64*
%r6872 = add i64 0, 8
store i64 %r6872, i64* %r6871
%r6876 = alloca i8*
call void @llvm.gcroot(i8** %r6876, i8* null)
%r6874 = bitcast i8** %r6876 to i64*
%r6875 = add i64 0, 156
store i64 %r6875, i64* %r6874
%r6869 = call i64 @f36(i64* %env, i64* %r6871, i64* %r6874) ; @lookup-variable
store i64 %r6869, i64* %r6865
%r6878 = alloca i8*
call void @llvm.gcroot(i8** %r6878, i8* null)
%r6866 = bitcast i8** %r6878 to i64*
%r6877 = call i64 @f18(i64* %r6865) ; @get-procedure-env
store i64 %r6877, i64* %r6866
%r6880 = alloca i8*
call void @llvm.gcroot(i8** %r6880, i8* null)
%r6868 = bitcast i8** %r6880 to i64*
%r6883 = alloca i8*
call void @llvm.gcroot(i8** %r6883, i8* null)
%r6881 = bitcast i8** %r6883 to i64*
%r6882 = add i64 0, 4
store i64 %r6882, i64* %r6881
%r6879 = call i64 @f17(i64* %r6881, i64* %r6866) ; @make-env
store i64 %r6879, i64* %r6868
%r6886 = alloca i8*
call void @llvm.gcroot(i8** %r6886, i8* null)
%r6884 = bitcast i8** %r6886 to i64*
%r6889 = alloca i8*
call void @llvm.gcroot(i8** %r6889, i8* null)
%r6887 = bitcast i8** %r6889 to i64*
%r6888 = add i64 0, 0
store i64 %r6888, i64* %r6887
%r6892 = alloca i8*
call void @llvm.gcroot(i8** %r6892, i8* null)
%r6890 = bitcast i8** %r6892 to i64*
%r6891 = add i64 0, 4
store i64 %r6891, i64* %r6890
%r6885 = call i64 @f36(i64* %env, i64* %r6887, i64* %r6890) ; @lookup-variable
store i64 %r6885, i64* %r6884
%r6896 = alloca i8*
call void @llvm.gcroot(i8** %r6896, i8* null)
%r6894 = bitcast i8** %r6896 to i64*
%r6895 = add i64 0, 4
store i64 %r6895, i64* %r6894
%r6893 = call i64 @f13(i64* %r6868, i64* %r6894, i64* %r6884) ; @vector-set!
%r6898 = alloca i8*
call void @llvm.gcroot(i8** %r6898, i8* null)
%r6867 = bitcast i8** %r6898 to i64*
%r6897 = call i64 @f19(i64* %r6865) ; @get-procedure-nparams
store i64 %r6897, i64* %r6867
%r6899 = call i64 @f23(i64* %r6867, i64* %r6868) ; @fix-arbitrary-procs
%r6901 = bitcast [20 x i8]* @g6900 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6901, i32 1, i64* %r6868)
%r6903 = alloca i8*
call void @llvm.gcroot(i8** %r6903, i8* null)
%r6863 = bitcast i8** %r6903 to i64*
%r6902 = call i64 @apply-procedure(i64* %r6865, i64* %r6868) ; @apply-procedure
store i64 %r6902, i64* %r6863
%r6909 = alloca i8*
call void @llvm.gcroot(i8** %r6909, i8* null)
%r6904 = bitcast i8** %r6909 to i64*
%r6912 = alloca i8*
call void @llvm.gcroot(i8** %r6912, i8* null)
%r6910 = bitcast i8** %r6912 to i64*
%r6911 = add i64 0, 8
store i64 %r6911, i64* %r6910
%r6915 = alloca i8*
call void @llvm.gcroot(i8** %r6915, i8* null)
%r6913 = bitcast i8** %r6915 to i64*
%r6914 = add i64 0, 148
store i64 %r6914, i64* %r6913
%r6908 = call i64 @f36(i64* %env, i64* %r6910, i64* %r6913) ; @lookup-variable
store i64 %r6908, i64* %r6904
%r6917 = alloca i8*
call void @llvm.gcroot(i8** %r6917, i8* null)
%r6905 = bitcast i8** %r6917 to i64*
%r6916 = call i64 @f18(i64* %r6904) ; @get-procedure-env
store i64 %r6916, i64* %r6905
%r6919 = alloca i8*
call void @llvm.gcroot(i8** %r6919, i8* null)
%r6907 = bitcast i8** %r6919 to i64*
%r6922 = alloca i8*
call void @llvm.gcroot(i8** %r6922, i8* null)
%r6920 = bitcast i8** %r6922 to i64*
%r6921 = add i64 0, 0
store i64 %r6921, i64* %r6920
%r6918 = call i64 @f17(i64* %r6920, i64* %r6905) ; @make-env
store i64 %r6918, i64* %r6907
%r6924 = alloca i8*
call void @llvm.gcroot(i8** %r6924, i8* null)
%r6906 = bitcast i8** %r6924 to i64*
%r6923 = call i64 @f19(i64* %r6904) ; @get-procedure-nparams
store i64 %r6923, i64* %r6906
%r6925 = call i64 @f23(i64* %r6906, i64* %r6907) ; @fix-arbitrary-procs
%r6927 = bitcast [20 x i8]* @g6926 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6927, i32 1, i64* %r6907)
%r6929 = alloca i8*
call void @llvm.gcroot(i8** %r6929, i8* null)
%r6864 = bitcast i8** %r6929 to i64*
%r6928 = call i64 @apply-procedure(i64* %r6904, i64* %r6907) ; @apply-procedure
store i64 %r6928, i64* %r6864
%r6931 = alloca i8*
call void @llvm.gcroot(i8** %r6931, i8* null)
%r6120 = bitcast i8** %r6931 to i64*
%r6930 = call i64 @f21(i64* %r6863, i64* %r6864) ; @cons
store i64 %r6930, i64* %r6120
br label %label189
label188:
%r6939 = alloca i8*
call void @llvm.gcroot(i8** %r6939, i8* null)
%r6934 = bitcast i8** %r6939 to i64*
%r6942 = alloca i8*
call void @llvm.gcroot(i8** %r6942, i8* null)
%r6940 = bitcast i8** %r6942 to i64*
%r6941 = add i64 0, 8
store i64 %r6941, i64* %r6940
%r6945 = alloca i8*
call void @llvm.gcroot(i8** %r6945, i8* null)
%r6943 = bitcast i8** %r6945 to i64*
%r6944 = add i64 0, 160
store i64 %r6944, i64* %r6943
%r6938 = call i64 @f36(i64* %env, i64* %r6940, i64* %r6943) ; @lookup-variable
store i64 %r6938, i64* %r6934
%r6947 = alloca i8*
call void @llvm.gcroot(i8** %r6947, i8* null)
%r6935 = bitcast i8** %r6947 to i64*
%r6946 = call i64 @f18(i64* %r6934) ; @get-procedure-env
store i64 %r6946, i64* %r6935
%r6949 = alloca i8*
call void @llvm.gcroot(i8** %r6949, i8* null)
%r6937 = bitcast i8** %r6949 to i64*
%r6952 = alloca i8*
call void @llvm.gcroot(i8** %r6952, i8* null)
%r6950 = bitcast i8** %r6952 to i64*
%r6951 = add i64 0, 4
store i64 %r6951, i64* %r6950
%r6948 = call i64 @f17(i64* %r6950, i64* %r6935) ; @make-env
store i64 %r6948, i64* %r6937
%r6955 = alloca i8*
call void @llvm.gcroot(i8** %r6955, i8* null)
%r6953 = bitcast i8** %r6955 to i64*
%r6958 = alloca i8*
call void @llvm.gcroot(i8** %r6958, i8* null)
%r6956 = bitcast i8** %r6958 to i64*
%r6957 = add i64 0, 0
store i64 %r6957, i64* %r6956
%r6961 = alloca i8*
call void @llvm.gcroot(i8** %r6961, i8* null)
%r6959 = bitcast i8** %r6961 to i64*
%r6960 = add i64 0, 4
store i64 %r6960, i64* %r6959
%r6954 = call i64 @f36(i64* %env, i64* %r6956, i64* %r6959) ; @lookup-variable
store i64 %r6954, i64* %r6953
%r6965 = alloca i8*
call void @llvm.gcroot(i8** %r6965, i8* null)
%r6963 = bitcast i8** %r6965 to i64*
%r6964 = add i64 0, 4
store i64 %r6964, i64* %r6963
%r6962 = call i64 @f13(i64* %r6937, i64* %r6963, i64* %r6953) ; @vector-set!
%r6967 = alloca i8*
call void @llvm.gcroot(i8** %r6967, i8* null)
%r6936 = bitcast i8** %r6967 to i64*
%r6966 = call i64 @f19(i64* %r6934) ; @get-procedure-nparams
store i64 %r6966, i64* %r6936
%r6968 = call i64 @f23(i64* %r6936, i64* %r6937) ; @fix-arbitrary-procs
%r6970 = bitcast [20 x i8]* @g6969 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6970, i32 1, i64* %r6937)
%r6972 = alloca i8*
call void @llvm.gcroot(i8** %r6972, i8* null)
%r6932 = bitcast i8** %r6972 to i64*
%r6971 = call i64 @apply-procedure(i64* %r6934, i64* %r6937) ; @apply-procedure
store i64 %r6971, i64* %r6932
%r6978 = alloca i8*
call void @llvm.gcroot(i8** %r6978, i8* null)
%r6973 = bitcast i8** %r6978 to i64*
%r6981 = alloca i8*
call void @llvm.gcroot(i8** %r6981, i8* null)
%r6979 = bitcast i8** %r6981 to i64*
%r6980 = add i64 0, 8
store i64 %r6980, i64* %r6979
%r6984 = alloca i8*
call void @llvm.gcroot(i8** %r6984, i8* null)
%r6982 = bitcast i8** %r6984 to i64*
%r6983 = add i64 0, 148
store i64 %r6983, i64* %r6982
%r6977 = call i64 @f36(i64* %env, i64* %r6979, i64* %r6982) ; @lookup-variable
store i64 %r6977, i64* %r6973
%r6986 = alloca i8*
call void @llvm.gcroot(i8** %r6986, i8* null)
%r6974 = bitcast i8** %r6986 to i64*
%r6985 = call i64 @f18(i64* %r6973) ; @get-procedure-env
store i64 %r6985, i64* %r6974
%r6988 = alloca i8*
call void @llvm.gcroot(i8** %r6988, i8* null)
%r6976 = bitcast i8** %r6988 to i64*
%r6991 = alloca i8*
call void @llvm.gcroot(i8** %r6991, i8* null)
%r6989 = bitcast i8** %r6991 to i64*
%r6990 = add i64 0, 0
store i64 %r6990, i64* %r6989
%r6987 = call i64 @f17(i64* %r6989, i64* %r6974) ; @make-env
store i64 %r6987, i64* %r6976
%r6993 = alloca i8*
call void @llvm.gcroot(i8** %r6993, i8* null)
%r6975 = bitcast i8** %r6993 to i64*
%r6992 = call i64 @f19(i64* %r6973) ; @get-procedure-nparams
store i64 %r6992, i64* %r6975
%r6994 = call i64 @f23(i64* %r6975, i64* %r6976) ; @fix-arbitrary-procs
%r6996 = bitcast [20 x i8]* @g6995 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r6996, i32 1, i64* %r6976)
%r6998 = alloca i8*
call void @llvm.gcroot(i8** %r6998, i8* null)
%r6933 = bitcast i8** %r6998 to i64*
%r6997 = call i64 @apply-procedure(i64* %r6973, i64* %r6976) ; @apply-procedure
store i64 %r6997, i64* %r6933
%r7000 = alloca i8*
call void @llvm.gcroot(i8** %r7000, i8* null)
%r6120 = bitcast i8** %r7000 to i64*
%r6999 = call i64 @f21(i64* %r6932, i64* %r6933) ; @cons
store i64 %r6999, i64* %r6120
br label %label189
label189:
br label %label186
label186:
br label %label183
label183:
br label %label180
label180:
br label %label177
label177:
br label %label174
label174:
br label %label171
label171:
br label %label168
label168:
br label %label165
label165:
%r7001 = load i64* %r6120
ret i64 %r7001
}

; @f132
define i64 @f135(i64* %env) gc "shadow-stack" {
%r7003 = alloca i8*
call void @llvm.gcroot(i8** %r7003, i8* null)
%r6121 = bitcast i8** %r7003 to i64*
%r7006 = alloca i8*
call void @llvm.gcroot(i8** %r7006, i8* null)
%r7004 = bitcast i8** %r7006 to i64*
%r7005 = add i64 0, 4
store i64 %r7005, i64* %r7004
%r7002 = call i64 @f17(i64* %r7004, i64* %env) ; @make-env
store i64 %r7002, i64* %r6121
%r7008 = alloca i8*
call void @llvm.gcroot(i8** %r7008, i8* null)
%r6118 = bitcast i8** %r7008 to i64*
%r7007 = call i64 @f134(i64* %r6121) ; @f133
store i64 %r7007, i64* %r6118
%r7009 = load i64* %r6118
ret i64 %r7009
}

; @f138
define i64 @f139(i64* %env) gc "shadow-stack" {
%r7034 = alloca i8*
call void @llvm.gcroot(i8** %r7034, i8* null)
%r7031 = bitcast i8** %r7034 to i64*
%r7038 = alloca i8*
call void @llvm.gcroot(i8** %r7038, i8* null)
%r7035 = bitcast i8** %r7038 to i64*
%r7041 = alloca i8*
call void @llvm.gcroot(i8** %r7041, i8* null)
%r7039 = bitcast i8** %r7041 to i64*
%r7040 = add i64 0, 0
store i64 %r7040, i64* %r7039
%r7044 = alloca i8*
call void @llvm.gcroot(i8** %r7044, i8* null)
%r7042 = bitcast i8** %r7044 to i64*
%r7043 = add i64 0, 4
store i64 %r7043, i64* %r7042
%r7037 = call i64 @f36(i64* %env, i64* %r7039, i64* %r7042) ; @lookup-variable
store i64 %r7037, i64* %r7035
%r7047 = alloca i8*
call void @llvm.gcroot(i8** %r7047, i8* null)
%r7045 = bitcast i8** %r7047 to i64*
%r7050 = alloca i8*
call void @llvm.gcroot(i8** %r7050, i8* null)
%r7048 = bitcast i8** %r7050 to i64*
%r7049 = add i64 0, 0
store i64 %r7049, i64* %r7048
%r7053 = alloca i8*
call void @llvm.gcroot(i8** %r7053, i8* null)
%r7051 = bitcast i8** %r7053 to i64*
%r7052 = add i64 0, 8
store i64 %r7052, i64* %r7051
%r7046 = call i64 @f36(i64* %env, i64* %r7048, i64* %r7051) ; @lookup-variable
store i64 %r7046, i64* %r7045
%r7055 = alloca i8*
call void @llvm.gcroot(i8** %r7055, i8* null)
%r7036 = bitcast i8** %r7055 to i64*
%r7054 = call i64 @f29(i64* %r7045) ; @car
store i64 %r7054, i64* %r7036
%r7057 = alloca i8*
call void @llvm.gcroot(i8** %r7057, i8* null)
%r7033 = bitcast i8** %r7057 to i64*
%r7056 = call i64 @f9(i64* %r7035, i64* %r7036) ; @=
store i64 %r7056, i64* %r7033
%r7058 = call i64 @f2(i64* %r7033) ; @raw-number
%r7059 = trunc i64 %r7058 to i1
br i1 %r7059, label %label190, label %label191
label190:
%r7061 = alloca i8*
call void @llvm.gcroot(i8** %r7061, i8* null)
%r7031 = bitcast i8** %r7061 to i64*
%r7064 = alloca i8*
call void @llvm.gcroot(i8** %r7064, i8* null)
%r7062 = bitcast i8** %r7064 to i64*
%r7063 = add i64 0, 0
store i64 %r7063, i64* %r7062
%r7067 = alloca i8*
call void @llvm.gcroot(i8** %r7067, i8* null)
%r7065 = bitcast i8** %r7067 to i64*
%r7066 = add i64 0, 12
store i64 %r7066, i64* %r7065
%r7060 = call i64 @f36(i64* %env, i64* %r7062, i64* %r7065) ; @lookup-variable
store i64 %r7060, i64* %r7031
br label %label192
label191:
%r7073 = alloca i8*
call void @llvm.gcroot(i8** %r7073, i8* null)
%r7068 = bitcast i8** %r7073 to i64*
%r7076 = alloca i8*
call void @llvm.gcroot(i8** %r7076, i8* null)
%r7074 = bitcast i8** %r7076 to i64*
%r7075 = add i64 0, 4
store i64 %r7075, i64* %r7074
%r7079 = alloca i8*
call void @llvm.gcroot(i8** %r7079, i8* null)
%r7077 = bitcast i8** %r7079 to i64*
%r7078 = add i64 0, 4
store i64 %r7078, i64* %r7077
%r7072 = call i64 @f36(i64* %env, i64* %r7074, i64* %r7077) ; @lookup-variable
store i64 %r7072, i64* %r7068
%r7081 = alloca i8*
call void @llvm.gcroot(i8** %r7081, i8* null)
%r7069 = bitcast i8** %r7081 to i64*
%r7080 = call i64 @f18(i64* %r7068) ; @get-procedure-env
store i64 %r7080, i64* %r7069
%r7083 = alloca i8*
call void @llvm.gcroot(i8** %r7083, i8* null)
%r7071 = bitcast i8** %r7083 to i64*
%r7086 = alloca i8*
call void @llvm.gcroot(i8** %r7086, i8* null)
%r7084 = bitcast i8** %r7086 to i64*
%r7085 = add i64 0, 12
store i64 %r7085, i64* %r7084
%r7082 = call i64 @f17(i64* %r7084, i64* %r7069) ; @make-env
store i64 %r7082, i64* %r7071
%r7089 = alloca i8*
call void @llvm.gcroot(i8** %r7089, i8* null)
%r7087 = bitcast i8** %r7089 to i64*
%r7092 = alloca i8*
call void @llvm.gcroot(i8** %r7092, i8* null)
%r7090 = bitcast i8** %r7092 to i64*
%r7091 = add i64 0, 0
store i64 %r7091, i64* %r7090
%r7095 = alloca i8*
call void @llvm.gcroot(i8** %r7095, i8* null)
%r7093 = bitcast i8** %r7095 to i64*
%r7094 = add i64 0, 4
store i64 %r7094, i64* %r7093
%r7088 = call i64 @f36(i64* %env, i64* %r7090, i64* %r7093) ; @lookup-variable
store i64 %r7088, i64* %r7087
%r7099 = alloca i8*
call void @llvm.gcroot(i8** %r7099, i8* null)
%r7097 = bitcast i8** %r7099 to i64*
%r7098 = add i64 0, 4
store i64 %r7098, i64* %r7097
%r7096 = call i64 @f13(i64* %r7071, i64* %r7097, i64* %r7087) ; @vector-set!
%r7103 = alloca i8*
call void @llvm.gcroot(i8** %r7103, i8* null)
%r7101 = bitcast i8** %r7103 to i64*
%r7106 = alloca i8*
call void @llvm.gcroot(i8** %r7106, i8* null)
%r7104 = bitcast i8** %r7106 to i64*
%r7105 = add i64 0, 0
store i64 %r7105, i64* %r7104
%r7109 = alloca i8*
call void @llvm.gcroot(i8** %r7109, i8* null)
%r7107 = bitcast i8** %r7109 to i64*
%r7108 = add i64 0, 8
store i64 %r7108, i64* %r7107
%r7102 = call i64 @f36(i64* %env, i64* %r7104, i64* %r7107) ; @lookup-variable
store i64 %r7102, i64* %r7101
%r7111 = alloca i8*
call void @llvm.gcroot(i8** %r7111, i8* null)
%r7100 = bitcast i8** %r7111 to i64*
%r7110 = call i64 @f30(i64* %r7101) ; @cdr
store i64 %r7110, i64* %r7100
%r7115 = alloca i8*
call void @llvm.gcroot(i8** %r7115, i8* null)
%r7113 = bitcast i8** %r7115 to i64*
%r7114 = add i64 0, 8
store i64 %r7114, i64* %r7113
%r7112 = call i64 @f13(i64* %r7071, i64* %r7113, i64* %r7100) ; @vector-set!
%r7120 = alloca i8*
call void @llvm.gcroot(i8** %r7120, i8* null)
%r7117 = bitcast i8** %r7120 to i64*
%r7123 = alloca i8*
call void @llvm.gcroot(i8** %r7123, i8* null)
%r7121 = bitcast i8** %r7123 to i64*
%r7122 = add i64 0, 0
store i64 %r7122, i64* %r7121
%r7126 = alloca i8*
call void @llvm.gcroot(i8** %r7126, i8* null)
%r7124 = bitcast i8** %r7126 to i64*
%r7125 = add i64 0, 12
store i64 %r7125, i64* %r7124
%r7119 = call i64 @f36(i64* %env, i64* %r7121, i64* %r7124) ; @lookup-variable
store i64 %r7119, i64* %r7117
%r7128 = alloca i8*
call void @llvm.gcroot(i8** %r7128, i8* null)
%r7118 = bitcast i8** %r7128 to i64*
%r7127 = add i64 0, 4
store i64 %r7127, i64* %r7118
%r7130 = alloca i8*
call void @llvm.gcroot(i8** %r7130, i8* null)
%r7116 = bitcast i8** %r7130 to i64*
%r7129 = call i64 @f16(i64* %r7117, i64* %r7118) ; @+
store i64 %r7129, i64* %r7116
%r7134 = alloca i8*
call void @llvm.gcroot(i8** %r7134, i8* null)
%r7132 = bitcast i8** %r7134 to i64*
%r7133 = add i64 0, 12
store i64 %r7133, i64* %r7132
%r7131 = call i64 @f13(i64* %r7071, i64* %r7132, i64* %r7116) ; @vector-set!
%r7136 = alloca i8*
call void @llvm.gcroot(i8** %r7136, i8* null)
%r7070 = bitcast i8** %r7136 to i64*
%r7135 = call i64 @f19(i64* %r7068) ; @get-procedure-nparams
store i64 %r7135, i64* %r7070
%r7137 = call i64 @f23(i64* %r7070, i64* %r7071) ; @fix-arbitrary-procs
%r7139 = bitcast [20 x i8]* @g7138 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7139, i32 1, i64* %r7071)
%r7141 = alloca i8*
call void @llvm.gcroot(i8** %r7141, i8* null)
%r7031 = bitcast i8** %r7141 to i64*
%r7140 = call i64 @apply-procedure(i64* %r7068, i64* %r7071) ; @apply-procedure
store i64 %r7140, i64* %r7031
br label %label192
label192:
%r7142 = load i64* %r7031
ret i64 %r7142
}

; @f137
define i64 @f140(i64* %env) gc "shadow-stack" {
%r7144 = alloca i8*
call void @llvm.gcroot(i8** %r7144, i8* null)
%r7030 = bitcast i8** %r7144 to i64*
%r7147 = alloca i8*
call void @llvm.gcroot(i8** %r7147, i8* null)
%r7145 = bitcast i8** %r7147 to i64*
%r7146 = add i64 0, 0
store i64 %r7146, i64* %r7145
%r7143 = call i64 @make-procedure(i64 (i64*)* @f139, i64* %env, i64* %r7145)
store i64 %r7143, i64* %r7030
%r7149 = alloca i8*
call void @llvm.gcroot(i8** %r7149, i8* null)
%r7029 = bitcast i8** %r7149 to i64*
%r7152 = alloca i8*
call void @llvm.gcroot(i8** %r7152, i8* null)
%r7150 = bitcast i8** %r7152 to i64*
%r7151 = add i64 0, 0
store i64 %r7151, i64* %r7150
%r7155 = alloca i8*
call void @llvm.gcroot(i8** %r7155, i8* null)
%r7153 = bitcast i8** %r7155 to i64*
%r7154 = add i64 0, 4
store i64 %r7154, i64* %r7153
%r7148 = call i64 @f37(i64* %env, i64* %r7150, i64* %r7153, i64* %r7030) ; @set-variable!
store i64 %r7148, i64* %r7029
%r7157 = alloca i8*
call void @llvm.gcroot(i8** %r7157, i8* null)
%r7027 = bitcast i8** %r7157 to i64*
%r7160 = alloca i8*
call void @llvm.gcroot(i8** %r7160, i8* null)
%r7158 = bitcast i8** %r7160 to i64*
%r7163 = alloca i8*
call void @llvm.gcroot(i8** %r7163, i8* null)
%r7161 = bitcast i8** %r7163 to i64*
%r7162 = add i64 0, 4
store i64 %r7162, i64* %r7161
%r7166 = alloca i8*
call void @llvm.gcroot(i8** %r7166, i8* null)
%r7164 = bitcast i8** %r7166 to i64*
%r7165 = add i64 0, 4
store i64 %r7165, i64* %r7164
%r7159 = call i64 @f36(i64* %env, i64* %r7161, i64* %r7164) ; @lookup-variable
store i64 %r7159, i64* %r7158
%r7168 = alloca i8*
call void @llvm.gcroot(i8** %r7168, i8* null)
%r7156 = bitcast i8** %r7168 to i64*
%r7167 = call i64 @null(i64* %r7158) ; @null?
store i64 %r7167, i64* %r7156
%r7169 = call i64 @f2(i64* %r7156) ; @raw-number
%r7170 = trunc i64 %r7169 to i1
br i1 %r7170, label %label193, label %label194
label193:
%r7172 = alloca i8*
call void @llvm.gcroot(i8** %r7172, i8* null)
%r7027 = bitcast i8** %r7172 to i64*
%r7175 = alloca i8*
call void @llvm.gcroot(i8** %r7175, i8* null)
%r7173 = bitcast i8** %r7175 to i64*
%r7174 = add i64 0, 4
store i64 %r7174, i64* %r7173
%r7178 = alloca i8*
call void @llvm.gcroot(i8** %r7178, i8* null)
%r7176 = bitcast i8** %r7178 to i64*
%r7177 = add i64 0, 8
store i64 %r7177, i64* %r7176
%r7171 = call i64 @f36(i64* %env, i64* %r7173, i64* %r7176) ; @lookup-variable
store i64 %r7171, i64* %r7027
br label %label195
label194:
%r7184 = alloca i8*
call void @llvm.gcroot(i8** %r7184, i8* null)
%r7179 = bitcast i8** %r7184 to i64*
%r7187 = alloca i8*
call void @llvm.gcroot(i8** %r7187, i8* null)
%r7185 = bitcast i8** %r7187 to i64*
%r7186 = add i64 0, 8
store i64 %r7186, i64* %r7185
%r7190 = alloca i8*
call void @llvm.gcroot(i8** %r7190, i8* null)
%r7188 = bitcast i8** %r7190 to i64*
%r7189 = add i64 0, 152
store i64 %r7189, i64* %r7188
%r7183 = call i64 @f36(i64* %env, i64* %r7185, i64* %r7188) ; @lookup-variable
store i64 %r7183, i64* %r7179
%r7192 = alloca i8*
call void @llvm.gcroot(i8** %r7192, i8* null)
%r7180 = bitcast i8** %r7192 to i64*
%r7191 = call i64 @f18(i64* %r7179) ; @get-procedure-env
store i64 %r7191, i64* %r7180
%r7194 = alloca i8*
call void @llvm.gcroot(i8** %r7194, i8* null)
%r7182 = bitcast i8** %r7194 to i64*
%r7197 = alloca i8*
call void @llvm.gcroot(i8** %r7197, i8* null)
%r7195 = bitcast i8** %r7197 to i64*
%r7196 = add i64 0, 8
store i64 %r7196, i64* %r7195
%r7193 = call i64 @f17(i64* %r7195, i64* %r7180) ; @make-env
store i64 %r7193, i64* %r7182
%r7201 = alloca i8*
call void @llvm.gcroot(i8** %r7201, i8* null)
%r7199 = bitcast i8** %r7201 to i64*
%r7204 = alloca i8*
call void @llvm.gcroot(i8** %r7204, i8* null)
%r7202 = bitcast i8** %r7204 to i64*
%r7203 = add i64 0, 4
store i64 %r7203, i64* %r7202
%r7207 = alloca i8*
call void @llvm.gcroot(i8** %r7207, i8* null)
%r7205 = bitcast i8** %r7207 to i64*
%r7206 = add i64 0, 4
store i64 %r7206, i64* %r7205
%r7200 = call i64 @f36(i64* %env, i64* %r7202, i64* %r7205) ; @lookup-variable
store i64 %r7200, i64* %r7199
%r7209 = alloca i8*
call void @llvm.gcroot(i8** %r7209, i8* null)
%r7198 = bitcast i8** %r7209 to i64*
%r7208 = call i64 @f30(i64* %r7199) ; @cdr
store i64 %r7208, i64* %r7198
%r7213 = alloca i8*
call void @llvm.gcroot(i8** %r7213, i8* null)
%r7211 = bitcast i8** %r7213 to i64*
%r7212 = add i64 0, 4
store i64 %r7212, i64* %r7211
%r7210 = call i64 @f13(i64* %r7182, i64* %r7211, i64* %r7198) ; @vector-set!
%r7220 = alloca i8*
call void @llvm.gcroot(i8** %r7220, i8* null)
%r7217 = bitcast i8** %r7220 to i64*
%r7223 = alloca i8*
call void @llvm.gcroot(i8** %r7223, i8* null)
%r7221 = bitcast i8** %r7223 to i64*
%r7222 = add i64 0, 4
store i64 %r7222, i64* %r7221
%r7226 = alloca i8*
call void @llvm.gcroot(i8** %r7226, i8* null)
%r7224 = bitcast i8** %r7226 to i64*
%r7225 = add i64 0, 8
store i64 %r7225, i64* %r7224
%r7219 = call i64 @f36(i64* %env, i64* %r7221, i64* %r7224) ; @lookup-variable
store i64 %r7219, i64* %r7217
%r7228 = alloca i8*
call void @llvm.gcroot(i8** %r7228, i8* null)
%r7218 = bitcast i8** %r7228 to i64*
%r7227 = add i64 0, 40
store i64 %r7227, i64* %r7218
%r7230 = alloca i8*
call void @llvm.gcroot(i8** %r7230, i8* null)
%r7215 = bitcast i8** %r7230 to i64*
%r7229 = call i64 @f47(i64* %r7217, i64* %r7218) ; @*
store i64 %r7229, i64* %r7215
%r7236 = alloca i8*
call void @llvm.gcroot(i8** %r7236, i8* null)
%r7231 = bitcast i8** %r7236 to i64*
%r7239 = alloca i8*
call void @llvm.gcroot(i8** %r7239, i8* null)
%r7237 = bitcast i8** %r7239 to i64*
%r7238 = add i64 0, 0
store i64 %r7238, i64* %r7237
%r7242 = alloca i8*
call void @llvm.gcroot(i8** %r7242, i8* null)
%r7240 = bitcast i8** %r7242 to i64*
%r7241 = add i64 0, 4
store i64 %r7241, i64* %r7240
%r7235 = call i64 @f36(i64* %env, i64* %r7237, i64* %r7240) ; @lookup-variable
store i64 %r7235, i64* %r7231
%r7244 = alloca i8*
call void @llvm.gcroot(i8** %r7244, i8* null)
%r7232 = bitcast i8** %r7244 to i64*
%r7243 = call i64 @f18(i64* %r7231) ; @get-procedure-env
store i64 %r7243, i64* %r7232
%r7246 = alloca i8*
call void @llvm.gcroot(i8** %r7246, i8* null)
%r7234 = bitcast i8** %r7246 to i64*
%r7249 = alloca i8*
call void @llvm.gcroot(i8** %r7249, i8* null)
%r7247 = bitcast i8** %r7249 to i64*
%r7248 = add i64 0, 12
store i64 %r7248, i64* %r7247
%r7245 = call i64 @f17(i64* %r7247, i64* %r7232) ; @make-env
store i64 %r7245, i64* %r7234
%r7253 = alloca i8*
call void @llvm.gcroot(i8** %r7253, i8* null)
%r7251 = bitcast i8** %r7253 to i64*
%r7256 = alloca i8*
call void @llvm.gcroot(i8** %r7256, i8* null)
%r7254 = bitcast i8** %r7256 to i64*
%r7255 = add i64 0, 4
store i64 %r7255, i64* %r7254
%r7259 = alloca i8*
call void @llvm.gcroot(i8** %r7259, i8* null)
%r7257 = bitcast i8** %r7259 to i64*
%r7258 = add i64 0, 4
store i64 %r7258, i64* %r7257
%r7252 = call i64 @f36(i64* %env, i64* %r7254, i64* %r7257) ; @lookup-variable
store i64 %r7252, i64* %r7251
%r7261 = alloca i8*
call void @llvm.gcroot(i8** %r7261, i8* null)
%r7250 = bitcast i8** %r7261 to i64*
%r7260 = call i64 @f29(i64* %r7251) ; @car
store i64 %r7260, i64* %r7250
%r7265 = alloca i8*
call void @llvm.gcroot(i8** %r7265, i8* null)
%r7263 = bitcast i8** %r7265 to i64*
%r7264 = add i64 0, 4
store i64 %r7264, i64* %r7263
%r7262 = call i64 @f13(i64* %r7234, i64* %r7263, i64* %r7250) ; @vector-set!
%r7268 = alloca i8*
call void @llvm.gcroot(i8** %r7268, i8* null)
%r7266 = bitcast i8** %r7268 to i64*
%r7271 = alloca i8*
call void @llvm.gcroot(i8** %r7271, i8* null)
%r7269 = bitcast i8** %r7271 to i64*
%r7270 = add i64 0, 8
store i64 %r7270, i64* %r7269
%r7274 = alloca i8*
call void @llvm.gcroot(i8** %r7274, i8* null)
%r7272 = bitcast i8** %r7274 to i64*
%r7273 = add i64 0, 76
store i64 %r7273, i64* %r7272
%r7267 = call i64 @f36(i64* %env, i64* %r7269, i64* %r7272) ; @lookup-variable
store i64 %r7267, i64* %r7266
%r7278 = alloca i8*
call void @llvm.gcroot(i8** %r7278, i8* null)
%r7276 = bitcast i8** %r7278 to i64*
%r7277 = add i64 0, 8
store i64 %r7277, i64* %r7276
%r7275 = call i64 @f13(i64* %r7234, i64* %r7276, i64* %r7266) ; @vector-set!
%r7281 = alloca i8*
call void @llvm.gcroot(i8** %r7281, i8* null)
%r7279 = bitcast i8** %r7281 to i64*
%r7280 = add i64 0, 0
store i64 %r7280, i64* %r7279
%r7285 = alloca i8*
call void @llvm.gcroot(i8** %r7285, i8* null)
%r7283 = bitcast i8** %r7285 to i64*
%r7284 = add i64 0, 12
store i64 %r7284, i64* %r7283
%r7282 = call i64 @f13(i64* %r7234, i64* %r7283, i64* %r7279) ; @vector-set!
%r7287 = alloca i8*
call void @llvm.gcroot(i8** %r7287, i8* null)
%r7233 = bitcast i8** %r7287 to i64*
%r7286 = call i64 @f19(i64* %r7231) ; @get-procedure-nparams
store i64 %r7286, i64* %r7233
%r7288 = call i64 @f23(i64* %r7233, i64* %r7234) ; @fix-arbitrary-procs
%r7290 = bitcast [20 x i8]* @g7289 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7290, i32 1, i64* %r7234)
%r7292 = alloca i8*
call void @llvm.gcroot(i8** %r7292, i8* null)
%r7216 = bitcast i8** %r7292 to i64*
%r7291 = call i64 @apply-procedure(i64* %r7231, i64* %r7234) ; @apply-procedure
store i64 %r7291, i64* %r7216
%r7294 = alloca i8*
call void @llvm.gcroot(i8** %r7294, i8* null)
%r7214 = bitcast i8** %r7294 to i64*
%r7293 = call i64 @f16(i64* %r7215, i64* %r7216) ; @+
store i64 %r7293, i64* %r7214
%r7298 = alloca i8*
call void @llvm.gcroot(i8** %r7298, i8* null)
%r7296 = bitcast i8** %r7298 to i64*
%r7297 = add i64 0, 8
store i64 %r7297, i64* %r7296
%r7295 = call i64 @f13(i64* %r7182, i64* %r7296, i64* %r7214) ; @vector-set!
%r7300 = alloca i8*
call void @llvm.gcroot(i8** %r7300, i8* null)
%r7181 = bitcast i8** %r7300 to i64*
%r7299 = call i64 @f19(i64* %r7179) ; @get-procedure-nparams
store i64 %r7299, i64* %r7181
%r7301 = call i64 @f23(i64* %r7181, i64* %r7182) ; @fix-arbitrary-procs
%r7303 = bitcast [20 x i8]* @g7302 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7303, i32 1, i64* %r7182)
%r7305 = alloca i8*
call void @llvm.gcroot(i8** %r7305, i8* null)
%r7027 = bitcast i8** %r7305 to i64*
%r7304 = call i64 @apply-procedure(i64* %r7179, i64* %r7182) ; @apply-procedure
store i64 %r7304, i64* %r7027
br label %label195
label195:
%r7306 = load i64* %r7027
ret i64 %r7306
}

; @f136
define i64 @f141(i64* %env) gc "shadow-stack" {
%r7308 = alloca i8*
call void @llvm.gcroot(i8** %r7308, i8* null)
%r7028 = bitcast i8** %r7308 to i64*
%r7311 = alloca i8*
call void @llvm.gcroot(i8** %r7311, i8* null)
%r7309 = bitcast i8** %r7311 to i64*
%r7310 = add i64 0, 4
store i64 %r7310, i64* %r7309
%r7307 = call i64 @f17(i64* %r7309, i64* %env) ; @make-env
store i64 %r7307, i64* %r7028
%r7313 = alloca i8*
call void @llvm.gcroot(i8** %r7313, i8* null)
%r7025 = bitcast i8** %r7313 to i64*
%r7312 = call i64 @f140(i64* %r7028) ; @f137
store i64 %r7312, i64* %r7025
%r7314 = load i64* %r7025
ret i64 %r7314
}

; @f145
define i64 @f146(i64* %env) gc "shadow-stack" {
%r7347 = alloca i8*
call void @llvm.gcroot(i8** %r7347, i8* null)
%r7342 = bitcast i8** %r7347 to i64*
%r7350 = alloca i8*
call void @llvm.gcroot(i8** %r7350, i8* null)
%r7348 = bitcast i8** %r7350 to i64*
%r7349 = add i64 0, 16
store i64 %r7349, i64* %r7348
%r7353 = alloca i8*
call void @llvm.gcroot(i8** %r7353, i8* null)
%r7351 = bitcast i8** %r7353 to i64*
%r7352 = add i64 0, 68
store i64 %r7352, i64* %r7351
%r7346 = call i64 @f36(i64* %env, i64* %r7348, i64* %r7351) ; @lookup-variable
store i64 %r7346, i64* %r7342
%r7355 = alloca i8*
call void @llvm.gcroot(i8** %r7355, i8* null)
%r7343 = bitcast i8** %r7355 to i64*
%r7354 = call i64 @f18(i64* %r7342) ; @get-procedure-env
store i64 %r7354, i64* %r7343
%r7357 = alloca i8*
call void @llvm.gcroot(i8** %r7357, i8* null)
%r7345 = bitcast i8** %r7357 to i64*
%r7360 = alloca i8*
call void @llvm.gcroot(i8** %r7360, i8* null)
%r7358 = bitcast i8** %r7360 to i64*
%r7359 = add i64 0, 0
store i64 %r7359, i64* %r7358
%r7356 = call i64 @f17(i64* %r7358, i64* %r7343) ; @make-env
store i64 %r7356, i64* %r7345
%r7362 = alloca i8*
call void @llvm.gcroot(i8** %r7362, i8* null)
%r7344 = bitcast i8** %r7362 to i64*
%r7361 = call i64 @f19(i64* %r7342) ; @get-procedure-nparams
store i64 %r7361, i64* %r7344
%r7363 = call i64 @f23(i64* %r7344, i64* %r7345) ; @fix-arbitrary-procs
%r7365 = bitcast [20 x i8]* @g7364 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7365, i32 1, i64* %r7345)
%r7367 = alloca i8*
call void @llvm.gcroot(i8** %r7367, i8* null)
%r7341 = bitcast i8** %r7367 to i64*
%r7366 = call i64 @apply-procedure(i64* %r7342, i64* %r7345) ; @apply-procedure
store i64 %r7366, i64* %r7341
%r7369 = alloca i8*
call void @llvm.gcroot(i8** %r7369, i8* null)
%r7340 = bitcast i8** %r7369 to i64*
%r7372 = alloca i8*
call void @llvm.gcroot(i8** %r7372, i8* null)
%r7370 = bitcast i8** %r7372 to i64*
%r7371 = add i64 0, 0
store i64 %r7371, i64* %r7370
%r7375 = alloca i8*
call void @llvm.gcroot(i8** %r7375, i8* null)
%r7373 = bitcast i8** %r7375 to i64*
%r7374 = add i64 0, 4
store i64 %r7374, i64* %r7373
%r7368 = call i64 @f37(i64* %env, i64* %r7370, i64* %r7373, i64* %r7341) ; @set-variable!
store i64 %r7368, i64* %r7340
%r7377 = alloca i8*
call void @llvm.gcroot(i8** %r7377, i8* null)
%r7338 = bitcast i8** %r7377 to i64*
%r7383 = alloca i8*
call void @llvm.gcroot(i8** %r7383, i8* null)
%r7378 = bitcast i8** %r7383 to i64*
%r7386 = alloca i8*
call void @llvm.gcroot(i8** %r7386, i8* null)
%r7384 = bitcast i8** %r7386 to i64*
%r7385 = add i64 0, 16
store i64 %r7385, i64* %r7384
%r7389 = alloca i8*
call void @llvm.gcroot(i8** %r7389, i8* null)
%r7387 = bitcast i8** %r7389 to i64*
%r7388 = add i64 0, 84
store i64 %r7388, i64* %r7387
%r7382 = call i64 @f36(i64* %env, i64* %r7384, i64* %r7387) ; @lookup-variable
store i64 %r7382, i64* %r7378
%r7391 = alloca i8*
call void @llvm.gcroot(i8** %r7391, i8* null)
%r7379 = bitcast i8** %r7391 to i64*
%r7390 = call i64 @f18(i64* %r7378) ; @get-procedure-env
store i64 %r7390, i64* %r7379
%r7393 = alloca i8*
call void @llvm.gcroot(i8** %r7393, i8* null)
%r7381 = bitcast i8** %r7393 to i64*
%r7396 = alloca i8*
call void @llvm.gcroot(i8** %r7396, i8* null)
%r7394 = bitcast i8** %r7396 to i64*
%r7395 = add i64 0, 4
store i64 %r7395, i64* %r7394
%r7392 = call i64 @f17(i64* %r7394, i64* %r7379) ; @make-env
store i64 %r7392, i64* %r7381
%r7399 = alloca i8*
call void @llvm.gcroot(i8** %r7399, i8* null)
%r7397 = bitcast i8** %r7399 to i64*
%r7402 = alloca i8*
call void @llvm.gcroot(i8** %r7402, i8* null)
%r7400 = bitcast i8** %r7402 to i64*
%r7401 = add i64 0, 0
store i64 %r7401, i64* %r7400
%r7405 = alloca i8*
call void @llvm.gcroot(i8** %r7405, i8* null)
%r7403 = bitcast i8** %r7405 to i64*
%r7404 = add i64 0, 4
store i64 %r7404, i64* %r7403
%r7398 = call i64 @f36(i64* %env, i64* %r7400, i64* %r7403) ; @lookup-variable
store i64 %r7398, i64* %r7397
%r7409 = alloca i8*
call void @llvm.gcroot(i8** %r7409, i8* null)
%r7407 = bitcast i8** %r7409 to i64*
%r7408 = add i64 0, 4
store i64 %r7408, i64* %r7407
%r7406 = call i64 @f13(i64* %r7381, i64* %r7407, i64* %r7397) ; @vector-set!
%r7411 = alloca i8*
call void @llvm.gcroot(i8** %r7411, i8* null)
%r7380 = bitcast i8** %r7411 to i64*
%r7410 = call i64 @f19(i64* %r7378) ; @get-procedure-nparams
store i64 %r7410, i64* %r7380
%r7412 = call i64 @f23(i64* %r7380, i64* %r7381) ; @fix-arbitrary-procs
%r7414 = bitcast [20 x i8]* @g7413 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7414, i32 1, i64* %r7381)
%r7416 = alloca i8*
call void @llvm.gcroot(i8** %r7416, i8* null)
%r7376 = bitcast i8** %r7416 to i64*
%r7415 = call i64 @apply-procedure(i64* %r7378, i64* %r7381) ; @apply-procedure
store i64 %r7415, i64* %r7376
%r7417 = call i64 @f2(i64* %r7376) ; @raw-number
%r7418 = trunc i64 %r7417 to i1
br i1 %r7418, label %label196, label %label197
label196:
%r7426 = alloca i8*
call void @llvm.gcroot(i8** %r7426, i8* null)
%r7421 = bitcast i8** %r7426 to i64*
%r7429 = alloca i8*
call void @llvm.gcroot(i8** %r7429, i8* null)
%r7427 = bitcast i8** %r7429 to i64*
%r7428 = add i64 0, 16
store i64 %r7428, i64* %r7427
%r7432 = alloca i8*
call void @llvm.gcroot(i8** %r7432, i8* null)
%r7430 = bitcast i8** %r7432 to i64*
%r7431 = add i64 0, 72
store i64 %r7431, i64* %r7430
%r7425 = call i64 @f36(i64* %env, i64* %r7427, i64* %r7430) ; @lookup-variable
store i64 %r7425, i64* %r7421
%r7434 = alloca i8*
call void @llvm.gcroot(i8** %r7434, i8* null)
%r7422 = bitcast i8** %r7434 to i64*
%r7433 = call i64 @f18(i64* %r7421) ; @get-procedure-env
store i64 %r7433, i64* %r7422
%r7436 = alloca i8*
call void @llvm.gcroot(i8** %r7436, i8* null)
%r7424 = bitcast i8** %r7436 to i64*
%r7439 = alloca i8*
call void @llvm.gcroot(i8** %r7439, i8* null)
%r7437 = bitcast i8** %r7439 to i64*
%r7438 = add i64 0, 0
store i64 %r7438, i64* %r7437
%r7435 = call i64 @f17(i64* %r7437, i64* %r7422) ; @make-env
store i64 %r7435, i64* %r7424
%r7441 = alloca i8*
call void @llvm.gcroot(i8** %r7441, i8* null)
%r7423 = bitcast i8** %r7441 to i64*
%r7440 = call i64 @f19(i64* %r7421) ; @get-procedure-nparams
store i64 %r7440, i64* %r7423
%r7442 = call i64 @f23(i64* %r7423, i64* %r7424) ; @fix-arbitrary-procs
%r7444 = bitcast [20 x i8]* @g7443 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7444, i32 1, i64* %r7424)
%r7446 = alloca i8*
call void @llvm.gcroot(i8** %r7446, i8* null)
%r7419 = bitcast i8** %r7446 to i64*
%r7445 = call i64 @apply-procedure(i64* %r7421, i64* %r7424) ; @apply-procedure
store i64 %r7445, i64* %r7419
%r7452 = alloca i8*
call void @llvm.gcroot(i8** %r7452, i8* null)
%r7447 = bitcast i8** %r7452 to i64*
%r7455 = alloca i8*
call void @llvm.gcroot(i8** %r7455, i8* null)
%r7453 = bitcast i8** %r7455 to i64*
%r7454 = add i64 0, 8
store i64 %r7454, i64* %r7453
%r7458 = alloca i8*
call void @llvm.gcroot(i8** %r7458, i8* null)
%r7456 = bitcast i8** %r7458 to i64*
%r7457 = add i64 0, 4
store i64 %r7457, i64* %r7456
%r7451 = call i64 @f36(i64* %env, i64* %r7453, i64* %r7456) ; @lookup-variable
store i64 %r7451, i64* %r7447
%r7460 = alloca i8*
call void @llvm.gcroot(i8** %r7460, i8* null)
%r7448 = bitcast i8** %r7460 to i64*
%r7459 = call i64 @f18(i64* %r7447) ; @get-procedure-env
store i64 %r7459, i64* %r7448
%r7462 = alloca i8*
call void @llvm.gcroot(i8** %r7462, i8* null)
%r7450 = bitcast i8** %r7462 to i64*
%r7465 = alloca i8*
call void @llvm.gcroot(i8** %r7465, i8* null)
%r7463 = bitcast i8** %r7465 to i64*
%r7464 = add i64 0, 0
store i64 %r7464, i64* %r7463
%r7461 = call i64 @f17(i64* %r7463, i64* %r7448) ; @make-env
store i64 %r7461, i64* %r7450
%r7467 = alloca i8*
call void @llvm.gcroot(i8** %r7467, i8* null)
%r7449 = bitcast i8** %r7467 to i64*
%r7466 = call i64 @f19(i64* %r7447) ; @get-procedure-nparams
store i64 %r7466, i64* %r7449
%r7468 = call i64 @f23(i64* %r7449, i64* %r7450) ; @fix-arbitrary-procs
%r7470 = bitcast [20 x i8]* @g7469 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7470, i32 1, i64* %r7450)
%r7472 = alloca i8*
call void @llvm.gcroot(i8** %r7472, i8* null)
%r7420 = bitcast i8** %r7472 to i64*
%r7471 = call i64 @apply-procedure(i64* %r7447, i64* %r7450) ; @apply-procedure
store i64 %r7471, i64* %r7420
%r7474 = alloca i8*
call void @llvm.gcroot(i8** %r7474, i8* null)
%r7338 = bitcast i8** %r7474 to i64*
%r7473 = call i64 @f21(i64* %r7419, i64* %r7420) ; @cons
store i64 %r7473, i64* %r7338
br label %label198
label197:
%r7476 = alloca i8*
call void @llvm.gcroot(i8** %r7476, i8* null)
%r7338 = bitcast i8** %r7476 to i64*
%r7475 = call i64 @make-null() ; @make-null
store i64 %r7475, i64* %r7338
br label %label198
label198:
%r7477 = load i64* %r7338
ret i64 %r7477
}

; @f144
define i64 @f147(i64* %env) gc "shadow-stack" {
%r7479 = alloca i8*
call void @llvm.gcroot(i8** %r7479, i8* null)
%r7339 = bitcast i8** %r7479 to i64*
%r7482 = alloca i8*
call void @llvm.gcroot(i8** %r7482, i8* null)
%r7480 = bitcast i8** %r7482 to i64*
%r7481 = add i64 0, 4
store i64 %r7481, i64* %r7480
%r7478 = call i64 @f17(i64* %r7480, i64* %env) ; @make-env
store i64 %r7478, i64* %r7339
%r7484 = alloca i8*
call void @llvm.gcroot(i8** %r7484, i8* null)
%r7336 = bitcast i8** %r7484 to i64*
%r7483 = call i64 @f146(i64* %r7339) ; @f145
store i64 %r7483, i64* %r7336
%r7485 = load i64* %r7336
ret i64 %r7485
}

; @f143
define i64 @f148(i64* %env) gc "shadow-stack" {
%r7487 = alloca i8*
call void @llvm.gcroot(i8** %r7487, i8* null)
%r7335 = bitcast i8** %r7487 to i64*
%r7490 = alloca i8*
call void @llvm.gcroot(i8** %r7490, i8* null)
%r7488 = bitcast i8** %r7490 to i64*
%r7489 = add i64 0, 0
store i64 %r7489, i64* %r7488
%r7486 = call i64 @make-procedure(i64 (i64*)* @f147, i64* %env, i64* %r7488)
store i64 %r7486, i64* %r7335
%r7492 = alloca i8*
call void @llvm.gcroot(i8** %r7492, i8* null)
%r7334 = bitcast i8** %r7492 to i64*
%r7495 = alloca i8*
call void @llvm.gcroot(i8** %r7495, i8* null)
%r7493 = bitcast i8** %r7495 to i64*
%r7494 = add i64 0, 0
store i64 %r7494, i64* %r7493
%r7498 = alloca i8*
call void @llvm.gcroot(i8** %r7498, i8* null)
%r7496 = bitcast i8** %r7498 to i64*
%r7497 = add i64 0, 4
store i64 %r7497, i64* %r7496
%r7491 = call i64 @f37(i64* %env, i64* %r7493, i64* %r7496, i64* %r7335) ; @set-variable!
store i64 %r7491, i64* %r7334
%r7504 = alloca i8*
call void @llvm.gcroot(i8** %r7504, i8* null)
%r7499 = bitcast i8** %r7504 to i64*
%r7507 = alloca i8*
call void @llvm.gcroot(i8** %r7507, i8* null)
%r7505 = bitcast i8** %r7507 to i64*
%r7506 = add i64 0, 8
store i64 %r7506, i64* %r7505
%r7510 = alloca i8*
call void @llvm.gcroot(i8** %r7510, i8* null)
%r7508 = bitcast i8** %r7510 to i64*
%r7509 = add i64 0, 152
store i64 %r7509, i64* %r7508
%r7503 = call i64 @f36(i64* %env, i64* %r7505, i64* %r7508) ; @lookup-variable
store i64 %r7503, i64* %r7499
%r7512 = alloca i8*
call void @llvm.gcroot(i8** %r7512, i8* null)
%r7500 = bitcast i8** %r7512 to i64*
%r7511 = call i64 @f18(i64* %r7499) ; @get-procedure-env
store i64 %r7511, i64* %r7500
%r7514 = alloca i8*
call void @llvm.gcroot(i8** %r7514, i8* null)
%r7502 = bitcast i8** %r7514 to i64*
%r7517 = alloca i8*
call void @llvm.gcroot(i8** %r7517, i8* null)
%r7515 = bitcast i8** %r7517 to i64*
%r7516 = add i64 0, 8
store i64 %r7516, i64* %r7515
%r7513 = call i64 @f17(i64* %r7515, i64* %r7500) ; @make-env
store i64 %r7513, i64* %r7502
%r7522 = alloca i8*
call void @llvm.gcroot(i8** %r7522, i8* null)
%r7519 = bitcast i8** %r7522 to i64*
%r7525 = alloca i8*
call void @llvm.gcroot(i8** %r7525, i8* null)
%r7523 = bitcast i8** %r7525 to i64*
%r7524 = add i64 0, 4
store i64 %r7524, i64* %r7523
%r7528 = alloca i8*
call void @llvm.gcroot(i8** %r7528, i8* null)
%r7526 = bitcast i8** %r7528 to i64*
%r7527 = add i64 0, 4
store i64 %r7527, i64* %r7526
%r7521 = call i64 @f36(i64* %env, i64* %r7523, i64* %r7526) ; @lookup-variable
store i64 %r7521, i64* %r7519
%r7534 = alloca i8*
call void @llvm.gcroot(i8** %r7534, i8* null)
%r7529 = bitcast i8** %r7534 to i64*
%r7537 = alloca i8*
call void @llvm.gcroot(i8** %r7537, i8* null)
%r7535 = bitcast i8** %r7537 to i64*
%r7536 = add i64 0, 0
store i64 %r7536, i64* %r7535
%r7540 = alloca i8*
call void @llvm.gcroot(i8** %r7540, i8* null)
%r7538 = bitcast i8** %r7540 to i64*
%r7539 = add i64 0, 4
store i64 %r7539, i64* %r7538
%r7533 = call i64 @f36(i64* %env, i64* %r7535, i64* %r7538) ; @lookup-variable
store i64 %r7533, i64* %r7529
%r7542 = alloca i8*
call void @llvm.gcroot(i8** %r7542, i8* null)
%r7530 = bitcast i8** %r7542 to i64*
%r7541 = call i64 @f18(i64* %r7529) ; @get-procedure-env
store i64 %r7541, i64* %r7530
%r7544 = alloca i8*
call void @llvm.gcroot(i8** %r7544, i8* null)
%r7532 = bitcast i8** %r7544 to i64*
%r7547 = alloca i8*
call void @llvm.gcroot(i8** %r7547, i8* null)
%r7545 = bitcast i8** %r7547 to i64*
%r7546 = add i64 0, 0
store i64 %r7546, i64* %r7545
%r7543 = call i64 @f17(i64* %r7545, i64* %r7530) ; @make-env
store i64 %r7543, i64* %r7532
%r7549 = alloca i8*
call void @llvm.gcroot(i8** %r7549, i8* null)
%r7531 = bitcast i8** %r7549 to i64*
%r7548 = call i64 @f19(i64* %r7529) ; @get-procedure-nparams
store i64 %r7548, i64* %r7531
%r7550 = call i64 @f23(i64* %r7531, i64* %r7532) ; @fix-arbitrary-procs
%r7552 = bitcast [20 x i8]* @g7551 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7552, i32 1, i64* %r7532)
%r7554 = alloca i8*
call void @llvm.gcroot(i8** %r7554, i8* null)
%r7520 = bitcast i8** %r7554 to i64*
%r7553 = call i64 @apply-procedure(i64* %r7529, i64* %r7532) ; @apply-procedure
store i64 %r7553, i64* %r7520
%r7556 = alloca i8*
call void @llvm.gcroot(i8** %r7556, i8* null)
%r7518 = bitcast i8** %r7556 to i64*
%r7555 = call i64 @f21(i64* %r7519, i64* %r7520) ; @cons
store i64 %r7555, i64* %r7518
%r7560 = alloca i8*
call void @llvm.gcroot(i8** %r7560, i8* null)
%r7558 = bitcast i8** %r7560 to i64*
%r7559 = add i64 0, 4
store i64 %r7559, i64* %r7558
%r7557 = call i64 @f13(i64* %r7502, i64* %r7558, i64* %r7518) ; @vector-set!
%r7563 = alloca i8*
call void @llvm.gcroot(i8** %r7563, i8* null)
%r7561 = bitcast i8** %r7563 to i64*
%r7562 = add i64 0, 0
store i64 %r7562, i64* %r7561
%r7567 = alloca i8*
call void @llvm.gcroot(i8** %r7567, i8* null)
%r7565 = bitcast i8** %r7567 to i64*
%r7566 = add i64 0, 8
store i64 %r7566, i64* %r7565
%r7564 = call i64 @f13(i64* %r7502, i64* %r7565, i64* %r7561) ; @vector-set!
%r7569 = alloca i8*
call void @llvm.gcroot(i8** %r7569, i8* null)
%r7501 = bitcast i8** %r7569 to i64*
%r7568 = call i64 @f19(i64* %r7499) ; @get-procedure-nparams
store i64 %r7568, i64* %r7501
%r7570 = call i64 @f23(i64* %r7501, i64* %r7502) ; @fix-arbitrary-procs
%r7572 = bitcast [20 x i8]* @g7571 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7572, i32 1, i64* %r7502)
%r7574 = alloca i8*
call void @llvm.gcroot(i8** %r7574, i8* null)
%r7332 = bitcast i8** %r7574 to i64*
%r7573 = call i64 @apply-procedure(i64* %r7499, i64* %r7502) ; @apply-procedure
store i64 %r7573, i64* %r7332
%r7575 = load i64* %r7332
ret i64 %r7575
}

; @f142
define i64 @f149(i64* %env) gc "shadow-stack" {
%r7577 = alloca i8*
call void @llvm.gcroot(i8** %r7577, i8* null)
%r7333 = bitcast i8** %r7577 to i64*
%r7580 = alloca i8*
call void @llvm.gcroot(i8** %r7580, i8* null)
%r7578 = bitcast i8** %r7580 to i64*
%r7579 = add i64 0, 4
store i64 %r7579, i64* %r7578
%r7576 = call i64 @f17(i64* %r7578, i64* %env) ; @make-env
store i64 %r7576, i64* %r7333
%r7582 = alloca i8*
call void @llvm.gcroot(i8** %r7582, i8* null)
%r7330 = bitcast i8** %r7582 to i64*
%r7581 = call i64 @f148(i64* %r7333) ; @f143
store i64 %r7581, i64* %r7330
%r7583 = load i64* %r7330
ret i64 %r7583
}

; @f152
define i64 @f153(i64* %env) gc "shadow-stack" {
%r7608 = alloca i8*
call void @llvm.gcroot(i8** %r7608, i8* null)
%r7605 = bitcast i8** %r7608 to i64*
%r7614 = alloca i8*
call void @llvm.gcroot(i8** %r7614, i8* null)
%r7609 = bitcast i8** %r7614 to i64*
%r7617 = alloca i8*
call void @llvm.gcroot(i8** %r7617, i8* null)
%r7615 = bitcast i8** %r7617 to i64*
%r7616 = add i64 0, 12
store i64 %r7616, i64* %r7615
%r7620 = alloca i8*
call void @llvm.gcroot(i8** %r7620, i8* null)
%r7618 = bitcast i8** %r7620 to i64*
%r7619 = add i64 0, 20
store i64 %r7619, i64* %r7618
%r7613 = call i64 @f36(i64* %env, i64* %r7615, i64* %r7618) ; @lookup-variable
store i64 %r7613, i64* %r7609
%r7622 = alloca i8*
call void @llvm.gcroot(i8** %r7622, i8* null)
%r7610 = bitcast i8** %r7622 to i64*
%r7621 = call i64 @f18(i64* %r7609) ; @get-procedure-env
store i64 %r7621, i64* %r7610
%r7624 = alloca i8*
call void @llvm.gcroot(i8** %r7624, i8* null)
%r7612 = bitcast i8** %r7624 to i64*
%r7627 = alloca i8*
call void @llvm.gcroot(i8** %r7627, i8* null)
%r7625 = bitcast i8** %r7627 to i64*
%r7626 = add i64 0, 8
store i64 %r7626, i64* %r7625
%r7623 = call i64 @f17(i64* %r7625, i64* %r7610) ; @make-env
store i64 %r7623, i64* %r7612
%r7634 = alloca i8*
call void @llvm.gcroot(i8** %r7634, i8* null)
%r7629 = bitcast i8** %r7634 to i64*
%r7637 = alloca i8*
call void @llvm.gcroot(i8** %r7637, i8* null)
%r7635 = bitcast i8** %r7637 to i64*
%r7636 = add i64 0, 12
store i64 %r7636, i64* %r7635
%r7640 = alloca i8*
call void @llvm.gcroot(i8** %r7640, i8* null)
%r7638 = bitcast i8** %r7640 to i64*
%r7639 = add i64 0, 68
store i64 %r7639, i64* %r7638
%r7633 = call i64 @f36(i64* %env, i64* %r7635, i64* %r7638) ; @lookup-variable
store i64 %r7633, i64* %r7629
%r7642 = alloca i8*
call void @llvm.gcroot(i8** %r7642, i8* null)
%r7630 = bitcast i8** %r7642 to i64*
%r7641 = call i64 @f18(i64* %r7629) ; @get-procedure-env
store i64 %r7641, i64* %r7630
%r7644 = alloca i8*
call void @llvm.gcroot(i8** %r7644, i8* null)
%r7632 = bitcast i8** %r7644 to i64*
%r7647 = alloca i8*
call void @llvm.gcroot(i8** %r7647, i8* null)
%r7645 = bitcast i8** %r7647 to i64*
%r7646 = add i64 0, 0
store i64 %r7646, i64* %r7645
%r7643 = call i64 @f17(i64* %r7645, i64* %r7630) ; @make-env
store i64 %r7643, i64* %r7632
%r7649 = alloca i8*
call void @llvm.gcroot(i8** %r7649, i8* null)
%r7631 = bitcast i8** %r7649 to i64*
%r7648 = call i64 @f19(i64* %r7629) ; @get-procedure-nparams
store i64 %r7648, i64* %r7631
%r7650 = call i64 @f23(i64* %r7631, i64* %r7632) ; @fix-arbitrary-procs
%r7652 = bitcast [20 x i8]* @g7651 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7652, i32 1, i64* %r7632)
%r7654 = alloca i8*
call void @llvm.gcroot(i8** %r7654, i8* null)
%r7628 = bitcast i8** %r7654 to i64*
%r7653 = call i64 @apply-procedure(i64* %r7629, i64* %r7632) ; @apply-procedure
store i64 %r7653, i64* %r7628
%r7658 = alloca i8*
call void @llvm.gcroot(i8** %r7658, i8* null)
%r7656 = bitcast i8** %r7658 to i64*
%r7657 = add i64 0, 4
store i64 %r7657, i64* %r7656
%r7655 = call i64 @f13(i64* %r7612, i64* %r7656, i64* %r7628) ; @vector-set!
%r7661 = alloca i8*
call void @llvm.gcroot(i8** %r7661, i8* null)
%r7659 = bitcast i8** %r7661 to i64*
%r7664 = alloca i8*
call void @llvm.gcroot(i8** %r7664, i8* null)
%r7662 = bitcast i8** %r7664 to i64*
%r7663 = add i64 0, 12
store i64 %r7663, i64* %r7662
%r7667 = alloca i8*
call void @llvm.gcroot(i8** %r7667, i8* null)
%r7665 = bitcast i8** %r7667 to i64*
%r7666 = add i64 0, 132
store i64 %r7666, i64* %r7665
%r7660 = call i64 @f36(i64* %env, i64* %r7662, i64* %r7665) ; @lookup-variable
store i64 %r7660, i64* %r7659
%r7671 = alloca i8*
call void @llvm.gcroot(i8** %r7671, i8* null)
%r7669 = bitcast i8** %r7671 to i64*
%r7670 = add i64 0, 8
store i64 %r7670, i64* %r7669
%r7668 = call i64 @f13(i64* %r7612, i64* %r7669, i64* %r7659) ; @vector-set!
%r7673 = alloca i8*
call void @llvm.gcroot(i8** %r7673, i8* null)
%r7611 = bitcast i8** %r7673 to i64*
%r7672 = call i64 @f19(i64* %r7609) ; @get-procedure-nparams
store i64 %r7672, i64* %r7611
%r7674 = call i64 @f23(i64* %r7611, i64* %r7612) ; @fix-arbitrary-procs
%r7676 = bitcast [20 x i8]* @g7675 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7676, i32 1, i64* %r7612)
%r7678 = alloca i8*
call void @llvm.gcroot(i8** %r7678, i8* null)
%r7607 = bitcast i8** %r7678 to i64*
%r7677 = call i64 @apply-procedure(i64* %r7609, i64* %r7612) ; @apply-procedure
store i64 %r7677, i64* %r7607
%r7679 = call i64 @f2(i64* %r7607) ; @raw-number
%r7680 = trunc i64 %r7679 to i1
br i1 %r7680, label %label199, label %label200
label199:
%r7682 = alloca i8*
call void @llvm.gcroot(i8** %r7682, i8* null)
%r7605 = bitcast i8** %r7682 to i64*
%r7681 = call i64 @make-null() ; @make-null
store i64 %r7681, i64* %r7605
br label %label201
label200:
%r7690 = alloca i8*
call void @llvm.gcroot(i8** %r7690, i8* null)
%r7685 = bitcast i8** %r7690 to i64*
%r7693 = alloca i8*
call void @llvm.gcroot(i8** %r7693, i8* null)
%r7691 = bitcast i8** %r7693 to i64*
%r7692 = add i64 0, 12
store i64 %r7692, i64* %r7691
%r7696 = alloca i8*
call void @llvm.gcroot(i8** %r7696, i8* null)
%r7694 = bitcast i8** %r7696 to i64*
%r7695 = add i64 0, 72
store i64 %r7695, i64* %r7694
%r7689 = call i64 @f36(i64* %env, i64* %r7691, i64* %r7694) ; @lookup-variable
store i64 %r7689, i64* %r7685
%r7698 = alloca i8*
call void @llvm.gcroot(i8** %r7698, i8* null)
%r7686 = bitcast i8** %r7698 to i64*
%r7697 = call i64 @f18(i64* %r7685) ; @get-procedure-env
store i64 %r7697, i64* %r7686
%r7700 = alloca i8*
call void @llvm.gcroot(i8** %r7700, i8* null)
%r7688 = bitcast i8** %r7700 to i64*
%r7703 = alloca i8*
call void @llvm.gcroot(i8** %r7703, i8* null)
%r7701 = bitcast i8** %r7703 to i64*
%r7702 = add i64 0, 0
store i64 %r7702, i64* %r7701
%r7699 = call i64 @f17(i64* %r7701, i64* %r7686) ; @make-env
store i64 %r7699, i64* %r7688
%r7705 = alloca i8*
call void @llvm.gcroot(i8** %r7705, i8* null)
%r7687 = bitcast i8** %r7705 to i64*
%r7704 = call i64 @f19(i64* %r7685) ; @get-procedure-nparams
store i64 %r7704, i64* %r7687
%r7706 = call i64 @f23(i64* %r7687, i64* %r7688) ; @fix-arbitrary-procs
%r7708 = bitcast [20 x i8]* @g7707 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7708, i32 1, i64* %r7688)
%r7710 = alloca i8*
call void @llvm.gcroot(i8** %r7710, i8* null)
%r7683 = bitcast i8** %r7710 to i64*
%r7709 = call i64 @apply-procedure(i64* %r7685, i64* %r7688) ; @apply-procedure
store i64 %r7709, i64* %r7683
%r7716 = alloca i8*
call void @llvm.gcroot(i8** %r7716, i8* null)
%r7711 = bitcast i8** %r7716 to i64*
%r7719 = alloca i8*
call void @llvm.gcroot(i8** %r7719, i8* null)
%r7717 = bitcast i8** %r7719 to i64*
%r7718 = add i64 0, 4
store i64 %r7718, i64* %r7717
%r7722 = alloca i8*
call void @llvm.gcroot(i8** %r7722, i8* null)
%r7720 = bitcast i8** %r7722 to i64*
%r7721 = add i64 0, 4
store i64 %r7721, i64* %r7720
%r7715 = call i64 @f36(i64* %env, i64* %r7717, i64* %r7720) ; @lookup-variable
store i64 %r7715, i64* %r7711
%r7724 = alloca i8*
call void @llvm.gcroot(i8** %r7724, i8* null)
%r7712 = bitcast i8** %r7724 to i64*
%r7723 = call i64 @f18(i64* %r7711) ; @get-procedure-env
store i64 %r7723, i64* %r7712
%r7726 = alloca i8*
call void @llvm.gcroot(i8** %r7726, i8* null)
%r7714 = bitcast i8** %r7726 to i64*
%r7729 = alloca i8*
call void @llvm.gcroot(i8** %r7729, i8* null)
%r7727 = bitcast i8** %r7729 to i64*
%r7728 = add i64 0, 0
store i64 %r7728, i64* %r7727
%r7725 = call i64 @f17(i64* %r7727, i64* %r7712) ; @make-env
store i64 %r7725, i64* %r7714
%r7731 = alloca i8*
call void @llvm.gcroot(i8** %r7731, i8* null)
%r7713 = bitcast i8** %r7731 to i64*
%r7730 = call i64 @f19(i64* %r7711) ; @get-procedure-nparams
store i64 %r7730, i64* %r7713
%r7732 = call i64 @f23(i64* %r7713, i64* %r7714) ; @fix-arbitrary-procs
%r7734 = bitcast [20 x i8]* @g7733 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7734, i32 1, i64* %r7714)
%r7736 = alloca i8*
call void @llvm.gcroot(i8** %r7736, i8* null)
%r7684 = bitcast i8** %r7736 to i64*
%r7735 = call i64 @apply-procedure(i64* %r7711, i64* %r7714) ; @apply-procedure
store i64 %r7735, i64* %r7684
%r7738 = alloca i8*
call void @llvm.gcroot(i8** %r7738, i8* null)
%r7605 = bitcast i8** %r7738 to i64*
%r7737 = call i64 @f21(i64* %r7683, i64* %r7684) ; @cons
store i64 %r7737, i64* %r7605
br label %label201
label201:
%r7739 = load i64* %r7605
ret i64 %r7739
}

; @f151
define i64 @f154(i64* %env) gc "shadow-stack" {
%r7741 = alloca i8*
call void @llvm.gcroot(i8** %r7741, i8* null)
%r7604 = bitcast i8** %r7741 to i64*
%r7744 = alloca i8*
call void @llvm.gcroot(i8** %r7744, i8* null)
%r7742 = bitcast i8** %r7744 to i64*
%r7743 = add i64 0, 0
store i64 %r7743, i64* %r7742
%r7740 = call i64 @make-procedure(i64 (i64*)* @f153, i64* %env, i64* %r7742)
store i64 %r7740, i64* %r7604
%r7746 = alloca i8*
call void @llvm.gcroot(i8** %r7746, i8* null)
%r7603 = bitcast i8** %r7746 to i64*
%r7749 = alloca i8*
call void @llvm.gcroot(i8** %r7749, i8* null)
%r7747 = bitcast i8** %r7749 to i64*
%r7748 = add i64 0, 0
store i64 %r7748, i64* %r7747
%r7752 = alloca i8*
call void @llvm.gcroot(i8** %r7752, i8* null)
%r7750 = bitcast i8** %r7752 to i64*
%r7751 = add i64 0, 4
store i64 %r7751, i64* %r7750
%r7745 = call i64 @f37(i64* %env, i64* %r7747, i64* %r7750, i64* %r7604) ; @set-variable!
store i64 %r7745, i64* %r7603
%r7759 = alloca i8*
call void @llvm.gcroot(i8** %r7759, i8* null)
%r7754 = bitcast i8** %r7759 to i64*
%r7762 = alloca i8*
call void @llvm.gcroot(i8** %r7762, i8* null)
%r7760 = bitcast i8** %r7762 to i64*
%r7761 = add i64 0, 8
store i64 %r7761, i64* %r7760
%r7765 = alloca i8*
call void @llvm.gcroot(i8** %r7765, i8* null)
%r7763 = bitcast i8** %r7765 to i64*
%r7764 = add i64 0, 4
store i64 %r7764, i64* %r7763
%r7758 = call i64 @f36(i64* %env, i64* %r7760, i64* %r7763) ; @lookup-variable
store i64 %r7758, i64* %r7754
%r7767 = alloca i8*
call void @llvm.gcroot(i8** %r7767, i8* null)
%r7755 = bitcast i8** %r7767 to i64*
%r7766 = call i64 @f18(i64* %r7754) ; @get-procedure-env
store i64 %r7766, i64* %r7755
%r7769 = alloca i8*
call void @llvm.gcroot(i8** %r7769, i8* null)
%r7757 = bitcast i8** %r7769 to i64*
%r7772 = alloca i8*
call void @llvm.gcroot(i8** %r7772, i8* null)
%r7770 = bitcast i8** %r7772 to i64*
%r7771 = add i64 0, 4
store i64 %r7771, i64* %r7770
%r7768 = call i64 @f17(i64* %r7770, i64* %r7755) ; @make-env
store i64 %r7768, i64* %r7757
%r7777 = alloca i8*
call void @llvm.gcroot(i8** %r7777, i8* null)
%r7774 = bitcast i8** %r7777 to i64*
%r7780 = alloca i8*
call void @llvm.gcroot(i8** %r7780, i8* null)
%r7778 = bitcast i8** %r7780 to i64*
%r7779 = add i64 0, 4
store i64 %r7779, i64* %r7778
%r7783 = alloca i8*
call void @llvm.gcroot(i8** %r7783, i8* null)
%r7781 = bitcast i8** %r7783 to i64*
%r7782 = add i64 0, 4
store i64 %r7782, i64* %r7781
%r7776 = call i64 @f36(i64* %env, i64* %r7778, i64* %r7781) ; @lookup-variable
store i64 %r7776, i64* %r7774
%r7789 = alloca i8*
call void @llvm.gcroot(i8** %r7789, i8* null)
%r7784 = bitcast i8** %r7789 to i64*
%r7792 = alloca i8*
call void @llvm.gcroot(i8** %r7792, i8* null)
%r7790 = bitcast i8** %r7792 to i64*
%r7791 = add i64 0, 0
store i64 %r7791, i64* %r7790
%r7795 = alloca i8*
call void @llvm.gcroot(i8** %r7795, i8* null)
%r7793 = bitcast i8** %r7795 to i64*
%r7794 = add i64 0, 4
store i64 %r7794, i64* %r7793
%r7788 = call i64 @f36(i64* %env, i64* %r7790, i64* %r7793) ; @lookup-variable
store i64 %r7788, i64* %r7784
%r7797 = alloca i8*
call void @llvm.gcroot(i8** %r7797, i8* null)
%r7785 = bitcast i8** %r7797 to i64*
%r7796 = call i64 @f18(i64* %r7784) ; @get-procedure-env
store i64 %r7796, i64* %r7785
%r7799 = alloca i8*
call void @llvm.gcroot(i8** %r7799, i8* null)
%r7787 = bitcast i8** %r7799 to i64*
%r7802 = alloca i8*
call void @llvm.gcroot(i8** %r7802, i8* null)
%r7800 = bitcast i8** %r7802 to i64*
%r7801 = add i64 0, 0
store i64 %r7801, i64* %r7800
%r7798 = call i64 @f17(i64* %r7800, i64* %r7785) ; @make-env
store i64 %r7798, i64* %r7787
%r7804 = alloca i8*
call void @llvm.gcroot(i8** %r7804, i8* null)
%r7786 = bitcast i8** %r7804 to i64*
%r7803 = call i64 @f19(i64* %r7784) ; @get-procedure-nparams
store i64 %r7803, i64* %r7786
%r7805 = call i64 @f23(i64* %r7786, i64* %r7787) ; @fix-arbitrary-procs
%r7807 = bitcast [20 x i8]* @g7806 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7807, i32 1, i64* %r7787)
%r7809 = alloca i8*
call void @llvm.gcroot(i8** %r7809, i8* null)
%r7775 = bitcast i8** %r7809 to i64*
%r7808 = call i64 @apply-procedure(i64* %r7784, i64* %r7787) ; @apply-procedure
store i64 %r7808, i64* %r7775
%r7811 = alloca i8*
call void @llvm.gcroot(i8** %r7811, i8* null)
%r7773 = bitcast i8** %r7811 to i64*
%r7810 = call i64 @f21(i64* %r7774, i64* %r7775) ; @cons
store i64 %r7810, i64* %r7773
%r7815 = alloca i8*
call void @llvm.gcroot(i8** %r7815, i8* null)
%r7813 = bitcast i8** %r7815 to i64*
%r7814 = add i64 0, 4
store i64 %r7814, i64* %r7813
%r7812 = call i64 @f13(i64* %r7757, i64* %r7813, i64* %r7773) ; @vector-set!
%r7817 = alloca i8*
call void @llvm.gcroot(i8** %r7817, i8* null)
%r7756 = bitcast i8** %r7817 to i64*
%r7816 = call i64 @f19(i64* %r7754) ; @get-procedure-nparams
store i64 %r7816, i64* %r7756
%r7818 = call i64 @f23(i64* %r7756, i64* %r7757) ; @fix-arbitrary-procs
%r7820 = bitcast [20 x i8]* @g7819 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7820, i32 1, i64* %r7757)
%r7822 = alloca i8*
call void @llvm.gcroot(i8** %r7822, i8* null)
%r7753 = bitcast i8** %r7822 to i64*
%r7821 = call i64 @apply-procedure(i64* %r7754, i64* %r7757) ; @apply-procedure
store i64 %r7821, i64* %r7753
%r7824 = alloca i8*
call void @llvm.gcroot(i8** %r7824, i8* null)
%r7601 = bitcast i8** %r7824 to i64*
%r7823 = call i64 @f27(i64* %r7753) ; @string->symbol
store i64 %r7823, i64* %r7601
%r7825 = load i64* %r7601
ret i64 %r7825
}

; @f150
define i64 @f155(i64* %env) gc "shadow-stack" {
%r7827 = alloca i8*
call void @llvm.gcroot(i8** %r7827, i8* null)
%r7602 = bitcast i8** %r7827 to i64*
%r7830 = alloca i8*
call void @llvm.gcroot(i8** %r7830, i8* null)
%r7828 = bitcast i8** %r7830 to i64*
%r7829 = add i64 0, 4
store i64 %r7829, i64* %r7828
%r7826 = call i64 @f17(i64* %r7828, i64* %env) ; @make-env
store i64 %r7826, i64* %r7602
%r7832 = alloca i8*
call void @llvm.gcroot(i8** %r7832, i8* null)
%r7599 = bitcast i8** %r7832 to i64*
%r7831 = call i64 @f154(i64* %r7602) ; @f151
store i64 %r7831, i64* %r7599
%r7833 = load i64* %r7599
ret i64 %r7833
}

; @f159
define i64 @f160(i64* %env) gc "shadow-stack" {
%r7866 = alloca i8*
call void @llvm.gcroot(i8** %r7866, i8* null)
%r7861 = bitcast i8** %r7866 to i64*
%r7869 = alloca i8*
call void @llvm.gcroot(i8** %r7869, i8* null)
%r7867 = bitcast i8** %r7869 to i64*
%r7868 = add i64 0, 16
store i64 %r7868, i64* %r7867
%r7872 = alloca i8*
call void @llvm.gcroot(i8** %r7872, i8* null)
%r7870 = bitcast i8** %r7872 to i64*
%r7871 = add i64 0, 72
store i64 %r7871, i64* %r7870
%r7865 = call i64 @f36(i64* %env, i64* %r7867, i64* %r7870) ; @lookup-variable
store i64 %r7865, i64* %r7861
%r7874 = alloca i8*
call void @llvm.gcroot(i8** %r7874, i8* null)
%r7862 = bitcast i8** %r7874 to i64*
%r7873 = call i64 @f18(i64* %r7861) ; @get-procedure-env
store i64 %r7873, i64* %r7862
%r7876 = alloca i8*
call void @llvm.gcroot(i8** %r7876, i8* null)
%r7864 = bitcast i8** %r7876 to i64*
%r7879 = alloca i8*
call void @llvm.gcroot(i8** %r7879, i8* null)
%r7877 = bitcast i8** %r7879 to i64*
%r7878 = add i64 0, 0
store i64 %r7878, i64* %r7877
%r7875 = call i64 @f17(i64* %r7877, i64* %r7862) ; @make-env
store i64 %r7875, i64* %r7864
%r7881 = alloca i8*
call void @llvm.gcroot(i8** %r7881, i8* null)
%r7863 = bitcast i8** %r7881 to i64*
%r7880 = call i64 @f19(i64* %r7861) ; @get-procedure-nparams
store i64 %r7880, i64* %r7863
%r7882 = call i64 @f23(i64* %r7863, i64* %r7864) ; @fix-arbitrary-procs
%r7884 = bitcast [20 x i8]* @g7883 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7884, i32 1, i64* %r7864)
%r7886 = alloca i8*
call void @llvm.gcroot(i8** %r7886, i8* null)
%r7860 = bitcast i8** %r7886 to i64*
%r7885 = call i64 @apply-procedure(i64* %r7861, i64* %r7864) ; @apply-procedure
store i64 %r7885, i64* %r7860
%r7888 = alloca i8*
call void @llvm.gcroot(i8** %r7888, i8* null)
%r7859 = bitcast i8** %r7888 to i64*
%r7891 = alloca i8*
call void @llvm.gcroot(i8** %r7891, i8* null)
%r7889 = bitcast i8** %r7891 to i64*
%r7890 = add i64 0, 0
store i64 %r7890, i64* %r7889
%r7894 = alloca i8*
call void @llvm.gcroot(i8** %r7894, i8* null)
%r7892 = bitcast i8** %r7894 to i64*
%r7893 = add i64 0, 4
store i64 %r7893, i64* %r7892
%r7887 = call i64 @f37(i64* %env, i64* %r7889, i64* %r7892, i64* %r7860) ; @set-variable!
store i64 %r7887, i64* %r7859
%r7896 = alloca i8*
call void @llvm.gcroot(i8** %r7896, i8* null)
%r7857 = bitcast i8** %r7896 to i64*
%r7902 = alloca i8*
call void @llvm.gcroot(i8** %r7902, i8* null)
%r7897 = bitcast i8** %r7902 to i64*
%r7905 = alloca i8*
call void @llvm.gcroot(i8** %r7905, i8* null)
%r7903 = bitcast i8** %r7905 to i64*
%r7904 = add i64 0, 16
store i64 %r7904, i64* %r7903
%r7908 = alloca i8*
call void @llvm.gcroot(i8** %r7908, i8* null)
%r7906 = bitcast i8** %r7908 to i64*
%r7907 = add i64 0, 124
store i64 %r7907, i64* %r7906
%r7901 = call i64 @f36(i64* %env, i64* %r7903, i64* %r7906) ; @lookup-variable
store i64 %r7901, i64* %r7897
%r7910 = alloca i8*
call void @llvm.gcroot(i8** %r7910, i8* null)
%r7898 = bitcast i8** %r7910 to i64*
%r7909 = call i64 @f18(i64* %r7897) ; @get-procedure-env
store i64 %r7909, i64* %r7898
%r7912 = alloca i8*
call void @llvm.gcroot(i8** %r7912, i8* null)
%r7900 = bitcast i8** %r7912 to i64*
%r7915 = alloca i8*
call void @llvm.gcroot(i8** %r7915, i8* null)
%r7913 = bitcast i8** %r7915 to i64*
%r7914 = add i64 0, 4
store i64 %r7914, i64* %r7913
%r7911 = call i64 @f17(i64* %r7913, i64* %r7898) ; @make-env
store i64 %r7911, i64* %r7900
%r7918 = alloca i8*
call void @llvm.gcroot(i8** %r7918, i8* null)
%r7916 = bitcast i8** %r7918 to i64*
%r7921 = alloca i8*
call void @llvm.gcroot(i8** %r7921, i8* null)
%r7919 = bitcast i8** %r7921 to i64*
%r7920 = add i64 0, 0
store i64 %r7920, i64* %r7919
%r7924 = alloca i8*
call void @llvm.gcroot(i8** %r7924, i8* null)
%r7922 = bitcast i8** %r7924 to i64*
%r7923 = add i64 0, 4
store i64 %r7923, i64* %r7922
%r7917 = call i64 @f36(i64* %env, i64* %r7919, i64* %r7922) ; @lookup-variable
store i64 %r7917, i64* %r7916
%r7928 = alloca i8*
call void @llvm.gcroot(i8** %r7928, i8* null)
%r7926 = bitcast i8** %r7928 to i64*
%r7927 = add i64 0, 4
store i64 %r7927, i64* %r7926
%r7925 = call i64 @f13(i64* %r7900, i64* %r7926, i64* %r7916) ; @vector-set!
%r7930 = alloca i8*
call void @llvm.gcroot(i8** %r7930, i8* null)
%r7899 = bitcast i8** %r7930 to i64*
%r7929 = call i64 @f19(i64* %r7897) ; @get-procedure-nparams
store i64 %r7929, i64* %r7899
%r7931 = call i64 @f23(i64* %r7899, i64* %r7900) ; @fix-arbitrary-procs
%r7933 = bitcast [20 x i8]* @g7932 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7933, i32 1, i64* %r7900)
%r7935 = alloca i8*
call void @llvm.gcroot(i8** %r7935, i8* null)
%r7895 = bitcast i8** %r7935 to i64*
%r7934 = call i64 @apply-procedure(i64* %r7897, i64* %r7900) ; @apply-procedure
store i64 %r7934, i64* %r7895
%r7936 = call i64 @f2(i64* %r7895) ; @raw-number
%r7937 = trunc i64 %r7936 to i1
br i1 %r7937, label %label202, label %label203
label202:
%r7945 = alloca i8*
call void @llvm.gcroot(i8** %r7945, i8* null)
%r7940 = bitcast i8** %r7945 to i64*
%r7948 = alloca i8*
call void @llvm.gcroot(i8** %r7948, i8* null)
%r7946 = bitcast i8** %r7948 to i64*
%r7947 = add i64 0, 16
store i64 %r7947, i64* %r7946
%r7951 = alloca i8*
call void @llvm.gcroot(i8** %r7951, i8* null)
%r7949 = bitcast i8** %r7951 to i64*
%r7950 = add i64 0, 72
store i64 %r7950, i64* %r7949
%r7944 = call i64 @f36(i64* %env, i64* %r7946, i64* %r7949) ; @lookup-variable
store i64 %r7944, i64* %r7940
%r7953 = alloca i8*
call void @llvm.gcroot(i8** %r7953, i8* null)
%r7941 = bitcast i8** %r7953 to i64*
%r7952 = call i64 @f18(i64* %r7940) ; @get-procedure-env
store i64 %r7952, i64* %r7941
%r7955 = alloca i8*
call void @llvm.gcroot(i8** %r7955, i8* null)
%r7943 = bitcast i8** %r7955 to i64*
%r7958 = alloca i8*
call void @llvm.gcroot(i8** %r7958, i8* null)
%r7956 = bitcast i8** %r7958 to i64*
%r7957 = add i64 0, 0
store i64 %r7957, i64* %r7956
%r7954 = call i64 @f17(i64* %r7956, i64* %r7941) ; @make-env
store i64 %r7954, i64* %r7943
%r7960 = alloca i8*
call void @llvm.gcroot(i8** %r7960, i8* null)
%r7942 = bitcast i8** %r7960 to i64*
%r7959 = call i64 @f19(i64* %r7940) ; @get-procedure-nparams
store i64 %r7959, i64* %r7942
%r7961 = call i64 @f23(i64* %r7942, i64* %r7943) ; @fix-arbitrary-procs
%r7963 = bitcast [20 x i8]* @g7962 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7963, i32 1, i64* %r7943)
%r7965 = alloca i8*
call void @llvm.gcroot(i8** %r7965, i8* null)
%r7938 = bitcast i8** %r7965 to i64*
%r7964 = call i64 @apply-procedure(i64* %r7940, i64* %r7943) ; @apply-procedure
store i64 %r7964, i64* %r7938
%r7971 = alloca i8*
call void @llvm.gcroot(i8** %r7971, i8* null)
%r7966 = bitcast i8** %r7971 to i64*
%r7974 = alloca i8*
call void @llvm.gcroot(i8** %r7974, i8* null)
%r7972 = bitcast i8** %r7974 to i64*
%r7973 = add i64 0, 8
store i64 %r7973, i64* %r7972
%r7977 = alloca i8*
call void @llvm.gcroot(i8** %r7977, i8* null)
%r7975 = bitcast i8** %r7977 to i64*
%r7976 = add i64 0, 4
store i64 %r7976, i64* %r7975
%r7970 = call i64 @f36(i64* %env, i64* %r7972, i64* %r7975) ; @lookup-variable
store i64 %r7970, i64* %r7966
%r7979 = alloca i8*
call void @llvm.gcroot(i8** %r7979, i8* null)
%r7967 = bitcast i8** %r7979 to i64*
%r7978 = call i64 @f18(i64* %r7966) ; @get-procedure-env
store i64 %r7978, i64* %r7967
%r7981 = alloca i8*
call void @llvm.gcroot(i8** %r7981, i8* null)
%r7969 = bitcast i8** %r7981 to i64*
%r7984 = alloca i8*
call void @llvm.gcroot(i8** %r7984, i8* null)
%r7982 = bitcast i8** %r7984 to i64*
%r7983 = add i64 0, 0
store i64 %r7983, i64* %r7982
%r7980 = call i64 @f17(i64* %r7982, i64* %r7967) ; @make-env
store i64 %r7980, i64* %r7969
%r7986 = alloca i8*
call void @llvm.gcroot(i8** %r7986, i8* null)
%r7968 = bitcast i8** %r7986 to i64*
%r7985 = call i64 @f19(i64* %r7966) ; @get-procedure-nparams
store i64 %r7985, i64* %r7968
%r7987 = call i64 @f23(i64* %r7968, i64* %r7969) ; @fix-arbitrary-procs
%r7989 = bitcast [20 x i8]* @g7988 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r7989, i32 1, i64* %r7969)
%r7991 = alloca i8*
call void @llvm.gcroot(i8** %r7991, i8* null)
%r7939 = bitcast i8** %r7991 to i64*
%r7990 = call i64 @apply-procedure(i64* %r7966, i64* %r7969) ; @apply-procedure
store i64 %r7990, i64* %r7939
%r7993 = alloca i8*
call void @llvm.gcroot(i8** %r7993, i8* null)
%r7857 = bitcast i8** %r7993 to i64*
%r7992 = call i64 @f21(i64* %r7938, i64* %r7939) ; @cons
store i64 %r7992, i64* %r7857
br label %label204
label203:
%r7995 = alloca i8*
call void @llvm.gcroot(i8** %r7995, i8* null)
%r7857 = bitcast i8** %r7995 to i64*
%r8001 = alloca i8*
call void @llvm.gcroot(i8** %r8001, i8* null)
%r7996 = bitcast i8** %r8001 to i64*
%r8004 = alloca i8*
call void @llvm.gcroot(i8** %r8004, i8* null)
%r8002 = bitcast i8** %r8004 to i64*
%r8003 = add i64 0, 16
store i64 %r8003, i64* %r8002
%r8007 = alloca i8*
call void @llvm.gcroot(i8** %r8007, i8* null)
%r8005 = bitcast i8** %r8007 to i64*
%r8006 = add i64 0, 100
store i64 %r8006, i64* %r8005
%r8000 = call i64 @f36(i64* %env, i64* %r8002, i64* %r8005) ; @lookup-variable
store i64 %r8000, i64* %r7996
%r8009 = alloca i8*
call void @llvm.gcroot(i8** %r8009, i8* null)
%r7997 = bitcast i8** %r8009 to i64*
%r8008 = call i64 @f18(i64* %r7996) ; @get-procedure-env
store i64 %r8008, i64* %r7997
%r8011 = alloca i8*
call void @llvm.gcroot(i8** %r8011, i8* null)
%r7999 = bitcast i8** %r8011 to i64*
%r8014 = alloca i8*
call void @llvm.gcroot(i8** %r8014, i8* null)
%r8012 = bitcast i8** %r8014 to i64*
%r8013 = add i64 0, 4
store i64 %r8013, i64* %r8012
%r8010 = call i64 @f17(i64* %r8012, i64* %r7997) ; @make-env
store i64 %r8010, i64* %r7999
%r8017 = alloca i8*
call void @llvm.gcroot(i8** %r8017, i8* null)
%r8015 = bitcast i8** %r8017 to i64*
%r8020 = alloca i8*
call void @llvm.gcroot(i8** %r8020, i8* null)
%r8018 = bitcast i8** %r8020 to i64*
%r8019 = add i64 0, 0
store i64 %r8019, i64* %r8018
%r8023 = alloca i8*
call void @llvm.gcroot(i8** %r8023, i8* null)
%r8021 = bitcast i8** %r8023 to i64*
%r8022 = add i64 0, 4
store i64 %r8022, i64* %r8021
%r8016 = call i64 @f36(i64* %env, i64* %r8018, i64* %r8021) ; @lookup-variable
store i64 %r8016, i64* %r8015
%r8027 = alloca i8*
call void @llvm.gcroot(i8** %r8027, i8* null)
%r8025 = bitcast i8** %r8027 to i64*
%r8026 = add i64 0, 4
store i64 %r8026, i64* %r8025
%r8024 = call i64 @f13(i64* %r7999, i64* %r8025, i64* %r8015) ; @vector-set!
%r8029 = alloca i8*
call void @llvm.gcroot(i8** %r8029, i8* null)
%r7998 = bitcast i8** %r8029 to i64*
%r8028 = call i64 @f19(i64* %r7996) ; @get-procedure-nparams
store i64 %r8028, i64* %r7998
%r8030 = call i64 @f23(i64* %r7998, i64* %r7999) ; @fix-arbitrary-procs
%r8032 = bitcast [20 x i8]* @g8031 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r8032, i32 1, i64* %r7999)
%r8034 = alloca i8*
call void @llvm.gcroot(i8** %r8034, i8* null)
%r7994 = bitcast i8** %r8034 to i64*
%r8033 = call i64 @apply-procedure(i64* %r7996, i64* %r7999) ; @apply-procedure
store i64 %r8033, i64* %r7994
%r8035 = call i64 @f2(i64* %r7994) ; @raw-number
%r8036 = trunc i64 %r8035 to i1
br i1 %r8036, label %label205, label %label206
label205:
%r8038 = alloca i8*
call void @llvm.gcroot(i8** %r8038, i8* null)
%r7857 = bitcast i8** %r8038 to i64*
%r8037 = call i64 @make-null() ; @make-null
store i64 %r8037, i64* %r7857
br label %label207
label206:
%r8042 = alloca i8*
call void @llvm.gcroot(i8** %r8042, i8* null)
%r8039 = bitcast i8** %r8042 to i64*
%r8045 = alloca i8*
call void @llvm.gcroot(i8** %r8045, i8* null)
%r8043 = bitcast i8** %r8045 to i64*
%r8044 = add i64 0, 0
store i64 %r8044, i64* %r8043
%r8048 = alloca i8*
call void @llvm.gcroot(i8** %r8048, i8* null)
%r8046 = bitcast i8** %r8048 to i64*
%r8047 = add i64 0, 4
store i64 %r8047, i64* %r8046
%r8041 = call i64 @f36(i64* %env, i64* %r8043, i64* %r8046) ; @lookup-variable
store i64 %r8041, i64* %r8039
%r8054 = alloca i8*
call void @llvm.gcroot(i8** %r8054, i8* null)
%r8049 = bitcast i8** %r8054 to i64*
%r8057 = alloca i8*
call void @llvm.gcroot(i8** %r8057, i8* null)
%r8055 = bitcast i8** %r8057 to i64*
%r8056 = add i64 0, 8
store i64 %r8056, i64* %r8055
%r8060 = alloca i8*
call void @llvm.gcroot(i8** %r8060, i8* null)
%r8058 = bitcast i8** %r8060 to i64*
%r8059 = add i64 0, 4
store i64 %r8059, i64* %r8058
%r8053 = call i64 @f36(i64* %env, i64* %r8055, i64* %r8058) ; @lookup-variable
store i64 %r8053, i64* %r8049
%r8062 = alloca i8*
call void @llvm.gcroot(i8** %r8062, i8* null)
%r8050 = bitcast i8** %r8062 to i64*
%r8061 = call i64 @f18(i64* %r8049) ; @get-procedure-env
store i64 %r8061, i64* %r8050
%r8064 = alloca i8*
call void @llvm.gcroot(i8** %r8064, i8* null)
%r8052 = bitcast i8** %r8064 to i64*
%r8067 = alloca i8*
call void @llvm.gcroot(i8** %r8067, i8* null)
%r8065 = bitcast i8** %r8067 to i64*
%r8066 = add i64 0, 0
store i64 %r8066, i64* %r8065
%r8063 = call i64 @f17(i64* %r8065, i64* %r8050) ; @make-env
store i64 %r8063, i64* %r8052
%r8069 = alloca i8*
call void @llvm.gcroot(i8** %r8069, i8* null)
%r8051 = bitcast i8** %r8069 to i64*
%r8068 = call i64 @f19(i64* %r8049) ; @get-procedure-nparams
store i64 %r8068, i64* %r8051
%r8070 = call i64 @f23(i64* %r8051, i64* %r8052) ; @fix-arbitrary-procs
%r8072 = bitcast [20 x i8]* @g8071 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r8072, i32 1, i64* %r8052)
%r8074 = alloca i8*
call void @llvm.gcroot(i8** %r8074, i8* null)
%r8040 = bitcast i8** %r8074 to i64*
%r8073 = call i64 @apply-procedure(i64* %r8049, i64* %r8052) ; @apply-procedure
store i64 %r8073, i64* %r8040
%r8076 = alloca i8*
call void @llvm.gcroot(i8** %r8076, i8* null)
%r7857 = bitcast i8** %r8076 to i64*
%r8075 = call i64 @f21(i64* %r8039, i64* %r8040) ; @cons
store i64 %r8075, i64* %r7857
br label %label207
label207:
br label %label204
label204:
%r8077 = load i64* %r7857
ret i64 %r8077
}

; @f158
define i64 @f161(i64* %env) gc "shadow-stack" {
%r8079 = alloca i8*
call void @llvm.gcroot(i8** %r8079, i8* null)
%r7858 = bitcast i8** %r8079 to i64*
%r8082 = alloca i8*
call void @llvm.gcroot(i8** %r8082, i8* null)
%r8080 = bitcast i8** %r8082 to i64*
%r8081 = add i64 0, 4
store i64 %r8081, i64* %r8080
%r8078 = call i64 @f17(i64* %r8080, i64* %env) ; @make-env
store i64 %r8078, i64* %r7858
%r8084 = alloca i8*
call void @llvm.gcroot(i8** %r8084, i8* null)
%r7855 = bitcast i8** %r8084 to i64*
%r8083 = call i64 @f160(i64* %r7858) ; @f159
store i64 %r8083, i64* %r7855
%r8085 = load i64* %r7855
ret i64 %r8085
}

; @f157
define i64 @f162(i64* %env) gc "shadow-stack" {
%r8087 = alloca i8*
call void @llvm.gcroot(i8** %r8087, i8* null)
%r7854 = bitcast i8** %r8087 to i64*
%r8090 = alloca i8*
call void @llvm.gcroot(i8** %r8090, i8* null)
%r8088 = bitcast i8** %r8090 to i64*
%r8089 = add i64 0, 0
store i64 %r8089, i64* %r8088
%r8086 = call i64 @make-procedure(i64 (i64*)* @f161, i64* %env, i64* %r8088)
store i64 %r8086, i64* %r7854
%r8092 = alloca i8*
call void @llvm.gcroot(i8** %r8092, i8* null)
%r7853 = bitcast i8** %r8092 to i64*
%r8095 = alloca i8*
call void @llvm.gcroot(i8** %r8095, i8* null)
%r8093 = bitcast i8** %r8095 to i64*
%r8094 = add i64 0, 0
store i64 %r8094, i64* %r8093
%r8098 = alloca i8*
call void @llvm.gcroot(i8** %r8098, i8* null)
%r8096 = bitcast i8** %r8098 to i64*
%r8097 = add i64 0, 4
store i64 %r8097, i64* %r8096
%r8091 = call i64 @f37(i64* %env, i64* %r8093, i64* %r8096, i64* %r7854) ; @set-variable!
store i64 %r8091, i64* %r7853
%r8104 = alloca i8*
call void @llvm.gcroot(i8** %r8104, i8* null)
%r8099 = bitcast i8** %r8104 to i64*
%r8107 = alloca i8*
call void @llvm.gcroot(i8** %r8107, i8* null)
%r8105 = bitcast i8** %r8107 to i64*
%r8106 = add i64 0, 8
store i64 %r8106, i64* %r8105
%r8110 = alloca i8*
call void @llvm.gcroot(i8** %r8110, i8* null)
%r8108 = bitcast i8** %r8110 to i64*
%r8109 = add i64 0, 4
store i64 %r8109, i64* %r8108
%r8103 = call i64 @f36(i64* %env, i64* %r8105, i64* %r8108) ; @lookup-variable
store i64 %r8103, i64* %r8099
%r8112 = alloca i8*
call void @llvm.gcroot(i8** %r8112, i8* null)
%r8100 = bitcast i8** %r8112 to i64*
%r8111 = call i64 @f18(i64* %r8099) ; @get-procedure-env
store i64 %r8111, i64* %r8100
%r8114 = alloca i8*
call void @llvm.gcroot(i8** %r8114, i8* null)
%r8102 = bitcast i8** %r8114 to i64*
%r8117 = alloca i8*
call void @llvm.gcroot(i8** %r8117, i8* null)
%r8115 = bitcast i8** %r8117 to i64*
%r8116 = add i64 0, 4
store i64 %r8116, i64* %r8115
%r8113 = call i64 @f17(i64* %r8115, i64* %r8100) ; @make-env
store i64 %r8113, i64* %r8102
%r8124 = alloca i8*
call void @llvm.gcroot(i8** %r8124, i8* null)
%r8119 = bitcast i8** %r8124 to i64*
%r8127 = alloca i8*
call void @llvm.gcroot(i8** %r8127, i8* null)
%r8125 = bitcast i8** %r8127 to i64*
%r8126 = add i64 0, 0
store i64 %r8126, i64* %r8125
%r8130 = alloca i8*
call void @llvm.gcroot(i8** %r8130, i8* null)
%r8128 = bitcast i8** %r8130 to i64*
%r8129 = add i64 0, 4
store i64 %r8129, i64* %r8128
%r8123 = call i64 @f36(i64* %env, i64* %r8125, i64* %r8128) ; @lookup-variable
store i64 %r8123, i64* %r8119
%r8132 = alloca i8*
call void @llvm.gcroot(i8** %r8132, i8* null)
%r8120 = bitcast i8** %r8132 to i64*
%r8131 = call i64 @f18(i64* %r8119) ; @get-procedure-env
store i64 %r8131, i64* %r8120
%r8134 = alloca i8*
call void @llvm.gcroot(i8** %r8134, i8* null)
%r8122 = bitcast i8** %r8134 to i64*
%r8137 = alloca i8*
call void @llvm.gcroot(i8** %r8137, i8* null)
%r8135 = bitcast i8** %r8137 to i64*
%r8136 = add i64 0, 0
store i64 %r8136, i64* %r8135
%r8133 = call i64 @f17(i64* %r8135, i64* %r8120) ; @make-env
store i64 %r8133, i64* %r8122
%r8139 = alloca i8*
call void @llvm.gcroot(i8** %r8139, i8* null)
%r8121 = bitcast i8** %r8139 to i64*
%r8138 = call i64 @f19(i64* %r8119) ; @get-procedure-nparams
store i64 %r8138, i64* %r8121
%r8140 = call i64 @f23(i64* %r8121, i64* %r8122) ; @fix-arbitrary-procs
%r8142 = bitcast [20 x i8]* @g8141 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r8142, i32 1, i64* %r8122)
%r8144 = alloca i8*
call void @llvm.gcroot(i8** %r8144, i8* null)
%r8118 = bitcast i8** %r8144 to i64*
%r8143 = call i64 @apply-procedure(i64* %r8119, i64* %r8122) ; @apply-procedure
store i64 %r8143, i64* %r8118
%r8148 = alloca i8*
call void @llvm.gcroot(i8** %r8148, i8* null)
%r8146 = bitcast i8** %r8148 to i64*
%r8147 = add i64 0, 4
store i64 %r8147, i64* %r8146
%r8145 = call i64 @f13(i64* %r8102, i64* %r8146, i64* %r8118) ; @vector-set!
%r8150 = alloca i8*
call void @llvm.gcroot(i8** %r8150, i8* null)
%r8101 = bitcast i8** %r8150 to i64*
%r8149 = call i64 @f19(i64* %r8099) ; @get-procedure-nparams
store i64 %r8149, i64* %r8101
%r8151 = call i64 @f23(i64* %r8101, i64* %r8102) ; @fix-arbitrary-procs
%r8153 = bitcast [20 x i8]* @g8152 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r8153, i32 1, i64* %r8102)
%r8155 = alloca i8*
call void @llvm.gcroot(i8** %r8155, i8* null)
%r7851 = bitcast i8** %r8155 to i64*
%r8154 = call i64 @apply-procedure(i64* %r8099, i64* %r8102) ; @apply-procedure
store i64 %r8154, i64* %r7851
%r8156 = load i64* %r7851
ret i64 %r8156
}

; @f156
define i64 @f163(i64* %env) gc "shadow-stack" {
%r8158 = alloca i8*
call void @llvm.gcroot(i8** %r8158, i8* null)
%r7852 = bitcast i8** %r8158 to i64*
%r8161 = alloca i8*
call void @llvm.gcroot(i8** %r8161, i8* null)
%r8159 = bitcast i8** %r8161 to i64*
%r8160 = add i64 0, 4
store i64 %r8160, i64* %r8159
%r8157 = call i64 @f17(i64* %r8159, i64* %env) ; @make-env
store i64 %r8157, i64* %r7852
%r8163 = alloca i8*
call void @llvm.gcroot(i8** %r8163, i8* null)
%r7849 = bitcast i8** %r8163 to i64*
%r8162 = call i64 @f162(i64* %r7852) ; @f157
store i64 %r8162, i64* %r7849
%r8164 = load i64* %r7849
ret i64 %r8164
}

; @f164
define i64 @f165(i64* %env) gc "shadow-stack" {
%r8395 = alloca i8*
call void @llvm.gcroot(i8** %r8395, i8* null)
%r8392 = bitcast i8** %r8395 to i64*
%r8399 = alloca i8*
call void @llvm.gcroot(i8** %r8399, i8* null)
%r8396 = bitcast i8** %r8399 to i64*
%r8402 = alloca i8*
call void @llvm.gcroot(i8** %r8402, i8* null)
%r8400 = bitcast i8** %r8402 to i64*
%r8401 = add i64 0, 0
store i64 %r8401, i64* %r8400
%r8405 = alloca i8*
call void @llvm.gcroot(i8** %r8405, i8* null)
%r8403 = bitcast i8** %r8405 to i64*
%r8404 = add i64 0, 4
store i64 %r8404, i64* %r8403
%r8398 = call i64 @f36(i64* %env, i64* %r8400, i64* %r8403) ; @lookup-variable
store i64 %r8398, i64* %r8396
%r8407 = alloca i8*
call void @llvm.gcroot(i8** %r8407, i8* null)
%r8397 = bitcast i8** %r8407 to i64*
%r8406 = add i64 0, 8
store i64 %r8406, i64* %r8397
%r8409 = alloca i8*
call void @llvm.gcroot(i8** %r8409, i8* null)
%r8394 = bitcast i8** %r8409 to i64*
%r8408 = call i64 @f11(i64* %r8396, i64* %r8397) ; @<
store i64 %r8408, i64* %r8394
%r8410 = call i64 @f2(i64* %r8394) ; @raw-number
%r8411 = trunc i64 %r8410 to i1
br i1 %r8411, label %label208, label %label209
label208:
%r8413 = alloca i8*
call void @llvm.gcroot(i8** %r8413, i8* null)
%r8392 = bitcast i8** %r8413 to i64*
%r8416 = alloca i8*
call void @llvm.gcroot(i8** %r8416, i8* null)
%r8414 = bitcast i8** %r8416 to i64*
%r8415 = add i64 0, 0
store i64 %r8415, i64* %r8414
%r8419 = alloca i8*
call void @llvm.gcroot(i8** %r8419, i8* null)
%r8417 = bitcast i8** %r8419 to i64*
%r8418 = add i64 0, 4
store i64 %r8418, i64* %r8417
%r8412 = call i64 @f36(i64* %env, i64* %r8414, i64* %r8417) ; @lookup-variable
store i64 %r8412, i64* %r8392
br label %label210
label209:
%r8427 = alloca i8*
call void @llvm.gcroot(i8** %r8427, i8* null)
%r8422 = bitcast i8** %r8427 to i64*
%r8430 = alloca i8*
call void @llvm.gcroot(i8** %r8430, i8* null)
%r8428 = bitcast i8** %r8430 to i64*
%r8429 = add i64 0, 4
store i64 %r8429, i64* %r8428
%r8433 = alloca i8*
call void @llvm.gcroot(i8** %r8433, i8* null)
%r8431 = bitcast i8** %r8433 to i64*
%r8432 = add i64 0, 168
store i64 %r8432, i64* %r8431
%r8426 = call i64 @f36(i64* %env, i64* %r8428, i64* %r8431) ; @lookup-variable
store i64 %r8426, i64* %r8422
%r8435 = alloca i8*
call void @llvm.gcroot(i8** %r8435, i8* null)
%r8423 = bitcast i8** %r8435 to i64*
%r8434 = call i64 @f18(i64* %r8422) ; @get-procedure-env
store i64 %r8434, i64* %r8423
%r8437 = alloca i8*
call void @llvm.gcroot(i8** %r8437, i8* null)
%r8425 = bitcast i8** %r8437 to i64*
%r8440 = alloca i8*
call void @llvm.gcroot(i8** %r8440, i8* null)
%r8438 = bitcast i8** %r8440 to i64*
%r8439 = add i64 0, 4
store i64 %r8439, i64* %r8438
%r8436 = call i64 @f17(i64* %r8438, i64* %r8423) ; @make-env
store i64 %r8436, i64* %r8425
%r8445 = alloca i8*
call void @llvm.gcroot(i8** %r8445, i8* null)
%r8442 = bitcast i8** %r8445 to i64*
%r8448 = alloca i8*
call void @llvm.gcroot(i8** %r8448, i8* null)
%r8446 = bitcast i8** %r8448 to i64*
%r8447 = add i64 0, 0
store i64 %r8447, i64* %r8446
%r8451 = alloca i8*
call void @llvm.gcroot(i8** %r8451, i8* null)
%r8449 = bitcast i8** %r8451 to i64*
%r8450 = add i64 0, 4
store i64 %r8450, i64* %r8449
%r8444 = call i64 @f36(i64* %env, i64* %r8446, i64* %r8449) ; @lookup-variable
store i64 %r8444, i64* %r8442
%r8453 = alloca i8*
call void @llvm.gcroot(i8** %r8453, i8* null)
%r8443 = bitcast i8** %r8453 to i64*
%r8452 = add i64 0, 4
store i64 %r8452, i64* %r8443
%r8455 = alloca i8*
call void @llvm.gcroot(i8** %r8455, i8* null)
%r8441 = bitcast i8** %r8455 to i64*
%r8454 = call i64 @f22(i64* %r8442, i64* %r8443) ; @-
store i64 %r8454, i64* %r8441
%r8459 = alloca i8*
call void @llvm.gcroot(i8** %r8459, i8* null)
%r8457 = bitcast i8** %r8459 to i64*
%r8458 = add i64 0, 4
store i64 %r8458, i64* %r8457
%r8456 = call i64 @f13(i64* %r8425, i64* %r8457, i64* %r8441) ; @vector-set!
%r8461 = alloca i8*
call void @llvm.gcroot(i8** %r8461, i8* null)
%r8424 = bitcast i8** %r8461 to i64*
%r8460 = call i64 @f19(i64* %r8422) ; @get-procedure-nparams
store i64 %r8460, i64* %r8424
%r8462 = call i64 @f23(i64* %r8424, i64* %r8425) ; @fix-arbitrary-procs
%r8464 = bitcast [20 x i8]* @g8463 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r8464, i32 1, i64* %r8425)
%r8466 = alloca i8*
call void @llvm.gcroot(i8** %r8466, i8* null)
%r8420 = bitcast i8** %r8466 to i64*
%r8465 = call i64 @apply-procedure(i64* %r8422, i64* %r8425) ; @apply-procedure
store i64 %r8465, i64* %r8420
%r8472 = alloca i8*
call void @llvm.gcroot(i8** %r8472, i8* null)
%r8467 = bitcast i8** %r8472 to i64*
%r8475 = alloca i8*
call void @llvm.gcroot(i8** %r8475, i8* null)
%r8473 = bitcast i8** %r8475 to i64*
%r8474 = add i64 0, 4
store i64 %r8474, i64* %r8473
%r8478 = alloca i8*
call void @llvm.gcroot(i8** %r8478, i8* null)
%r8476 = bitcast i8** %r8478 to i64*
%r8477 = add i64 0, 168
store i64 %r8477, i64* %r8476
%r8471 = call i64 @f36(i64* %env, i64* %r8473, i64* %r8476) ; @lookup-variable
store i64 %r8471, i64* %r8467
%r8480 = alloca i8*
call void @llvm.gcroot(i8** %r8480, i8* null)
%r8468 = bitcast i8** %r8480 to i64*
%r8479 = call i64 @f18(i64* %r8467) ; @get-procedure-env
store i64 %r8479, i64* %r8468
%r8482 = alloca i8*
call void @llvm.gcroot(i8** %r8482, i8* null)
%r8470 = bitcast i8** %r8482 to i64*
%r8485 = alloca i8*
call void @llvm.gcroot(i8** %r8485, i8* null)
%r8483 = bitcast i8** %r8485 to i64*
%r8484 = add i64 0, 4
store i64 %r8484, i64* %r8483
%r8481 = call i64 @f17(i64* %r8483, i64* %r8468) ; @make-env
store i64 %r8481, i64* %r8470
%r8490 = alloca i8*
call void @llvm.gcroot(i8** %r8490, i8* null)
%r8487 = bitcast i8** %r8490 to i64*
%r8493 = alloca i8*
call void @llvm.gcroot(i8** %r8493, i8* null)
%r8491 = bitcast i8** %r8493 to i64*
%r8492 = add i64 0, 0
store i64 %r8492, i64* %r8491
%r8496 = alloca i8*
call void @llvm.gcroot(i8** %r8496, i8* null)
%r8494 = bitcast i8** %r8496 to i64*
%r8495 = add i64 0, 4
store i64 %r8495, i64* %r8494
%r8489 = call i64 @f36(i64* %env, i64* %r8491, i64* %r8494) ; @lookup-variable
store i64 %r8489, i64* %r8487
%r8498 = alloca i8*
call void @llvm.gcroot(i8** %r8498, i8* null)
%r8488 = bitcast i8** %r8498 to i64*
%r8497 = add i64 0, 8
store i64 %r8497, i64* %r8488
%r8500 = alloca i8*
call void @llvm.gcroot(i8** %r8500, i8* null)
%r8486 = bitcast i8** %r8500 to i64*
%r8499 = call i64 @f22(i64* %r8487, i64* %r8488) ; @-
store i64 %r8499, i64* %r8486
%r8504 = alloca i8*
call void @llvm.gcroot(i8** %r8504, i8* null)
%r8502 = bitcast i8** %r8504 to i64*
%r8503 = add i64 0, 4
store i64 %r8503, i64* %r8502
%r8501 = call i64 @f13(i64* %r8470, i64* %r8502, i64* %r8486) ; @vector-set!
%r8506 = alloca i8*
call void @llvm.gcroot(i8** %r8506, i8* null)
%r8469 = bitcast i8** %r8506 to i64*
%r8505 = call i64 @f19(i64* %r8467) ; @get-procedure-nparams
store i64 %r8505, i64* %r8469
%r8507 = call i64 @f23(i64* %r8469, i64* %r8470) ; @fix-arbitrary-procs
%r8509 = bitcast [20 x i8]* @g8508 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r8509, i32 1, i64* %r8470)
%r8511 = alloca i8*
call void @llvm.gcroot(i8** %r8511, i8* null)
%r8421 = bitcast i8** %r8511 to i64*
%r8510 = call i64 @apply-procedure(i64* %r8467, i64* %r8470) ; @apply-procedure
store i64 %r8510, i64* %r8421
%r8513 = alloca i8*
call void @llvm.gcroot(i8** %r8513, i8* null)
%r8392 = bitcast i8** %r8513 to i64*
%r8512 = call i64 @f16(i64* %r8420, i64* %r8421) ; @+
store i64 %r8512, i64* %r8392
br label %label210
label210:
%r8514 = load i64* %r8392
ret i64 %r8514
}

; @f1
define i64 @f166(i64* %env) gc "shadow-stack" {
%r1695 = alloca i8*
call void @llvm.gcroot(i8** %r1695, i8* null)
%r1598 = bitcast i8** %r1695 to i64*
%r1698 = alloca i8*
call void @llvm.gcroot(i8** %r1698, i8* null)
%r1696 = bitcast i8** %r1698 to i64*
%r1697 = add i64 0, 0
store i64 %r1697, i64* %r1696
%r1694 = call i64 @make-procedure(i64 (i64*)* @f53, i64* %env, i64* %r1696)
store i64 %r1694, i64* %r1598
%r1700 = alloca i8*
call void @llvm.gcroot(i8** %r1700, i8* null)
%r1597 = bitcast i8** %r1700 to i64*
%r1703 = alloca i8*
call void @llvm.gcroot(i8** %r1703, i8* null)
%r1701 = bitcast i8** %r1703 to i64*
%r1702 = add i64 0, 0
store i64 %r1702, i64* %r1701
%r1706 = alloca i8*
call void @llvm.gcroot(i8** %r1706, i8* null)
%r1704 = bitcast i8** %r1706 to i64*
%r1705 = add i64 0, 4
store i64 %r1705, i64* %r1704
%r1699 = call i64 @f37(i64* %env, i64* %r1701, i64* %r1704, i64* %r1598) ; @set-variable!
store i64 %r1699, i64* %r1597
%r1755 = alloca i8*
call void @llvm.gcroot(i8** %r1755, i8* null)
%r1708 = bitcast i8** %r1755 to i64*
%r1758 = alloca i8*
call void @llvm.gcroot(i8** %r1758, i8* null)
%r1756 = bitcast i8** %r1758 to i64*
%r1757 = add i64 0, 0
store i64 %r1757, i64* %r1756
%r1754 = call i64 @make-procedure(i64 (i64*)* @f55, i64* %env, i64* %r1756)
store i64 %r1754, i64* %r1708
%r1760 = alloca i8*
call void @llvm.gcroot(i8** %r1760, i8* null)
%r1707 = bitcast i8** %r1760 to i64*
%r1763 = alloca i8*
call void @llvm.gcroot(i8** %r1763, i8* null)
%r1761 = bitcast i8** %r1763 to i64*
%r1762 = add i64 0, 0
store i64 %r1762, i64* %r1761
%r1766 = alloca i8*
call void @llvm.gcroot(i8** %r1766, i8* null)
%r1764 = bitcast i8** %r1766 to i64*
%r1765 = add i64 0, 8
store i64 %r1765, i64* %r1764
%r1759 = call i64 @f37(i64* %env, i64* %r1761, i64* %r1764, i64* %r1708) ; @set-variable!
store i64 %r1759, i64* %r1707
%r1933 = alloca i8*
call void @llvm.gcroot(i8** %r1933, i8* null)
%r1768 = bitcast i8** %r1933 to i64*
%r1936 = alloca i8*
call void @llvm.gcroot(i8** %r1936, i8* null)
%r1934 = bitcast i8** %r1936 to i64*
%r1935 = add i64 0, 0
store i64 %r1935, i64* %r1934
%r1932 = call i64 @make-procedure(i64 (i64*)* @f57, i64* %env, i64* %r1934)
store i64 %r1932, i64* %r1768
%r1938 = alloca i8*
call void @llvm.gcroot(i8** %r1938, i8* null)
%r1767 = bitcast i8** %r1938 to i64*
%r1941 = alloca i8*
call void @llvm.gcroot(i8** %r1941, i8* null)
%r1939 = bitcast i8** %r1941 to i64*
%r1940 = add i64 0, 0
store i64 %r1940, i64* %r1939
%r1944 = alloca i8*
call void @llvm.gcroot(i8** %r1944, i8* null)
%r1942 = bitcast i8** %r1944 to i64*
%r1943 = add i64 0, 12
store i64 %r1943, i64* %r1942
%r1937 = call i64 @f37(i64* %env, i64* %r1939, i64* %r1942, i64* %r1768) ; @set-variable!
store i64 %r1937, i64* %r1767
%r2295 = alloca i8*
call void @llvm.gcroot(i8** %r2295, i8* null)
%r1946 = bitcast i8** %r2295 to i64*
%r2298 = alloca i8*
call void @llvm.gcroot(i8** %r2298, i8* null)
%r2296 = bitcast i8** %r2298 to i64*
%r2297 = add i64 0, 0
store i64 %r2297, i64* %r2296
%r2294 = call i64 @make-procedure(i64 (i64*)* @f59, i64* %env, i64* %r2296)
store i64 %r2294, i64* %r1946
%r2300 = alloca i8*
call void @llvm.gcroot(i8** %r2300, i8* null)
%r1945 = bitcast i8** %r2300 to i64*
%r2303 = alloca i8*
call void @llvm.gcroot(i8** %r2303, i8* null)
%r2301 = bitcast i8** %r2303 to i64*
%r2302 = add i64 0, 0
store i64 %r2302, i64* %r2301
%r2306 = alloca i8*
call void @llvm.gcroot(i8** %r2306, i8* null)
%r2304 = bitcast i8** %r2306 to i64*
%r2305 = add i64 0, 16
store i64 %r2305, i64* %r2304
%r2299 = call i64 @f37(i64* %env, i64* %r2301, i64* %r2304, i64* %r1946) ; @set-variable!
store i64 %r2299, i64* %r1945
%r2446 = alloca i8*
call void @llvm.gcroot(i8** %r2446, i8* null)
%r2308 = bitcast i8** %r2446 to i64*
%r2449 = alloca i8*
call void @llvm.gcroot(i8** %r2449, i8* null)
%r2447 = bitcast i8** %r2449 to i64*
%r2448 = add i64 0, 0
store i64 %r2448, i64* %r2447
%r2445 = call i64 @make-procedure(i64 (i64*)* @f61, i64* %env, i64* %r2447)
store i64 %r2445, i64* %r2308
%r2451 = alloca i8*
call void @llvm.gcroot(i8** %r2451, i8* null)
%r2307 = bitcast i8** %r2451 to i64*
%r2454 = alloca i8*
call void @llvm.gcroot(i8** %r2454, i8* null)
%r2452 = bitcast i8** %r2454 to i64*
%r2453 = add i64 0, 0
store i64 %r2453, i64* %r2452
%r2457 = alloca i8*
call void @llvm.gcroot(i8** %r2457, i8* null)
%r2455 = bitcast i8** %r2457 to i64*
%r2456 = add i64 0, 20
store i64 %r2456, i64* %r2455
%r2450 = call i64 @f37(i64* %env, i64* %r2452, i64* %r2455, i64* %r2308) ; @set-variable!
store i64 %r2450, i64* %r2307
%r2529 = alloca i8*
call void @llvm.gcroot(i8** %r2529, i8* null)
%r2459 = bitcast i8** %r2529 to i64*
%r2532 = alloca i8*
call void @llvm.gcroot(i8** %r2532, i8* null)
%r2530 = bitcast i8** %r2532 to i64*
%r2531 = add i64 0, 0
store i64 %r2531, i64* %r2530
%r2528 = call i64 @make-procedure(i64 (i64*)* @f63, i64* %env, i64* %r2530)
store i64 %r2528, i64* %r2459
%r2534 = alloca i8*
call void @llvm.gcroot(i8** %r2534, i8* null)
%r2458 = bitcast i8** %r2534 to i64*
%r2537 = alloca i8*
call void @llvm.gcroot(i8** %r2537, i8* null)
%r2535 = bitcast i8** %r2537 to i64*
%r2536 = add i64 0, 0
store i64 %r2536, i64* %r2535
%r2540 = alloca i8*
call void @llvm.gcroot(i8** %r2540, i8* null)
%r2538 = bitcast i8** %r2540 to i64*
%r2539 = add i64 0, 24
store i64 %r2539, i64* %r2538
%r2533 = call i64 @f37(i64* %env, i64* %r2535, i64* %r2538, i64* %r2459) ; @set-variable!
store i64 %r2533, i64* %r2458
%r2654 = alloca i8*
call void @llvm.gcroot(i8** %r2654, i8* null)
%r2542 = bitcast i8** %r2654 to i64*
%r2657 = alloca i8*
call void @llvm.gcroot(i8** %r2657, i8* null)
%r2655 = bitcast i8** %r2657 to i64*
%r2656 = add i64 0, 0
store i64 %r2656, i64* %r2655
%r2653 = call i64 @make-procedure(i64 (i64*)* @f65, i64* %env, i64* %r2655)
store i64 %r2653, i64* %r2542
%r2659 = alloca i8*
call void @llvm.gcroot(i8** %r2659, i8* null)
%r2541 = bitcast i8** %r2659 to i64*
%r2662 = alloca i8*
call void @llvm.gcroot(i8** %r2662, i8* null)
%r2660 = bitcast i8** %r2662 to i64*
%r2661 = add i64 0, 0
store i64 %r2661, i64* %r2660
%r2665 = alloca i8*
call void @llvm.gcroot(i8** %r2665, i8* null)
%r2663 = bitcast i8** %r2665 to i64*
%r2664 = add i64 0, 28
store i64 %r2664, i64* %r2663
%r2658 = call i64 @f37(i64* %env, i64* %r2660, i64* %r2663, i64* %r2542) ; @set-variable!
store i64 %r2658, i64* %r2541
%r2790 = alloca i8*
call void @llvm.gcroot(i8** %r2790, i8* null)
%r2667 = bitcast i8** %r2790 to i64*
%r2793 = alloca i8*
call void @llvm.gcroot(i8** %r2793, i8* null)
%r2791 = bitcast i8** %r2793 to i64*
%r2792 = add i64 0, 0
store i64 %r2792, i64* %r2791
%r2789 = call i64 @make-procedure(i64 (i64*)* @f67, i64* %env, i64* %r2791)
store i64 %r2789, i64* %r2667
%r2795 = alloca i8*
call void @llvm.gcroot(i8** %r2795, i8* null)
%r2666 = bitcast i8** %r2795 to i64*
%r2798 = alloca i8*
call void @llvm.gcroot(i8** %r2798, i8* null)
%r2796 = bitcast i8** %r2798 to i64*
%r2797 = add i64 0, 0
store i64 %r2797, i64* %r2796
%r2801 = alloca i8*
call void @llvm.gcroot(i8** %r2801, i8* null)
%r2799 = bitcast i8** %r2801 to i64*
%r2800 = add i64 0, 32
store i64 %r2800, i64* %r2799
%r2794 = call i64 @f37(i64* %env, i64* %r2796, i64* %r2799, i64* %r2667) ; @set-variable!
store i64 %r2794, i64* %r2666
%r3249 = alloca i8*
call void @llvm.gcroot(i8** %r3249, i8* null)
%r2803 = bitcast i8** %r3249 to i64*
%r3252 = alloca i8*
call void @llvm.gcroot(i8** %r3252, i8* null)
%r3250 = bitcast i8** %r3252 to i64*
%r3251 = add i64 0, 4
store i64 %r3251, i64* %r3250
%r3248 = call i64 @make-procedure(i64 (i64*)* @f75, i64* %env, i64* %r3250)
store i64 %r3248, i64* %r2803
%r3254 = alloca i8*
call void @llvm.gcroot(i8** %r3254, i8* null)
%r2802 = bitcast i8** %r3254 to i64*
%r3257 = alloca i8*
call void @llvm.gcroot(i8** %r3257, i8* null)
%r3255 = bitcast i8** %r3257 to i64*
%r3256 = add i64 0, 0
store i64 %r3256, i64* %r3255
%r3260 = alloca i8*
call void @llvm.gcroot(i8** %r3260, i8* null)
%r3258 = bitcast i8** %r3260 to i64*
%r3259 = add i64 0, 36
store i64 %r3259, i64* %r3258
%r3253 = call i64 @f37(i64* %env, i64* %r3255, i64* %r3258, i64* %r2803) ; @set-variable!
store i64 %r3253, i64* %r2802
%r3410 = alloca i8*
call void @llvm.gcroot(i8** %r3410, i8* null)
%r3262 = bitcast i8** %r3410 to i64*
%r3413 = alloca i8*
call void @llvm.gcroot(i8** %r3413, i8* null)
%r3411 = bitcast i8** %r3413 to i64*
%r3412 = add i64 0, 0
store i64 %r3412, i64* %r3411
%r3409 = call i64 @make-procedure(i64 (i64*)* @f77, i64* %env, i64* %r3411)
store i64 %r3409, i64* %r3262
%r3415 = alloca i8*
call void @llvm.gcroot(i8** %r3415, i8* null)
%r3261 = bitcast i8** %r3415 to i64*
%r3418 = alloca i8*
call void @llvm.gcroot(i8** %r3418, i8* null)
%r3416 = bitcast i8** %r3418 to i64*
%r3417 = add i64 0, 0
store i64 %r3417, i64* %r3416
%r3421 = alloca i8*
call void @llvm.gcroot(i8** %r3421, i8* null)
%r3419 = bitcast i8** %r3421 to i64*
%r3420 = add i64 0, 40
store i64 %r3420, i64* %r3419
%r3414 = call i64 @f37(i64* %env, i64* %r3416, i64* %r3419, i64* %r3262) ; @set-variable!
store i64 %r3414, i64* %r3261
%r3735 = alloca i8*
call void @llvm.gcroot(i8** %r3735, i8* null)
%r3423 = bitcast i8** %r3735 to i64*
%r3738 = alloca i8*
call void @llvm.gcroot(i8** %r3738, i8* null)
%r3736 = bitcast i8** %r3738 to i64*
%r3737 = add i64 0, 0
store i64 %r3737, i64* %r3736
%r3734 = call i64 @make-procedure(i64 (i64*)* @f83, i64* %env, i64* %r3736)
store i64 %r3734, i64* %r3423
%r3740 = alloca i8*
call void @llvm.gcroot(i8** %r3740, i8* null)
%r3422 = bitcast i8** %r3740 to i64*
%r3743 = alloca i8*
call void @llvm.gcroot(i8** %r3743, i8* null)
%r3741 = bitcast i8** %r3743 to i64*
%r3742 = add i64 0, 0
store i64 %r3742, i64* %r3741
%r3746 = alloca i8*
call void @llvm.gcroot(i8** %r3746, i8* null)
%r3744 = bitcast i8** %r3746 to i64*
%r3745 = add i64 0, 44
store i64 %r3745, i64* %r3744
%r3739 = call i64 @f37(i64* %env, i64* %r3741, i64* %r3744, i64* %r3423) ; @set-variable!
store i64 %r3739, i64* %r3422
%r3829 = alloca i8*
call void @llvm.gcroot(i8** %r3829, i8* null)
%r3748 = bitcast i8** %r3829 to i64*
%r3832 = alloca i8*
call void @llvm.gcroot(i8** %r3832, i8* null)
%r3830 = bitcast i8** %r3832 to i64*
%r3831 = add i64 0, 0
store i64 %r3831, i64* %r3830
%r3828 = call i64 @make-procedure(i64 (i64*)* @f85, i64* %env, i64* %r3830)
store i64 %r3828, i64* %r3748
%r3834 = alloca i8*
call void @llvm.gcroot(i8** %r3834, i8* null)
%r3747 = bitcast i8** %r3834 to i64*
%r3837 = alloca i8*
call void @llvm.gcroot(i8** %r3837, i8* null)
%r3835 = bitcast i8** %r3837 to i64*
%r3836 = add i64 0, 0
store i64 %r3836, i64* %r3835
%r3840 = alloca i8*
call void @llvm.gcroot(i8** %r3840, i8* null)
%r3838 = bitcast i8** %r3840 to i64*
%r3839 = add i64 0, 48
store i64 %r3839, i64* %r3838
%r3833 = call i64 @f37(i64* %env, i64* %r3835, i64* %r3838, i64* %r3748) ; @set-variable!
store i64 %r3833, i64* %r3747
%r3855 = alloca i8*
call void @llvm.gcroot(i8** %r3855, i8* null)
%r3842 = bitcast i8** %r3855 to i64*
%r3858 = alloca i8*
call void @llvm.gcroot(i8** %r3858, i8* null)
%r3856 = bitcast i8** %r3858 to i64*
%r3857 = add i64 0, 4
store i64 %r3857, i64* %r3856
%r3854 = call i64 @make-procedure(i64 (i64*)* @f87, i64* %env, i64* %r3856)
store i64 %r3854, i64* %r3842
%r3860 = alloca i8*
call void @llvm.gcroot(i8** %r3860, i8* null)
%r3841 = bitcast i8** %r3860 to i64*
%r3863 = alloca i8*
call void @llvm.gcroot(i8** %r3863, i8* null)
%r3861 = bitcast i8** %r3863 to i64*
%r3862 = add i64 0, 0
store i64 %r3862, i64* %r3861
%r3866 = alloca i8*
call void @llvm.gcroot(i8** %r3866, i8* null)
%r3864 = bitcast i8** %r3866 to i64*
%r3865 = add i64 0, 52
store i64 %r3865, i64* %r3864
%r3859 = call i64 @f37(i64* %env, i64* %r3861, i64* %r3864, i64* %r3842) ; @set-variable!
store i64 %r3859, i64* %r3841
%r4018 = alloca i8*
call void @llvm.gcroot(i8** %r4018, i8* null)
%r3868 = bitcast i8** %r4018 to i64*
%r4021 = alloca i8*
call void @llvm.gcroot(i8** %r4021, i8* null)
%r4019 = bitcast i8** %r4021 to i64*
%r4020 = add i64 0, 0
store i64 %r4020, i64* %r4019
%r4017 = call i64 @make-procedure(i64 (i64*)* @f89, i64* %env, i64* %r4019)
store i64 %r4017, i64* %r3868
%r4023 = alloca i8*
call void @llvm.gcroot(i8** %r4023, i8* null)
%r3867 = bitcast i8** %r4023 to i64*
%r4026 = alloca i8*
call void @llvm.gcroot(i8** %r4026, i8* null)
%r4024 = bitcast i8** %r4026 to i64*
%r4025 = add i64 0, 0
store i64 %r4025, i64* %r4024
%r4029 = alloca i8*
call void @llvm.gcroot(i8** %r4029, i8* null)
%r4027 = bitcast i8** %r4029 to i64*
%r4028 = add i64 0, 56
store i64 %r4028, i64* %r4027
%r4022 = call i64 @f37(i64* %env, i64* %r4024, i64* %r4027, i64* %r3868) ; @set-variable!
store i64 %r4022, i64* %r3867
%r4125 = alloca i8*
call void @llvm.gcroot(i8** %r4125, i8* null)
%r4031 = bitcast i8** %r4125 to i64*
%r4128 = alloca i8*
call void @llvm.gcroot(i8** %r4128, i8* null)
%r4126 = bitcast i8** %r4128 to i64*
%r4127 = add i64 0, 0
store i64 %r4127, i64* %r4126
%r4124 = call i64 @make-procedure(i64 (i64*)* @f91, i64* %env, i64* %r4126)
store i64 %r4124, i64* %r4031
%r4130 = alloca i8*
call void @llvm.gcroot(i8** %r4130, i8* null)
%r4030 = bitcast i8** %r4130 to i64*
%r4133 = alloca i8*
call void @llvm.gcroot(i8** %r4133, i8* null)
%r4131 = bitcast i8** %r4133 to i64*
%r4132 = add i64 0, 0
store i64 %r4132, i64* %r4131
%r4136 = alloca i8*
call void @llvm.gcroot(i8** %r4136, i8* null)
%r4134 = bitcast i8** %r4136 to i64*
%r4135 = add i64 0, 60
store i64 %r4135, i64* %r4134
%r4129 = call i64 @f37(i64* %env, i64* %r4131, i64* %r4134, i64* %r4031) ; @set-variable!
store i64 %r4129, i64* %r4030
%r4140 = alloca i8*
call void @llvm.gcroot(i8** %r4140, i8* null)
%r4138 = bitcast i8** %r4140 to i64*
%r4139 = call i64 @make-null() ; @make-null
store i64 %r4139, i64* %r4138
%r4142 = alloca i8*
call void @llvm.gcroot(i8** %r4142, i8* null)
%r4137 = bitcast i8** %r4142 to i64*
%r4145 = alloca i8*
call void @llvm.gcroot(i8** %r4145, i8* null)
%r4143 = bitcast i8** %r4145 to i64*
%r4144 = add i64 0, 0
store i64 %r4144, i64* %r4143
%r4148 = alloca i8*
call void @llvm.gcroot(i8** %r4148, i8* null)
%r4146 = bitcast i8** %r4148 to i64*
%r4147 = add i64 0, 64
store i64 %r4147, i64* %r4146
%r4141 = call i64 @f37(i64* %env, i64* %r4143, i64* %r4146, i64* %r4138) ; @set-variable!
store i64 %r4141, i64* %r4137
%r4198 = alloca i8*
call void @llvm.gcroot(i8** %r4198, i8* null)
%r4150 = bitcast i8** %r4198 to i64*
%r4201 = alloca i8*
call void @llvm.gcroot(i8** %r4201, i8* null)
%r4199 = bitcast i8** %r4201 to i64*
%r4200 = add i64 0, 0
store i64 %r4200, i64* %r4199
%r4197 = call i64 @make-procedure(i64 (i64*)* @f93, i64* %env, i64* %r4199)
store i64 %r4197, i64* %r4150
%r4203 = alloca i8*
call void @llvm.gcroot(i8** %r4203, i8* null)
%r4149 = bitcast i8** %r4203 to i64*
%r4206 = alloca i8*
call void @llvm.gcroot(i8** %r4206, i8* null)
%r4204 = bitcast i8** %r4206 to i64*
%r4205 = add i64 0, 0
store i64 %r4205, i64* %r4204
%r4209 = alloca i8*
call void @llvm.gcroot(i8** %r4209, i8* null)
%r4207 = bitcast i8** %r4209 to i64*
%r4208 = add i64 0, 68
store i64 %r4208, i64* %r4207
%r4202 = call i64 @f37(i64* %env, i64* %r4204, i64* %r4207, i64* %r4150) ; @set-variable!
store i64 %r4202, i64* %r4149
%r4281 = alloca i8*
call void @llvm.gcroot(i8** %r4281, i8* null)
%r4211 = bitcast i8** %r4281 to i64*
%r4284 = alloca i8*
call void @llvm.gcroot(i8** %r4284, i8* null)
%r4282 = bitcast i8** %r4284 to i64*
%r4283 = add i64 0, 0
store i64 %r4283, i64* %r4282
%r4280 = call i64 @make-procedure(i64 (i64*)* @f97, i64* %env, i64* %r4282)
store i64 %r4280, i64* %r4211
%r4286 = alloca i8*
call void @llvm.gcroot(i8** %r4286, i8* null)
%r4210 = bitcast i8** %r4286 to i64*
%r4289 = alloca i8*
call void @llvm.gcroot(i8** %r4289, i8* null)
%r4287 = bitcast i8** %r4289 to i64*
%r4288 = add i64 0, 0
store i64 %r4288, i64* %r4287
%r4292 = alloca i8*
call void @llvm.gcroot(i8** %r4292, i8* null)
%r4290 = bitcast i8** %r4292 to i64*
%r4291 = add i64 0, 72
store i64 %r4291, i64* %r4290
%r4285 = call i64 @f37(i64* %env, i64* %r4287, i64* %r4290, i64* %r4211) ; @set-variable!
store i64 %r4285, i64* %r4210
%r4298 = alloca i8*
call void @llvm.gcroot(i8** %r4298, i8* null)
%r4295 = bitcast i8** %r4298 to i64*
%r4297 = add i64 0, 192
store i64 %r4297, i64* %r4295
%r4302 = alloca i8*
call void @llvm.gcroot(i8** %r4302, i8* null)
%r4299 = bitcast i8** %r4302 to i64*
%r4301 = add i64 0, 196
store i64 %r4301, i64* %r4299
%r4306 = alloca i8*
call void @llvm.gcroot(i8** %r4306, i8* null)
%r4303 = bitcast i8** %r4306 to i64*
%r4305 = add i64 0, 200
store i64 %r4305, i64* %r4303
%r4310 = alloca i8*
call void @llvm.gcroot(i8** %r4310, i8* null)
%r4307 = bitcast i8** %r4310 to i64*
%r4309 = add i64 0, 204
store i64 %r4309, i64* %r4307
%r4314 = alloca i8*
call void @llvm.gcroot(i8** %r4314, i8* null)
%r4311 = bitcast i8** %r4314 to i64*
%r4313 = add i64 0, 208
store i64 %r4313, i64* %r4311
%r4318 = alloca i8*
call void @llvm.gcroot(i8** %r4318, i8* null)
%r4315 = bitcast i8** %r4318 to i64*
%r4317 = add i64 0, 212
store i64 %r4317, i64* %r4315
%r4322 = alloca i8*
call void @llvm.gcroot(i8** %r4322, i8* null)
%r4319 = bitcast i8** %r4322 to i64*
%r4321 = add i64 0, 216
store i64 %r4321, i64* %r4319
%r4326 = alloca i8*
call void @llvm.gcroot(i8** %r4326, i8* null)
%r4323 = bitcast i8** %r4326 to i64*
%r4325 = add i64 0, 220
store i64 %r4325, i64* %r4323
%r4330 = alloca i8*
call void @llvm.gcroot(i8** %r4330, i8* null)
%r4327 = bitcast i8** %r4330 to i64*
%r4329 = add i64 0, 224
store i64 %r4329, i64* %r4327
%r4334 = alloca i8*
call void @llvm.gcroot(i8** %r4334, i8* null)
%r4331 = bitcast i8** %r4334 to i64*
%r4333 = add i64 0, 228
store i64 %r4333, i64* %r4331
%r4336 = alloca i8*
call void @llvm.gcroot(i8** %r4336, i8* null)
%r4332 = bitcast i8** %r4336 to i64*
%r4335 = call i64 @make-null() ; @make-null
store i64 %r4335, i64* %r4332
%r4338 = alloca i8*
call void @llvm.gcroot(i8** %r4338, i8* null)
%r4328 = bitcast i8** %r4338 to i64*
%r4337 = call i64 @f21(i64* %r4331, i64* %r4332) ; @cons
store i64 %r4337, i64* %r4328
%r4340 = alloca i8*
call void @llvm.gcroot(i8** %r4340, i8* null)
%r4324 = bitcast i8** %r4340 to i64*
%r4339 = call i64 @f21(i64* %r4327, i64* %r4328) ; @cons
store i64 %r4339, i64* %r4324
%r4342 = alloca i8*
call void @llvm.gcroot(i8** %r4342, i8* null)
%r4320 = bitcast i8** %r4342 to i64*
%r4341 = call i64 @f21(i64* %r4323, i64* %r4324) ; @cons
store i64 %r4341, i64* %r4320
%r4344 = alloca i8*
call void @llvm.gcroot(i8** %r4344, i8* null)
%r4316 = bitcast i8** %r4344 to i64*
%r4343 = call i64 @f21(i64* %r4319, i64* %r4320) ; @cons
store i64 %r4343, i64* %r4316
%r4346 = alloca i8*
call void @llvm.gcroot(i8** %r4346, i8* null)
%r4312 = bitcast i8** %r4346 to i64*
%r4345 = call i64 @f21(i64* %r4315, i64* %r4316) ; @cons
store i64 %r4345, i64* %r4312
%r4348 = alloca i8*
call void @llvm.gcroot(i8** %r4348, i8* null)
%r4308 = bitcast i8** %r4348 to i64*
%r4347 = call i64 @f21(i64* %r4311, i64* %r4312) ; @cons
store i64 %r4347, i64* %r4308
%r4350 = alloca i8*
call void @llvm.gcroot(i8** %r4350, i8* null)
%r4304 = bitcast i8** %r4350 to i64*
%r4349 = call i64 @f21(i64* %r4307, i64* %r4308) ; @cons
store i64 %r4349, i64* %r4304
%r4352 = alloca i8*
call void @llvm.gcroot(i8** %r4352, i8* null)
%r4300 = bitcast i8** %r4352 to i64*
%r4351 = call i64 @f21(i64* %r4303, i64* %r4304) ; @cons
store i64 %r4351, i64* %r4300
%r4354 = alloca i8*
call void @llvm.gcroot(i8** %r4354, i8* null)
%r4296 = bitcast i8** %r4354 to i64*
%r4353 = call i64 @f21(i64* %r4299, i64* %r4300) ; @cons
store i64 %r4353, i64* %r4296
%r4356 = alloca i8*
call void @llvm.gcroot(i8** %r4356, i8* null)
%r4294 = bitcast i8** %r4356 to i64*
%r4355 = call i64 @f21(i64* %r4295, i64* %r4296) ; @cons
store i64 %r4355, i64* %r4294
%r4358 = alloca i8*
call void @llvm.gcroot(i8** %r4358, i8* null)
%r4293 = bitcast i8** %r4358 to i64*
%r4361 = alloca i8*
call void @llvm.gcroot(i8** %r4361, i8* null)
%r4359 = bitcast i8** %r4361 to i64*
%r4360 = add i64 0, 0
store i64 %r4360, i64* %r4359
%r4364 = alloca i8*
call void @llvm.gcroot(i8** %r4364, i8* null)
%r4362 = bitcast i8** %r4364 to i64*
%r4363 = add i64 0, 76
store i64 %r4363, i64* %r4362
%r4357 = call i64 @f37(i64* %env, i64* %r4359, i64* %r4362, i64* %r4294) ; @set-variable!
store i64 %r4357, i64* %r4293
%r4467 = alloca i8*
call void @llvm.gcroot(i8** %r4467, i8* null)
%r4366 = bitcast i8** %r4467 to i64*
%r4470 = alloca i8*
call void @llvm.gcroot(i8** %r4470, i8* null)
%r4468 = bitcast i8** %r4470 to i64*
%r4469 = add i64 0, 0
store i64 %r4469, i64* %r4468
%r4466 = call i64 @make-procedure(i64 (i64*)* @f99, i64* %env, i64* %r4468)
store i64 %r4466, i64* %r4366
%r4472 = alloca i8*
call void @llvm.gcroot(i8** %r4472, i8* null)
%r4365 = bitcast i8** %r4472 to i64*
%r4475 = alloca i8*
call void @llvm.gcroot(i8** %r4475, i8* null)
%r4473 = bitcast i8** %r4475 to i64*
%r4474 = add i64 0, 0
store i64 %r4474, i64* %r4473
%r4478 = alloca i8*
call void @llvm.gcroot(i8** %r4478, i8* null)
%r4476 = bitcast i8** %r4478 to i64*
%r4477 = add i64 0, 80
store i64 %r4477, i64* %r4476
%r4471 = call i64 @f37(i64* %env, i64* %r4473, i64* %r4476, i64* %r4366) ; @set-variable!
store i64 %r4471, i64* %r4365
%r4537 = alloca i8*
call void @llvm.gcroot(i8** %r4537, i8* null)
%r4480 = bitcast i8** %r4537 to i64*
%r4540 = alloca i8*
call void @llvm.gcroot(i8** %r4540, i8* null)
%r4538 = bitcast i8** %r4540 to i64*
%r4539 = add i64 0, 0
store i64 %r4539, i64* %r4538
%r4536 = call i64 @make-procedure(i64 (i64*)* @f101, i64* %env, i64* %r4538)
store i64 %r4536, i64* %r4480
%r4542 = alloca i8*
call void @llvm.gcroot(i8** %r4542, i8* null)
%r4479 = bitcast i8** %r4542 to i64*
%r4545 = alloca i8*
call void @llvm.gcroot(i8** %r4545, i8* null)
%r4543 = bitcast i8** %r4545 to i64*
%r4544 = add i64 0, 0
store i64 %r4544, i64* %r4543
%r4548 = alloca i8*
call void @llvm.gcroot(i8** %r4548, i8* null)
%r4546 = bitcast i8** %r4548 to i64*
%r4547 = add i64 0, 84
store i64 %r4547, i64* %r4546
%r4541 = call i64 @f37(i64* %env, i64* %r4543, i64* %r4546, i64* %r4480) ; @set-variable!
store i64 %r4541, i64* %r4479
%r4601 = alloca i8*
call void @llvm.gcroot(i8** %r4601, i8* null)
%r4550 = bitcast i8** %r4601 to i64*
%r4604 = alloca i8*
call void @llvm.gcroot(i8** %r4604, i8* null)
%r4602 = bitcast i8** %r4604 to i64*
%r4603 = add i64 0, 0
store i64 %r4603, i64* %r4602
%r4600 = call i64 @make-procedure(i64 (i64*)* @f103, i64* %env, i64* %r4602)
store i64 %r4600, i64* %r4550
%r4606 = alloca i8*
call void @llvm.gcroot(i8** %r4606, i8* null)
%r4549 = bitcast i8** %r4606 to i64*
%r4609 = alloca i8*
call void @llvm.gcroot(i8** %r4609, i8* null)
%r4607 = bitcast i8** %r4609 to i64*
%r4608 = add i64 0, 0
store i64 %r4608, i64* %r4607
%r4612 = alloca i8*
call void @llvm.gcroot(i8** %r4612, i8* null)
%r4610 = bitcast i8** %r4612 to i64*
%r4611 = add i64 0, 88
store i64 %r4611, i64* %r4610
%r4605 = call i64 @f37(i64* %env, i64* %r4607, i64* %r4610, i64* %r4550) ; @set-variable!
store i64 %r4605, i64* %r4549
%r4665 = alloca i8*
call void @llvm.gcroot(i8** %r4665, i8* null)
%r4614 = bitcast i8** %r4665 to i64*
%r4668 = alloca i8*
call void @llvm.gcroot(i8** %r4668, i8* null)
%r4666 = bitcast i8** %r4668 to i64*
%r4667 = add i64 0, 0
store i64 %r4667, i64* %r4666
%r4664 = call i64 @make-procedure(i64 (i64*)* @f105, i64* %env, i64* %r4666)
store i64 %r4664, i64* %r4614
%r4670 = alloca i8*
call void @llvm.gcroot(i8** %r4670, i8* null)
%r4613 = bitcast i8** %r4670 to i64*
%r4673 = alloca i8*
call void @llvm.gcroot(i8** %r4673, i8* null)
%r4671 = bitcast i8** %r4673 to i64*
%r4672 = add i64 0, 0
store i64 %r4672, i64* %r4671
%r4676 = alloca i8*
call void @llvm.gcroot(i8** %r4676, i8* null)
%r4674 = bitcast i8** %r4676 to i64*
%r4675 = add i64 0, 92
store i64 %r4675, i64* %r4674
%r4669 = call i64 @f37(i64* %env, i64* %r4671, i64* %r4674, i64* %r4614) ; @set-variable!
store i64 %r4669, i64* %r4613
%r4729 = alloca i8*
call void @llvm.gcroot(i8** %r4729, i8* null)
%r4678 = bitcast i8** %r4729 to i64*
%r4732 = alloca i8*
call void @llvm.gcroot(i8** %r4732, i8* null)
%r4730 = bitcast i8** %r4732 to i64*
%r4731 = add i64 0, 0
store i64 %r4731, i64* %r4730
%r4728 = call i64 @make-procedure(i64 (i64*)* @f107, i64* %env, i64* %r4730)
store i64 %r4728, i64* %r4678
%r4734 = alloca i8*
call void @llvm.gcroot(i8** %r4734, i8* null)
%r4677 = bitcast i8** %r4734 to i64*
%r4737 = alloca i8*
call void @llvm.gcroot(i8** %r4737, i8* null)
%r4735 = bitcast i8** %r4737 to i64*
%r4736 = add i64 0, 0
store i64 %r4736, i64* %r4735
%r4740 = alloca i8*
call void @llvm.gcroot(i8** %r4740, i8* null)
%r4738 = bitcast i8** %r4740 to i64*
%r4739 = add i64 0, 96
store i64 %r4739, i64* %r4738
%r4733 = call i64 @f37(i64* %env, i64* %r4735, i64* %r4738, i64* %r4678) ; @set-variable!
store i64 %r4733, i64* %r4677
%r4793 = alloca i8*
call void @llvm.gcroot(i8** %r4793, i8* null)
%r4742 = bitcast i8** %r4793 to i64*
%r4796 = alloca i8*
call void @llvm.gcroot(i8** %r4796, i8* null)
%r4794 = bitcast i8** %r4796 to i64*
%r4795 = add i64 0, 0
store i64 %r4795, i64* %r4794
%r4792 = call i64 @make-procedure(i64 (i64*)* @f109, i64* %env, i64* %r4794)
store i64 %r4792, i64* %r4742
%r4798 = alloca i8*
call void @llvm.gcroot(i8** %r4798, i8* null)
%r4741 = bitcast i8** %r4798 to i64*
%r4801 = alloca i8*
call void @llvm.gcroot(i8** %r4801, i8* null)
%r4799 = bitcast i8** %r4801 to i64*
%r4800 = add i64 0, 0
store i64 %r4800, i64* %r4799
%r4804 = alloca i8*
call void @llvm.gcroot(i8** %r4804, i8* null)
%r4802 = bitcast i8** %r4804 to i64*
%r4803 = add i64 0, 100
store i64 %r4803, i64* %r4802
%r4797 = call i64 @f37(i64* %env, i64* %r4799, i64* %r4802, i64* %r4742) ; @set-variable!
store i64 %r4797, i64* %r4741
%r4857 = alloca i8*
call void @llvm.gcroot(i8** %r4857, i8* null)
%r4806 = bitcast i8** %r4857 to i64*
%r4860 = alloca i8*
call void @llvm.gcroot(i8** %r4860, i8* null)
%r4858 = bitcast i8** %r4860 to i64*
%r4859 = add i64 0, 0
store i64 %r4859, i64* %r4858
%r4856 = call i64 @make-procedure(i64 (i64*)* @f111, i64* %env, i64* %r4858)
store i64 %r4856, i64* %r4806
%r4862 = alloca i8*
call void @llvm.gcroot(i8** %r4862, i8* null)
%r4805 = bitcast i8** %r4862 to i64*
%r4865 = alloca i8*
call void @llvm.gcroot(i8** %r4865, i8* null)
%r4863 = bitcast i8** %r4865 to i64*
%r4864 = add i64 0, 0
store i64 %r4864, i64* %r4863
%r4868 = alloca i8*
call void @llvm.gcroot(i8** %r4868, i8* null)
%r4866 = bitcast i8** %r4868 to i64*
%r4867 = add i64 0, 104
store i64 %r4867, i64* %r4866
%r4861 = call i64 @f37(i64* %env, i64* %r4863, i64* %r4866, i64* %r4806) ; @set-variable!
store i64 %r4861, i64* %r4805
%r4921 = alloca i8*
call void @llvm.gcroot(i8** %r4921, i8* null)
%r4870 = bitcast i8** %r4921 to i64*
%r4924 = alloca i8*
call void @llvm.gcroot(i8** %r4924, i8* null)
%r4922 = bitcast i8** %r4924 to i64*
%r4923 = add i64 0, 0
store i64 %r4923, i64* %r4922
%r4920 = call i64 @make-procedure(i64 (i64*)* @f113, i64* %env, i64* %r4922)
store i64 %r4920, i64* %r4870
%r4926 = alloca i8*
call void @llvm.gcroot(i8** %r4926, i8* null)
%r4869 = bitcast i8** %r4926 to i64*
%r4929 = alloca i8*
call void @llvm.gcroot(i8** %r4929, i8* null)
%r4927 = bitcast i8** %r4929 to i64*
%r4928 = add i64 0, 0
store i64 %r4928, i64* %r4927
%r4932 = alloca i8*
call void @llvm.gcroot(i8** %r4932, i8* null)
%r4930 = bitcast i8** %r4932 to i64*
%r4931 = add i64 0, 108
store i64 %r4931, i64* %r4930
%r4925 = call i64 @f37(i64* %env, i64* %r4927, i64* %r4930, i64* %r4870) ; @set-variable!
store i64 %r4925, i64* %r4869
%r4985 = alloca i8*
call void @llvm.gcroot(i8** %r4985, i8* null)
%r4934 = bitcast i8** %r4985 to i64*
%r4988 = alloca i8*
call void @llvm.gcroot(i8** %r4988, i8* null)
%r4986 = bitcast i8** %r4988 to i64*
%r4987 = add i64 0, 0
store i64 %r4987, i64* %r4986
%r4984 = call i64 @make-procedure(i64 (i64*)* @f115, i64* %env, i64* %r4986)
store i64 %r4984, i64* %r4934
%r4990 = alloca i8*
call void @llvm.gcroot(i8** %r4990, i8* null)
%r4933 = bitcast i8** %r4990 to i64*
%r4993 = alloca i8*
call void @llvm.gcroot(i8** %r4993, i8* null)
%r4991 = bitcast i8** %r4993 to i64*
%r4992 = add i64 0, 0
store i64 %r4992, i64* %r4991
%r4996 = alloca i8*
call void @llvm.gcroot(i8** %r4996, i8* null)
%r4994 = bitcast i8** %r4996 to i64*
%r4995 = add i64 0, 112
store i64 %r4995, i64* %r4994
%r4989 = call i64 @f37(i64* %env, i64* %r4991, i64* %r4994, i64* %r4934) ; @set-variable!
store i64 %r4989, i64* %r4933
%r5049 = alloca i8*
call void @llvm.gcroot(i8** %r5049, i8* null)
%r4998 = bitcast i8** %r5049 to i64*
%r5052 = alloca i8*
call void @llvm.gcroot(i8** %r5052, i8* null)
%r5050 = bitcast i8** %r5052 to i64*
%r5051 = add i64 0, 0
store i64 %r5051, i64* %r5050
%r5048 = call i64 @make-procedure(i64 (i64*)* @f117, i64* %env, i64* %r5050)
store i64 %r5048, i64* %r4998
%r5054 = alloca i8*
call void @llvm.gcroot(i8** %r5054, i8* null)
%r4997 = bitcast i8** %r5054 to i64*
%r5057 = alloca i8*
call void @llvm.gcroot(i8** %r5057, i8* null)
%r5055 = bitcast i8** %r5057 to i64*
%r5056 = add i64 0, 0
store i64 %r5056, i64* %r5055
%r5060 = alloca i8*
call void @llvm.gcroot(i8** %r5060, i8* null)
%r5058 = bitcast i8** %r5060 to i64*
%r5059 = add i64 0, 116
store i64 %r5059, i64* %r5058
%r5053 = call i64 @f37(i64* %env, i64* %r5055, i64* %r5058, i64* %r4998) ; @set-variable!
store i64 %r5053, i64* %r4997
%r5113 = alloca i8*
call void @llvm.gcroot(i8** %r5113, i8* null)
%r5062 = bitcast i8** %r5113 to i64*
%r5116 = alloca i8*
call void @llvm.gcroot(i8** %r5116, i8* null)
%r5114 = bitcast i8** %r5116 to i64*
%r5115 = add i64 0, 0
store i64 %r5115, i64* %r5114
%r5112 = call i64 @make-procedure(i64 (i64*)* @f119, i64* %env, i64* %r5114)
store i64 %r5112, i64* %r5062
%r5118 = alloca i8*
call void @llvm.gcroot(i8** %r5118, i8* null)
%r5061 = bitcast i8** %r5118 to i64*
%r5121 = alloca i8*
call void @llvm.gcroot(i8** %r5121, i8* null)
%r5119 = bitcast i8** %r5121 to i64*
%r5120 = add i64 0, 0
store i64 %r5120, i64* %r5119
%r5124 = alloca i8*
call void @llvm.gcroot(i8** %r5124, i8* null)
%r5122 = bitcast i8** %r5124 to i64*
%r5123 = add i64 0, 120
store i64 %r5123, i64* %r5122
%r5117 = call i64 @f37(i64* %env, i64* %r5119, i64* %r5122, i64* %r5062) ; @set-variable!
store i64 %r5117, i64* %r5061
%r5177 = alloca i8*
call void @llvm.gcroot(i8** %r5177, i8* null)
%r5126 = bitcast i8** %r5177 to i64*
%r5180 = alloca i8*
call void @llvm.gcroot(i8** %r5180, i8* null)
%r5178 = bitcast i8** %r5180 to i64*
%r5179 = add i64 0, 0
store i64 %r5179, i64* %r5178
%r5176 = call i64 @make-procedure(i64 (i64*)* @f121, i64* %env, i64* %r5178)
store i64 %r5176, i64* %r5126
%r5182 = alloca i8*
call void @llvm.gcroot(i8** %r5182, i8* null)
%r5125 = bitcast i8** %r5182 to i64*
%r5185 = alloca i8*
call void @llvm.gcroot(i8** %r5185, i8* null)
%r5183 = bitcast i8** %r5185 to i64*
%r5184 = add i64 0, 0
store i64 %r5184, i64* %r5183
%r5188 = alloca i8*
call void @llvm.gcroot(i8** %r5188, i8* null)
%r5186 = bitcast i8** %r5188 to i64*
%r5187 = add i64 0, 124
store i64 %r5187, i64* %r5186
%r5181 = call i64 @f37(i64* %env, i64* %r5183, i64* %r5186, i64* %r5126) ; @set-variable!
store i64 %r5181, i64* %r5125
%r5241 = alloca i8*
call void @llvm.gcroot(i8** %r5241, i8* null)
%r5190 = bitcast i8** %r5241 to i64*
%r5244 = alloca i8*
call void @llvm.gcroot(i8** %r5244, i8* null)
%r5242 = bitcast i8** %r5244 to i64*
%r5243 = add i64 0, 0
store i64 %r5243, i64* %r5242
%r5240 = call i64 @make-procedure(i64 (i64*)* @f123, i64* %env, i64* %r5242)
store i64 %r5240, i64* %r5190
%r5246 = alloca i8*
call void @llvm.gcroot(i8** %r5246, i8* null)
%r5189 = bitcast i8** %r5246 to i64*
%r5249 = alloca i8*
call void @llvm.gcroot(i8** %r5249, i8* null)
%r5247 = bitcast i8** %r5249 to i64*
%r5248 = add i64 0, 0
store i64 %r5248, i64* %r5247
%r5252 = alloca i8*
call void @llvm.gcroot(i8** %r5252, i8* null)
%r5250 = bitcast i8** %r5252 to i64*
%r5251 = add i64 0, 128
store i64 %r5251, i64* %r5250
%r5245 = call i64 @f37(i64* %env, i64* %r5247, i64* %r5250, i64* %r5190) ; @set-variable!
store i64 %r5245, i64* %r5189
%r5258 = alloca i8*
call void @llvm.gcroot(i8** %r5258, i8* null)
%r5255 = bitcast i8** %r5258 to i64*
%r5257 = add i64 0, 160
store i64 %r5257, i64* %r5255
%r5262 = alloca i8*
call void @llvm.gcroot(i8** %r5262, i8* null)
%r5259 = bitcast i8** %r5262 to i64*
%r5261 = add i64 0, 164
store i64 %r5261, i64* %r5259
%r5266 = alloca i8*
call void @llvm.gcroot(i8** %r5266, i8* null)
%r5263 = bitcast i8** %r5266 to i64*
%r5265 = add i64 0, 128
store i64 %r5265, i64* %r5263
%r5270 = alloca i8*
call void @llvm.gcroot(i8** %r5270, i8* null)
%r5267 = bitcast i8** %r5270 to i64*
%r5269 = add i64 0, 40
store i64 %r5269, i64* %r5267
%r5272 = alloca i8*
call void @llvm.gcroot(i8** %r5272, i8* null)
%r5268 = bitcast i8** %r5272 to i64*
%r5271 = call i64 @make-null() ; @make-null
store i64 %r5271, i64* %r5268
%r5274 = alloca i8*
call void @llvm.gcroot(i8** %r5274, i8* null)
%r5264 = bitcast i8** %r5274 to i64*
%r5273 = call i64 @f21(i64* %r5267, i64* %r5268) ; @cons
store i64 %r5273, i64* %r5264
%r5276 = alloca i8*
call void @llvm.gcroot(i8** %r5276, i8* null)
%r5260 = bitcast i8** %r5276 to i64*
%r5275 = call i64 @f21(i64* %r5263, i64* %r5264) ; @cons
store i64 %r5275, i64* %r5260
%r5278 = alloca i8*
call void @llvm.gcroot(i8** %r5278, i8* null)
%r5256 = bitcast i8** %r5278 to i64*
%r5277 = call i64 @f21(i64* %r5259, i64* %r5260) ; @cons
store i64 %r5277, i64* %r5256
%r5280 = alloca i8*
call void @llvm.gcroot(i8** %r5280, i8* null)
%r5254 = bitcast i8** %r5280 to i64*
%r5279 = call i64 @f21(i64* %r5255, i64* %r5256) ; @cons
store i64 %r5279, i64* %r5254
%r5282 = alloca i8*
call void @llvm.gcroot(i8** %r5282, i8* null)
%r5253 = bitcast i8** %r5282 to i64*
%r5285 = alloca i8*
call void @llvm.gcroot(i8** %r5285, i8* null)
%r5283 = bitcast i8** %r5285 to i64*
%r5284 = add i64 0, 0
store i64 %r5284, i64* %r5283
%r5288 = alloca i8*
call void @llvm.gcroot(i8** %r5288, i8* null)
%r5286 = bitcast i8** %r5288 to i64*
%r5287 = add i64 0, 132
store i64 %r5287, i64* %r5286
%r5281 = call i64 @f37(i64* %env, i64* %r5283, i64* %r5286, i64* %r5254) ; @set-variable!
store i64 %r5281, i64* %r5253
%r5923 = alloca i8*
call void @llvm.gcroot(i8** %r5923, i8* null)
%r5290 = bitcast i8** %r5923 to i64*
%r5926 = alloca i8*
call void @llvm.gcroot(i8** %r5926, i8* null)
%r5924 = bitcast i8** %r5926 to i64*
%r5925 = add i64 0, 0
store i64 %r5925, i64* %r5924
%r5922 = call i64 @make-procedure(i64 (i64*)* @f127, i64* %env, i64* %r5924)
store i64 %r5922, i64* %r5290
%r5928 = alloca i8*
call void @llvm.gcroot(i8** %r5928, i8* null)
%r5289 = bitcast i8** %r5928 to i64*
%r5931 = alloca i8*
call void @llvm.gcroot(i8** %r5931, i8* null)
%r5929 = bitcast i8** %r5931 to i64*
%r5930 = add i64 0, 0
store i64 %r5930, i64* %r5929
%r5934 = alloca i8*
call void @llvm.gcroot(i8** %r5934, i8* null)
%r5932 = bitcast i8** %r5934 to i64*
%r5933 = add i64 0, 136
store i64 %r5933, i64* %r5932
%r5927 = call i64 @f37(i64* %env, i64* %r5929, i64* %r5932, i64* %r5290) ; @set-variable!
store i64 %r5927, i64* %r5289
%r5994 = alloca i8*
call void @llvm.gcroot(i8** %r5994, i8* null)
%r5936 = bitcast i8** %r5994 to i64*
%r5997 = alloca i8*
call void @llvm.gcroot(i8** %r5997, i8* null)
%r5995 = bitcast i8** %r5997 to i64*
%r5996 = add i64 0, 0
store i64 %r5996, i64* %r5995
%r5993 = call i64 @make-procedure(i64 (i64*)* @f129, i64* %env, i64* %r5995)
store i64 %r5993, i64* %r5936
%r5999 = alloca i8*
call void @llvm.gcroot(i8** %r5999, i8* null)
%r5935 = bitcast i8** %r5999 to i64*
%r6002 = alloca i8*
call void @llvm.gcroot(i8** %r6002, i8* null)
%r6000 = bitcast i8** %r6002 to i64*
%r6001 = add i64 0, 0
store i64 %r6001, i64* %r6000
%r6005 = alloca i8*
call void @llvm.gcroot(i8** %r6005, i8* null)
%r6003 = bitcast i8** %r6005 to i64*
%r6004 = add i64 0, 140
store i64 %r6004, i64* %r6003
%r5998 = call i64 @f37(i64* %env, i64* %r6000, i64* %r6003, i64* %r5936) ; @set-variable!
store i64 %r5998, i64* %r5935
%r6104 = alloca i8*
call void @llvm.gcroot(i8** %r6104, i8* null)
%r6007 = bitcast i8** %r6104 to i64*
%r6107 = alloca i8*
call void @llvm.gcroot(i8** %r6107, i8* null)
%r6105 = bitcast i8** %r6107 to i64*
%r6106 = add i64 0, 0
store i64 %r6106, i64* %r6105
%r6103 = call i64 @make-procedure(i64 (i64*)* @f131, i64* %env, i64* %r6105)
store i64 %r6103, i64* %r6007
%r6109 = alloca i8*
call void @llvm.gcroot(i8** %r6109, i8* null)
%r6006 = bitcast i8** %r6109 to i64*
%r6112 = alloca i8*
call void @llvm.gcroot(i8** %r6112, i8* null)
%r6110 = bitcast i8** %r6112 to i64*
%r6111 = add i64 0, 0
store i64 %r6111, i64* %r6110
%r6115 = alloca i8*
call void @llvm.gcroot(i8** %r6115, i8* null)
%r6113 = bitcast i8** %r6115 to i64*
%r6114 = add i64 0, 144
store i64 %r6114, i64* %r6113
%r6108 = call i64 @f37(i64* %env, i64* %r6110, i64* %r6113, i64* %r6007) ; @set-variable!
store i64 %r6108, i64* %r6006
%r7011 = alloca i8*
call void @llvm.gcroot(i8** %r7011, i8* null)
%r6117 = bitcast i8** %r7011 to i64*
%r7014 = alloca i8*
call void @llvm.gcroot(i8** %r7014, i8* null)
%r7012 = bitcast i8** %r7014 to i64*
%r7013 = add i64 0, 0
store i64 %r7013, i64* %r7012
%r7010 = call i64 @make-procedure(i64 (i64*)* @f135, i64* %env, i64* %r7012)
store i64 %r7010, i64* %r6117
%r7016 = alloca i8*
call void @llvm.gcroot(i8** %r7016, i8* null)
%r6116 = bitcast i8** %r7016 to i64*
%r7019 = alloca i8*
call void @llvm.gcroot(i8** %r7019, i8* null)
%r7017 = bitcast i8** %r7019 to i64*
%r7018 = add i64 0, 0
store i64 %r7018, i64* %r7017
%r7022 = alloca i8*
call void @llvm.gcroot(i8** %r7022, i8* null)
%r7020 = bitcast i8** %r7022 to i64*
%r7021 = add i64 0, 148
store i64 %r7021, i64* %r7020
%r7015 = call i64 @f37(i64* %env, i64* %r7017, i64* %r7020, i64* %r6117) ; @set-variable!
store i64 %r7015, i64* %r6116
%r7316 = alloca i8*
call void @llvm.gcroot(i8** %r7316, i8* null)
%r7024 = bitcast i8** %r7316 to i64*
%r7319 = alloca i8*
call void @llvm.gcroot(i8** %r7319, i8* null)
%r7317 = bitcast i8** %r7319 to i64*
%r7318 = add i64 0, 0
store i64 %r7318, i64* %r7317
%r7315 = call i64 @make-procedure(i64 (i64*)* @f141, i64* %env, i64* %r7317)
store i64 %r7315, i64* %r7024
%r7321 = alloca i8*
call void @llvm.gcroot(i8** %r7321, i8* null)
%r7023 = bitcast i8** %r7321 to i64*
%r7324 = alloca i8*
call void @llvm.gcroot(i8** %r7324, i8* null)
%r7322 = bitcast i8** %r7324 to i64*
%r7323 = add i64 0, 0
store i64 %r7323, i64* %r7322
%r7327 = alloca i8*
call void @llvm.gcroot(i8** %r7327, i8* null)
%r7325 = bitcast i8** %r7327 to i64*
%r7326 = add i64 0, 152
store i64 %r7326, i64* %r7325
%r7320 = call i64 @f37(i64* %env, i64* %r7322, i64* %r7325, i64* %r7024) ; @set-variable!
store i64 %r7320, i64* %r7023
%r7585 = alloca i8*
call void @llvm.gcroot(i8** %r7585, i8* null)
%r7329 = bitcast i8** %r7585 to i64*
%r7588 = alloca i8*
call void @llvm.gcroot(i8** %r7588, i8* null)
%r7586 = bitcast i8** %r7588 to i64*
%r7587 = add i64 0, 0
store i64 %r7587, i64* %r7586
%r7584 = call i64 @make-procedure(i64 (i64*)* @f149, i64* %env, i64* %r7586)
store i64 %r7584, i64* %r7329
%r7590 = alloca i8*
call void @llvm.gcroot(i8** %r7590, i8* null)
%r7328 = bitcast i8** %r7590 to i64*
%r7593 = alloca i8*
call void @llvm.gcroot(i8** %r7593, i8* null)
%r7591 = bitcast i8** %r7593 to i64*
%r7592 = add i64 0, 0
store i64 %r7592, i64* %r7591
%r7596 = alloca i8*
call void @llvm.gcroot(i8** %r7596, i8* null)
%r7594 = bitcast i8** %r7596 to i64*
%r7595 = add i64 0, 156
store i64 %r7595, i64* %r7594
%r7589 = call i64 @f37(i64* %env, i64* %r7591, i64* %r7594, i64* %r7329) ; @set-variable!
store i64 %r7589, i64* %r7328
%r7835 = alloca i8*
call void @llvm.gcroot(i8** %r7835, i8* null)
%r7598 = bitcast i8** %r7835 to i64*
%r7838 = alloca i8*
call void @llvm.gcroot(i8** %r7838, i8* null)
%r7836 = bitcast i8** %r7838 to i64*
%r7837 = add i64 0, 0
store i64 %r7837, i64* %r7836
%r7834 = call i64 @make-procedure(i64 (i64*)* @f155, i64* %env, i64* %r7836)
store i64 %r7834, i64* %r7598
%r7840 = alloca i8*
call void @llvm.gcroot(i8** %r7840, i8* null)
%r7597 = bitcast i8** %r7840 to i64*
%r7843 = alloca i8*
call void @llvm.gcroot(i8** %r7843, i8* null)
%r7841 = bitcast i8** %r7843 to i64*
%r7842 = add i64 0, 0
store i64 %r7842, i64* %r7841
%r7846 = alloca i8*
call void @llvm.gcroot(i8** %r7846, i8* null)
%r7844 = bitcast i8** %r7846 to i64*
%r7845 = add i64 0, 160
store i64 %r7845, i64* %r7844
%r7839 = call i64 @f37(i64* %env, i64* %r7841, i64* %r7844, i64* %r7598) ; @set-variable!
store i64 %r7839, i64* %r7597
%r8166 = alloca i8*
call void @llvm.gcroot(i8** %r8166, i8* null)
%r7848 = bitcast i8** %r8166 to i64*
%r8169 = alloca i8*
call void @llvm.gcroot(i8** %r8169, i8* null)
%r8167 = bitcast i8** %r8169 to i64*
%r8168 = add i64 0, 0
store i64 %r8168, i64* %r8167
%r8165 = call i64 @make-procedure(i64 (i64*)* @f163, i64* %env, i64* %r8167)
store i64 %r8165, i64* %r7848
%r8171 = alloca i8*
call void @llvm.gcroot(i8** %r8171, i8* null)
%r7847 = bitcast i8** %r8171 to i64*
%r8174 = alloca i8*
call void @llvm.gcroot(i8** %r8174, i8* null)
%r8172 = bitcast i8** %r8174 to i64*
%r8173 = add i64 0, 0
store i64 %r8173, i64* %r8172
%r8177 = alloca i8*
call void @llvm.gcroot(i8** %r8177, i8* null)
%r8175 = bitcast i8** %r8177 to i64*
%r8176 = add i64 0, 164
store i64 %r8176, i64* %r8175
%r8170 = call i64 @f37(i64* %env, i64* %r8172, i64* %r8175, i64* %r7848) ; @set-variable!
store i64 %r8170, i64* %r7847
%r8182 = ptrtoint [12 x i8]* @g8181 to i64
%r8184 = alloca i8*
call void @llvm.gcroot(i8** %r8184, i8* null)
%r8180 = bitcast i8** %r8184 to i64*
%r8187 = alloca i8*
call void @llvm.gcroot(i8** %r8187, i8* null)
%r8185 = bitcast i8** %r8187 to i64*
%r8186 = add i64 0, 44
store i64 %r8186, i64* %r8185
%r8190 = alloca i8*
call void @llvm.gcroot(i8** %r8190, i8* null)
%r8188 = bitcast i8** %r8190 to i64*
%r8189 = add i64 0, 0
store i64 %r8189, i64* %r8188
%r8183 = call i64 @make-string-or-symbol(i64 %r8182, i64* %r8185, i64* %r8188)
store i64 %r8183, i64* %r8180
%r8192 = alloca i8*
call void @llvm.gcroot(i8** %r8192, i8* null)
%r8179 = bitcast i8** %r8192 to i64*
%r8191 = call i64 @f51(i64* %r8180) ; @display
store i64 %r8191, i64* %r8179
%r8199 = alloca i8*
call void @llvm.gcroot(i8** %r8199, i8* null)
%r8194 = bitcast i8** %r8199 to i64*
%r8202 = alloca i8*
call void @llvm.gcroot(i8** %r8202, i8* null)
%r8200 = bitcast i8** %r8202 to i64*
%r8201 = add i64 0, 0
store i64 %r8201, i64* %r8200
%r8205 = alloca i8*
call void @llvm.gcroot(i8** %r8205, i8* null)
%r8203 = bitcast i8** %r8205 to i64*
%r8204 = add i64 0, 8
store i64 %r8204, i64* %r8203
%r8198 = call i64 @f36(i64* %env, i64* %r8200, i64* %r8203) ; @lookup-variable
store i64 %r8198, i64* %r8194
%r8207 = alloca i8*
call void @llvm.gcroot(i8** %r8207, i8* null)
%r8195 = bitcast i8** %r8207 to i64*
%r8206 = call i64 @f18(i64* %r8194) ; @get-procedure-env
store i64 %r8206, i64* %r8195
%r8209 = alloca i8*
call void @llvm.gcroot(i8** %r8209, i8* null)
%r8197 = bitcast i8** %r8209 to i64*
%r8212 = alloca i8*
call void @llvm.gcroot(i8** %r8212, i8* null)
%r8210 = bitcast i8** %r8212 to i64*
%r8211 = add i64 0, 0
store i64 %r8211, i64* %r8210
%r8208 = call i64 @f17(i64* %r8210, i64* %r8195) ; @make-env
store i64 %r8208, i64* %r8197
%r8214 = alloca i8*
call void @llvm.gcroot(i8** %r8214, i8* null)
%r8196 = bitcast i8** %r8214 to i64*
%r8213 = call i64 @f19(i64* %r8194) ; @get-procedure-nparams
store i64 %r8213, i64* %r8196
%r8215 = call i64 @f23(i64* %r8196, i64* %r8197) ; @fix-arbitrary-procs
%r8217 = bitcast [20 x i8]* @g8216 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r8217, i32 1, i64* %r8197)
%r8219 = alloca i8*
call void @llvm.gcroot(i8** %r8219, i8* null)
%r8193 = bitcast i8** %r8219 to i64*
%r8218 = call i64 @apply-procedure(i64* %r8194, i64* %r8197) ; @apply-procedure
store i64 %r8218, i64* %r8193
%r8223 = alloca i8*
call void @llvm.gcroot(i8** %r8223, i8* null)
%r8221 = bitcast i8** %r8223 to i64*
%r8222 = add i64 0, 168
store i64 %r8222, i64* %r8221
%r8225 = alloca i8*
call void @llvm.gcroot(i8** %r8225, i8* null)
%r8220 = bitcast i8** %r8225 to i64*
%r8224 = call i64 @f51(i64* %r8221) ; @display
store i64 %r8224, i64* %r8220
%r8232 = alloca i8*
call void @llvm.gcroot(i8** %r8232, i8* null)
%r8227 = bitcast i8** %r8232 to i64*
%r8235 = alloca i8*
call void @llvm.gcroot(i8** %r8235, i8* null)
%r8233 = bitcast i8** %r8235 to i64*
%r8234 = add i64 0, 0
store i64 %r8234, i64* %r8233
%r8238 = alloca i8*
call void @llvm.gcroot(i8** %r8238, i8* null)
%r8236 = bitcast i8** %r8238 to i64*
%r8237 = add i64 0, 8
store i64 %r8237, i64* %r8236
%r8231 = call i64 @f36(i64* %env, i64* %r8233, i64* %r8236) ; @lookup-variable
store i64 %r8231, i64* %r8227
%r8240 = alloca i8*
call void @llvm.gcroot(i8** %r8240, i8* null)
%r8228 = bitcast i8** %r8240 to i64*
%r8239 = call i64 @f18(i64* %r8227) ; @get-procedure-env
store i64 %r8239, i64* %r8228
%r8242 = alloca i8*
call void @llvm.gcroot(i8** %r8242, i8* null)
%r8230 = bitcast i8** %r8242 to i64*
%r8245 = alloca i8*
call void @llvm.gcroot(i8** %r8245, i8* null)
%r8243 = bitcast i8** %r8245 to i64*
%r8244 = add i64 0, 0
store i64 %r8244, i64* %r8243
%r8241 = call i64 @f17(i64* %r8243, i64* %r8228) ; @make-env
store i64 %r8241, i64* %r8230
%r8247 = alloca i8*
call void @llvm.gcroot(i8** %r8247, i8* null)
%r8229 = bitcast i8** %r8247 to i64*
%r8246 = call i64 @f19(i64* %r8227) ; @get-procedure-nparams
store i64 %r8246, i64* %r8229
%r8248 = call i64 @f23(i64* %r8229, i64* %r8230) ; @fix-arbitrary-procs
%r8250 = bitcast [20 x i8]* @g8249 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r8250, i32 1, i64* %r8230)
%r8252 = alloca i8*
call void @llvm.gcroot(i8** %r8252, i8* null)
%r8226 = bitcast i8** %r8252 to i64*
%r8251 = call i64 @apply-procedure(i64* %r8227, i64* %r8230) ; @apply-procedure
store i64 %r8251, i64* %r8226
%r8258 = alloca i8*
call void @llvm.gcroot(i8** %r8258, i8* null)
%r8255 = bitcast i8** %r8258 to i64*
%r8257 = add i64 0, 4
store i64 %r8257, i64* %r8255
%r8260 = alloca i8*
call void @llvm.gcroot(i8** %r8260, i8* null)
%r8256 = bitcast i8** %r8260 to i64*
%r8259 = add i64 0, 8
store i64 %r8259, i64* %r8256
%r8262 = alloca i8*
call void @llvm.gcroot(i8** %r8262, i8* null)
%r8254 = bitcast i8** %r8262 to i64*
%r8261 = call i64 @f21(i64* %r8255, i64* %r8256) ; @cons
store i64 %r8261, i64* %r8254
%r8264 = alloca i8*
call void @llvm.gcroot(i8** %r8264, i8* null)
%r8253 = bitcast i8** %r8264 to i64*
%r8263 = call i64 @f51(i64* %r8254) ; @display
store i64 %r8263, i64* %r8253
%r8271 = alloca i8*
call void @llvm.gcroot(i8** %r8271, i8* null)
%r8266 = bitcast i8** %r8271 to i64*
%r8274 = alloca i8*
call void @llvm.gcroot(i8** %r8274, i8* null)
%r8272 = bitcast i8** %r8274 to i64*
%r8273 = add i64 0, 0
store i64 %r8273, i64* %r8272
%r8277 = alloca i8*
call void @llvm.gcroot(i8** %r8277, i8* null)
%r8275 = bitcast i8** %r8277 to i64*
%r8276 = add i64 0, 8
store i64 %r8276, i64* %r8275
%r8270 = call i64 @f36(i64* %env, i64* %r8272, i64* %r8275) ; @lookup-variable
store i64 %r8270, i64* %r8266
%r8279 = alloca i8*
call void @llvm.gcroot(i8** %r8279, i8* null)
%r8267 = bitcast i8** %r8279 to i64*
%r8278 = call i64 @f18(i64* %r8266) ; @get-procedure-env
store i64 %r8278, i64* %r8267
%r8281 = alloca i8*
call void @llvm.gcroot(i8** %r8281, i8* null)
%r8269 = bitcast i8** %r8281 to i64*
%r8284 = alloca i8*
call void @llvm.gcroot(i8** %r8284, i8* null)
%r8282 = bitcast i8** %r8284 to i64*
%r8283 = add i64 0, 0
store i64 %r8283, i64* %r8282
%r8280 = call i64 @f17(i64* %r8282, i64* %r8267) ; @make-env
store i64 %r8280, i64* %r8269
%r8286 = alloca i8*
call void @llvm.gcroot(i8** %r8286, i8* null)
%r8268 = bitcast i8** %r8286 to i64*
%r8285 = call i64 @f19(i64* %r8266) ; @get-procedure-nparams
store i64 %r8285, i64* %r8268
%r8287 = call i64 @f23(i64* %r8268, i64* %r8269) ; @fix-arbitrary-procs
%r8289 = bitcast [20 x i8]* @g8288 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r8289, i32 1, i64* %r8269)
%r8291 = alloca i8*
call void @llvm.gcroot(i8** %r8291, i8* null)
%r8265 = bitcast i8** %r8291 to i64*
%r8290 = call i64 @apply-procedure(i64* %r8266, i64* %r8269) ; @apply-procedure
store i64 %r8290, i64* %r8265
%r8295 = ptrtoint [7 x i8]* @g8294 to i64
%r8297 = alloca i8*
call void @llvm.gcroot(i8** %r8297, i8* null)
%r8293 = bitcast i8** %r8297 to i64*
%r8300 = alloca i8*
call void @llvm.gcroot(i8** %r8300, i8* null)
%r8298 = bitcast i8** %r8300 to i64*
%r8299 = add i64 0, 24
store i64 %r8299, i64* %r8298
%r8303 = alloca i8*
call void @llvm.gcroot(i8** %r8303, i8* null)
%r8301 = bitcast i8** %r8303 to i64*
%r8302 = add i64 0, 4
store i64 %r8302, i64* %r8301
%r8296 = call i64 @make-string-or-symbol(i64 %r8295, i64* %r8298, i64* %r8301)
store i64 %r8296, i64* %r8293
%r8305 = alloca i8*
call void @llvm.gcroot(i8** %r8305, i8* null)
%r8292 = bitcast i8** %r8305 to i64*
%r8304 = call i64 @f51(i64* %r8293) ; @display
store i64 %r8304, i64* %r8292
%r8312 = alloca i8*
call void @llvm.gcroot(i8** %r8312, i8* null)
%r8307 = bitcast i8** %r8312 to i64*
%r8315 = alloca i8*
call void @llvm.gcroot(i8** %r8315, i8* null)
%r8313 = bitcast i8** %r8315 to i64*
%r8314 = add i64 0, 0
store i64 %r8314, i64* %r8313
%r8318 = alloca i8*
call void @llvm.gcroot(i8** %r8318, i8* null)
%r8316 = bitcast i8** %r8318 to i64*
%r8317 = add i64 0, 8
store i64 %r8317, i64* %r8316
%r8311 = call i64 @f36(i64* %env, i64* %r8313, i64* %r8316) ; @lookup-variable
store i64 %r8311, i64* %r8307
%r8320 = alloca i8*
call void @llvm.gcroot(i8** %r8320, i8* null)
%r8308 = bitcast i8** %r8320 to i64*
%r8319 = call i64 @f18(i64* %r8307) ; @get-procedure-env
store i64 %r8319, i64* %r8308
%r8322 = alloca i8*
call void @llvm.gcroot(i8** %r8322, i8* null)
%r8310 = bitcast i8** %r8322 to i64*
%r8325 = alloca i8*
call void @llvm.gcroot(i8** %r8325, i8* null)
%r8323 = bitcast i8** %r8325 to i64*
%r8324 = add i64 0, 0
store i64 %r8324, i64* %r8323
%r8321 = call i64 @f17(i64* %r8323, i64* %r8308) ; @make-env
store i64 %r8321, i64* %r8310
%r8327 = alloca i8*
call void @llvm.gcroot(i8** %r8327, i8* null)
%r8309 = bitcast i8** %r8327 to i64*
%r8326 = call i64 @f19(i64* %r8307) ; @get-procedure-nparams
store i64 %r8326, i64* %r8309
%r8328 = call i64 @f23(i64* %r8309, i64* %r8310) ; @fix-arbitrary-procs
%r8330 = bitcast [20 x i8]* @g8329 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r8330, i32 1, i64* %r8310)
%r8332 = alloca i8*
call void @llvm.gcroot(i8** %r8332, i8* null)
%r8306 = bitcast i8** %r8332 to i64*
%r8331 = call i64 @apply-procedure(i64* %r8307, i64* %r8310) ; @apply-procedure
store i64 %r8331, i64* %r8306
%r8338 = alloca i8*
call void @llvm.gcroot(i8** %r8338, i8* null)
%r8335 = bitcast i8** %r8338 to i64*
%r8337 = add i64 0, 4
store i64 %r8337, i64* %r8335
%r8342 = alloca i8*
call void @llvm.gcroot(i8** %r8342, i8* null)
%r8339 = bitcast i8** %r8342 to i64*
%r8341 = add i64 0, 8
store i64 %r8341, i64* %r8339
%r8346 = alloca i8*
call void @llvm.gcroot(i8** %r8346, i8* null)
%r8343 = bitcast i8** %r8346 to i64*
%r8345 = add i64 0, 12
store i64 %r8345, i64* %r8343
%r8350 = alloca i8*
call void @llvm.gcroot(i8** %r8350, i8* null)
%r8347 = bitcast i8** %r8350 to i64*
%r8349 = add i64 0, 16
store i64 %r8349, i64* %r8347
%r8352 = alloca i8*
call void @llvm.gcroot(i8** %r8352, i8* null)
%r8348 = bitcast i8** %r8352 to i64*
%r8351 = call i64 @make-null() ; @make-null
store i64 %r8351, i64* %r8348
%r8354 = alloca i8*
call void @llvm.gcroot(i8** %r8354, i8* null)
%r8344 = bitcast i8** %r8354 to i64*
%r8353 = call i64 @f21(i64* %r8347, i64* %r8348) ; @cons
store i64 %r8353, i64* %r8344
%r8356 = alloca i8*
call void @llvm.gcroot(i8** %r8356, i8* null)
%r8340 = bitcast i8** %r8356 to i64*
%r8355 = call i64 @f21(i64* %r8343, i64* %r8344) ; @cons
store i64 %r8355, i64* %r8340
%r8358 = alloca i8*
call void @llvm.gcroot(i8** %r8358, i8* null)
%r8336 = bitcast i8** %r8358 to i64*
%r8357 = call i64 @f21(i64* %r8339, i64* %r8340) ; @cons
store i64 %r8357, i64* %r8336
%r8360 = alloca i8*
call void @llvm.gcroot(i8** %r8360, i8* null)
%r8334 = bitcast i8** %r8360 to i64*
%r8359 = call i64 @f21(i64* %r8335, i64* %r8336) ; @cons
store i64 %r8359, i64* %r8334
%r8362 = alloca i8*
call void @llvm.gcroot(i8** %r8362, i8* null)
%r8333 = bitcast i8** %r8362 to i64*
%r8361 = call i64 @f51(i64* %r8334) ; @display
store i64 %r8361, i64* %r8333
%r8369 = alloca i8*
call void @llvm.gcroot(i8** %r8369, i8* null)
%r8364 = bitcast i8** %r8369 to i64*
%r8372 = alloca i8*
call void @llvm.gcroot(i8** %r8372, i8* null)
%r8370 = bitcast i8** %r8372 to i64*
%r8371 = add i64 0, 0
store i64 %r8371, i64* %r8370
%r8375 = alloca i8*
call void @llvm.gcroot(i8** %r8375, i8* null)
%r8373 = bitcast i8** %r8375 to i64*
%r8374 = add i64 0, 8
store i64 %r8374, i64* %r8373
%r8368 = call i64 @f36(i64* %env, i64* %r8370, i64* %r8373) ; @lookup-variable
store i64 %r8368, i64* %r8364
%r8377 = alloca i8*
call void @llvm.gcroot(i8** %r8377, i8* null)
%r8365 = bitcast i8** %r8377 to i64*
%r8376 = call i64 @f18(i64* %r8364) ; @get-procedure-env
store i64 %r8376, i64* %r8365
%r8379 = alloca i8*
call void @llvm.gcroot(i8** %r8379, i8* null)
%r8367 = bitcast i8** %r8379 to i64*
%r8382 = alloca i8*
call void @llvm.gcroot(i8** %r8382, i8* null)
%r8380 = bitcast i8** %r8382 to i64*
%r8381 = add i64 0, 0
store i64 %r8381, i64* %r8380
%r8378 = call i64 @f17(i64* %r8380, i64* %r8365) ; @make-env
store i64 %r8378, i64* %r8367
%r8384 = alloca i8*
call void @llvm.gcroot(i8** %r8384, i8* null)
%r8366 = bitcast i8** %r8384 to i64*
%r8383 = call i64 @f19(i64* %r8364) ; @get-procedure-nparams
store i64 %r8383, i64* %r8366
%r8385 = call i64 @f23(i64* %r8366, i64* %r8367) ; @fix-arbitrary-procs
%r8387 = bitcast [20 x i8]* @g8386 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r8387, i32 1, i64* %r8367)
%r8389 = alloca i8*
call void @llvm.gcroot(i8** %r8389, i8* null)
%r8363 = bitcast i8** %r8389 to i64*
%r8388 = call i64 @apply-procedure(i64* %r8364, i64* %r8367) ; @apply-procedure
store i64 %r8388, i64* %r8363
%r8516 = alloca i8*
call void @llvm.gcroot(i8** %r8516, i8* null)
%r8391 = bitcast i8** %r8516 to i64*
%r8519 = alloca i8*
call void @llvm.gcroot(i8** %r8519, i8* null)
%r8517 = bitcast i8** %r8519 to i64*
%r8518 = add i64 0, 0
store i64 %r8518, i64* %r8517
%r8515 = call i64 @make-procedure(i64 (i64*)* @f165, i64* %env, i64* %r8517)
store i64 %r8515, i64* %r8391
%r8521 = alloca i8*
call void @llvm.gcroot(i8** %r8521, i8* null)
%r8390 = bitcast i8** %r8521 to i64*
%r8524 = alloca i8*
call void @llvm.gcroot(i8** %r8524, i8* null)
%r8522 = bitcast i8** %r8524 to i64*
%r8523 = add i64 0, 0
store i64 %r8523, i64* %r8522
%r8527 = alloca i8*
call void @llvm.gcroot(i8** %r8527, i8* null)
%r8525 = bitcast i8** %r8527 to i64*
%r8526 = add i64 0, 168
store i64 %r8526, i64* %r8525
%r8520 = call i64 @f37(i64* %env, i64* %r8522, i64* %r8525, i64* %r8391) ; @set-variable!
store i64 %r8520, i64* %r8390
%r8534 = alloca i8*
call void @llvm.gcroot(i8** %r8534, i8* null)
%r8529 = bitcast i8** %r8534 to i64*
%r8537 = alloca i8*
call void @llvm.gcroot(i8** %r8537, i8* null)
%r8535 = bitcast i8** %r8537 to i64*
%r8536 = add i64 0, 0
store i64 %r8536, i64* %r8535
%r8540 = alloca i8*
call void @llvm.gcroot(i8** %r8540, i8* null)
%r8538 = bitcast i8** %r8540 to i64*
%r8539 = add i64 0, 168
store i64 %r8539, i64* %r8538
%r8533 = call i64 @f36(i64* %env, i64* %r8535, i64* %r8538) ; @lookup-variable
store i64 %r8533, i64* %r8529
%r8542 = alloca i8*
call void @llvm.gcroot(i8** %r8542, i8* null)
%r8530 = bitcast i8** %r8542 to i64*
%r8541 = call i64 @f18(i64* %r8529) ; @get-procedure-env
store i64 %r8541, i64* %r8530
%r8544 = alloca i8*
call void @llvm.gcroot(i8** %r8544, i8* null)
%r8532 = bitcast i8** %r8544 to i64*
%r8547 = alloca i8*
call void @llvm.gcroot(i8** %r8547, i8* null)
%r8545 = bitcast i8** %r8547 to i64*
%r8546 = add i64 0, 4
store i64 %r8546, i64* %r8545
%r8543 = call i64 @f17(i64* %r8545, i64* %r8530) ; @make-env
store i64 %r8543, i64* %r8532
%r8550 = alloca i8*
call void @llvm.gcroot(i8** %r8550, i8* null)
%r8548 = bitcast i8** %r8550 to i64*
%r8549 = add i64 0, 40
store i64 %r8549, i64* %r8548
%r8554 = alloca i8*
call void @llvm.gcroot(i8** %r8554, i8* null)
%r8552 = bitcast i8** %r8554 to i64*
%r8553 = add i64 0, 4
store i64 %r8553, i64* %r8552
%r8551 = call i64 @f13(i64* %r8532, i64* %r8552, i64* %r8548) ; @vector-set!
%r8556 = alloca i8*
call void @llvm.gcroot(i8** %r8556, i8* null)
%r8531 = bitcast i8** %r8556 to i64*
%r8555 = call i64 @f19(i64* %r8529) ; @get-procedure-nparams
store i64 %r8555, i64* %r8531
%r8557 = call i64 @f23(i64* %r8531, i64* %r8532) ; @fix-arbitrary-procs
%r8559 = bitcast [20 x i8]* @g8558 to i8*
call void(i8*, i32, ...) @db_trace(i8* %r8559, i32 1, i64* %r8532)
%r8561 = alloca i8*
call void @llvm.gcroot(i8** %r8561, i8* null)
%r8528 = bitcast i8** %r8561 to i64*
%r8560 = call i64 @apply-procedure(i64* %r8529, i64* %r8532) ; @apply-procedure
store i64 %r8560, i64* %r8528
%r8563 = alloca i8*
call void @llvm.gcroot(i8** %r8563, i8* null)
%r2 = bitcast i8** %r8563 to i64*
%r8562 = call i64 @f51(i64* %r8528) ; @display
store i64 %r8562, i64* %r2
%r8564 = load i64* %r2
ret i64 %r8564
}

define i64 @startup(i64* %env) gc "shadow-stack" {
%r8566 = alloca i8*
call void @llvm.gcroot(i8** %r8566, i8* null)
%r3 = bitcast i8** %r8566 to i64*
%r8569 = alloca i8*
call void @llvm.gcroot(i8** %r8569, i8* null)
%r8567 = bitcast i8** %r8569 to i64*
%r8568 = add i64 0, 168
store i64 %r8568, i64* %r8567
%r8565 = call i64 @f17(i64* %r8567, i64* %env) ; @make-env
store i64 %r8565, i64* %r3
%r1 = call i64 @f166(i64* %r3) ; @f1
;ret i64 %r1
  ret i64 0 
}
'ok
