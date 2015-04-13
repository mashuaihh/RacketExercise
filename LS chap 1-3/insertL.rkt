#lang racket

(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat) (quote()))
      (else (cond
             ((eq? (car lat) old)
              (cons new lat))
             (else (cons (car lat)
                         (insertL new old (cdr lat)))))))))


(define l (list "a" "b" "d"))