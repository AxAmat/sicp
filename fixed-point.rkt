#lang racket

;;; Нахождение неподвижных точек функций

(define (fixed-point f first-guess)
  (define (try guess)
    (let ([next (f guess)])
      (if (close-enough? next guess)
        (real->decimal-string next)
        (try next))))
  (try first-guess))
