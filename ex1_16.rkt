(define (expt-by-square b n)
  (define (square x) (* x x))
  (define (even? n) (= (remainder n 2) 0))
  (define (odd? n) (not (even? n)))
  
  (define (expt-by-square-iter b n a)
    (display b) (newline)
    (display n) (newline)
    (display a) (newline)
    (newline)
    (cond 
      ((= n 0) a)
      ((even? n) (expt-by-square-iter (square b) (/ n 2) a))
      (else (expt-by-square-iter b (- n 1) (* a b)))
      )
  )
  
  (expt-by-square-iter b n 1)
)

