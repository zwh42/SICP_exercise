(define (accmulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accmulate combiner null-value term (next a) next b))
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
(define (cube x) (* x x x))

(define (sum-cubes a b) 
        (accmulate add 0 cube a inc b)
)
(sum-cubes 1 10)

(define (sum a b)
  (accmulate add 0 indentity a inc b) 
)
(sum 1 100)


(define (accmulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner (term a) result))
     )
  )  
  (iter a null-value)
)

(define (sum-cubes-iter a b) 
        (accmulate-iter add 0 cube a inc b)
)

(sum-cubes-iter 1 10)

(define (sum-iter a b)
  (accmulate-iter add 0 indentity a inc b) 
)
(sum-iter 1 100)

(define (factorial-iter n)
  (accmulate-iter * 1 indentity 1 inc n)
)

(factorial-iter 5)
