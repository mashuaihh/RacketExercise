
#lang racket
(define insertR
  (lambda (new old lat)
    (cond 
      ((null? lat) (quote()))
      ((eq? (car lat) old) (cons (car lat) (cons new (cdr lat))))
      (else (cons (car lat) (insertR new old (cdr lat)))))))

(define l (list "a" "b" "c" "f"))
                           