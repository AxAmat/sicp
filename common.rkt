#lang racket

(define (close-enough? a b)
  (< (abs (- a b)) 0.001))

(define (mean a b)
  (/ (+ a b) 2.0))
