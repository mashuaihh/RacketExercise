#lang racket
(define bigger
  (lambda (n m)
    (cond
      [(zero? n) #f]
      [(zero? m) #t]
      [else (bigger (sub1 n) (sub1 m))])))

(define lesser
  (lambda (n m)
    (cond 
      [(zero? m) #f]
      [(zero? n) #t]
      [else (lesser (sub1 n) (sub1 m))])))