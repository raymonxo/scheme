;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 3
;
; P03 (*) Find the Kth element of a list.
;     By convention, the first element in the list is element 0.
; 
;     Example:
; 
;     scala> nth(2, List(1, 1, 2, 3, 5, 8))
;     res0: Int = 2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#lang racket
(require typed/racket)

; Return the last but one element of ls
(define (nth n ls)
  (if (zero? n)
      (first ls)
      (nth (- n 1) (rest ls))))

; Test
(assert (equal? (nth 2 '(1 1 2 3 5 8)) 2))
