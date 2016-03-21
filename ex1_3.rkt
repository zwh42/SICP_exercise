(define (sum_of_max_2_out_3 x y z)
  (cond ((or (and (> x y) (> y z) (> x z)) (and (<= x y) (> y z) (> x z))) (+ x y))
        ((or (and (> x y) (<= y z) (> x z)) (and (> x y) (<= y z) (<= x z))) (+ x z))
        ((or (and (<= x y) (> y z) (<= x z)) (and (<= x y) (<= y z) (<= x z))) (+ y z))
        )
        
  )