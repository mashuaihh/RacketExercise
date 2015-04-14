#lang racket
(define addtup
  (lambda (numbers)
    (cond
      ((null? numbers) 0)
      (else (+ (car numbers)
               (addtup (cdr numbers)))))))

(define l (list 1 2 3 4))

(define multiply
  (lambda (n m)
    (cond
      [(zero? m) 0]
      [else (+ n
               (multiply n (sub1 m)))])))