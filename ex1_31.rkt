(define (product term a next b) 
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))
  )
)


(define (square x) (* x x))
(define (inc x) (+ x 1))
(define (identity x) x)

(define (factorial x)
  (product identity 1 inc x)
  )

(factorial 5)


(define (calculate-pi n)
  (define (mul x)
  (/  (/ (* (- x 1) (+ x 1)) (square x)) 1.0)
  )
  
  (define (next-by-2 x) (+ x 2))
  
 (*  (product mul 3 next-by-2 n) 4)
)

(calculate-pi 1000)