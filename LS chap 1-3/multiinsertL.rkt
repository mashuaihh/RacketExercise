#lang racket
(define multiinsertL
  (lambda (new old lat)
    (cond
      ((null? lat) (quote()))
      (else (cond
              ((eq? (car lat) old)
               (cons new 
                     (cons (car lat) 
                           (multiinsertL new old (cdr lat)))))
              (else (cons (car lat)
                          (multiinsertL new old (cdr lat)))))))))

(define l (list "a" "b" "a" "a" "c"))
                     