;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 2
;
; P02 (*) Find the last but one element of a list.
;     Example:
; 
;     scala> penultimate(List(1, 1, 2, 3, 5, 8))
;     res0: Int = 5
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#lang racket
(require typed/racket)

; Return the last but one element of ls
(define (penultimate ls)
  (if (empty? (rest (rest ls)))
      (first ls)
      (penultimate (rest ls))))

; Test
(assert (equal? (penultimate '(1 1 2 3 5 8)) 5))
