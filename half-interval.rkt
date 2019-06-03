#lang racket

;;; Нахождение корней уравнений методом половинного деления

(require "common.rkt")


(define (search f neg-point pos-point)
  (let ([mid-point (mean neg-point pos-point)])
    (if (close-enough? neg-point pos-point)
      (round mid-point)
      (let ([test-value (f mid-point)])
        (cond [(positive? test-value) (search f neg-point mid-point)]
              [(negative? test-value) (search f mid-point pos-point)]
              [else mid-point])))))

(define (half-interval f a b)
  (let ([a-val (f a)]
        [b-val (f b)])
    (cond [(and (negative? a-val) (positive? b-val)) (search f a b)]
          [(and (positive? a-val) (negative? b-val)) (search f b a)]
          [else (displayln "Аргументы одного знака.")])))
