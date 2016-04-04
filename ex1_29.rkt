(define (sum term a next b)
  (if (> a b) 
      0
      (+ (term a) (sum term (next a) next b)))
)

(define (cube x) (* x x x))

(define (simpsion_integral f a b n)
  (define h (/ (- b a) n))
  (define (next x) (+ x (* h 2)))
  
  (* (/ h 3.0) 
     (+ 
        (f a) 
        (f b) 
        (* 4 (sum f (+ a h) next (- b h)))
        (* 2 (sum f (+ a (* 2 h)) next (- b (* 2 h))))
     )
  )
)

(simpsion_integral cube 0 1 1000)