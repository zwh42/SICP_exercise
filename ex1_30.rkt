(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))    
    )   
  )
  
  (iter a 0)
  
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

(define (inc x) (+ x 1))
(define (sum-cubes a b)
  (sum cube a inc b)
  )

(sum-cubes 1 10)

