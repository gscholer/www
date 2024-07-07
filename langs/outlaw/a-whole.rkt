#lang racket
;; c.rkt
;; b.rkt
;; a.rkt
;;;;;;;;;;;;
;; c.rkt

#;(provide c)
(define (c x)
  (+ x 5))

;;;;;;;;;;;;
;; b.rkt

#;(provide b)
#;(require "c.rkt")

(define (b x)
  (add1 (c x)))

;;;;;;;;;;;;
;; a.rkt

#;(provide a)
#;(require "b.rkt")

(define (a x)
  (+ (b x) (b x)))

(a 10)

