#lang racket
(define subst
  (lambda (new old lat)
    (cond
      ((null? lat) (quote()))
      (else (cond
              ((eq? old (car lat))
               (cons new (cdr lat)))
              (else 
               (cons (car lat) (subst new old (cdr lat)))))))))
                    
                     
(define l (list "a" "b" "c" "d"))