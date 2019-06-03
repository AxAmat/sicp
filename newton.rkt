#lang racket

; Метод Ньютона для кубических корней

(require "common.rkt")

(define (qbrt x)

  (define (impr guess)
    (/ (+ (/ x (expt guess 2)) (* 2 guess)) 3))

  (define (qbrt-iter prev-guess guess)
    (if (close-enough? prev-guess guess)
      guess
      (qbrt-iter guess (impr guess))))

  (qbrt-iter (/ x 4.0) (/ x 2.0)))
