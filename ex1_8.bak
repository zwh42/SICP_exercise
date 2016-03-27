(define DELTA 0.001)

(define (sqrt_iter guess x)
  (if (good_enough? guess (improve guess x)) 
      guess
      (sqrt_iter (improve guess x) x))
  )

(define (improve guess x)
  (average guess (/ x guess))
  )

(define (average x y)
  (* (+ x y) 0.5))

(define (square x)
  (* x x))

(define (abs x)
  (cond ((> x 0) x)
        (else (- x))
        )
  )

(define (good_enough? guess new_guess)
  (< (/ (abs (- guess new_guess)) guess) DELTA)
  )

