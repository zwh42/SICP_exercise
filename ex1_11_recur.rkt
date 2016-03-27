(define (f-recur n) 
  (cond
    ((< n 3) n)
    (else (+ (f-recur (- n 1)) (* (f-recur (- n 2)) 2)  (* (f-recur (- n 3)) 3)))
    )
  )

(define (f-iter n)
  
  (define (f-iter-inside a b c n)
    (if (= n 0)
        a
        (f-iter-inside b c (+ c (* b 2) (* a 3)) (- n 1))
        )
    )
  (f-iter-inside 0 1 2 n)
)