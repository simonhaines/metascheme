(begin
  (define (fib n)
    (if (< n 2) n
        (+ (fib (- n 1)) (fib (- n 2)))))

  (display "This is a test, designed to provoke an emotional response\n")
  (display (fib 10)))
