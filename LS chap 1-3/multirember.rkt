#lang racket
(define multirember
  (lambda (old lat)
    (cond
      ((null? lat) (quote()))
      (else (cond
              ((eq? (car lat) old)
               (multirember old (cdr lat)))
               (else (cons (car lat)
                          (multirember old (cdr lat)))))))))
              
(define l (list "a" "b" "d" "e" "a" "xx" "a"))