(define (filtered-accmulate filter? combiner null-value term a next b)
  (if (> a b)
      null-value
      (if (filter? a)
          (combiner (term a) (filtered-accmulate filter? combiner null-value term (next a) next b))          
          (filtered-accmulate filter? combiner null-value term (next a) next b) 
          )
      )    
)


(define (add a b)
   (+ a b)
)

(define (mul a b)
   (mul a b)
)

(define (inc a) (+ a 1))
(define (indentity a) a)

(define (smallest-divisor n)
  (find-divisor n 2)
  )

(define (square x) (* x x))

(define (divides? x y)
  (= (remainder y x) 0)
  )

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))
        )
  )

(define (prime? n)
  (if (> n 1)
  (= (smallest-divisor n) n)
  #f
  )
  )


(define (sum-prime-number-between-a-and-b a b)
  (filtered-accmulate prime? add 0 indentity a inc b)
)

(sum-prime-number-between-a-and-b 1 10)
