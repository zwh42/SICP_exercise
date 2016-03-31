(define (smallest-divisor n)
  (define (square x) (* x x))
  (define (divides? x y)
    (= (remainder y x) 0)
    )
  (define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1))) 
  ))
  (find-divisor n 2)
  )

(define (prime? n)
  (cond ((<= n 1) #f)
        (else (= (smallest-divisor n) n))  
  )
  
  
)

