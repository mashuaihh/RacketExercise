#lang racket
(define (tup+ lat1 lat2)
  (cond
    [(null? lat1) lat2]
    [(null? lat2) lat1]
    [else (cons (+ (car lat1) (car lat2))
                (tup+ (cdr lat1) (cdr lat2)))]))

(define lat1 (list 1 2 3 4 2 12 4))
(define lat2 (list 3 5 1 3))