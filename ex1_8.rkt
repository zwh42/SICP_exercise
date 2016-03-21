(define DELTA 0.001)

(define (cube_root_iter guess x)
  (if (good_enough? guess (improve guess x)) 
      guess
      (cube_root_iter (improve guess x) x))
  )

(define (improve guess x)
  (/ (+ (/ x (square guess))  (* 2 guess)) 3.0)
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

