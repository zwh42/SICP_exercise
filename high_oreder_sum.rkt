(define (sum term a next b)
  (if (> a b) 
      0
      (+ (term a) (sum term (next a) next b)))
)

(define (inc x) (+ x 1))
(define (cube x) (* x x x))

(define (sum-cubes a b)
  (sum cube a inc b)
  )

(sum-cubes 1 10)

(define (identity x) x)

(define (sum-interger a b)
  (sum identity a inc b)
  )

(sum-interger 1 10)


(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  
 (* (sum f (+ a (/ dx 2.0)) add-dx b) dx)  
 )

(integral cube 0 1 0.001)