;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 1
;
; P01 (*) Find the last element of a list.
;     Example:
;
;     scala> last(List(1, 1, 2, 3, 5, 8))
;     res0: Int = 8
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#lang racket
(require typed/racket)

; Return last element of ls
(define (last_ ls)
  (if (empty? (rest ls))
      (first ls)
      (last_ (rest ls))))

; Test
(assert (equal? (last_ '(1 1 2 3 5 8)) 8))
