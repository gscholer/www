```racket
#lang racket

(define (test-match xs)
  (match xs
    [(vector x y z) 3]
  )
)

(define (f x) x)

(define (test-pred)
  (match #t
    [(? f) 1]
  )
)

(test-match (vector 1 2 3))
(test-pred)
```
