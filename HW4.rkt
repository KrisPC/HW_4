;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname HW4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define merge
  (lambda (list1 list2)
    (cond
      ((null? list1) list2)
      ((null? list2) list1)
      ((<= (car list1) (car list2)) (append (list(car list1)) (merge (cdr list1) list2)))
      ((> (car list1) (car list2)) (append (list(car list2)) (merge (cdr list2) list1))))))

(merge '(1 4) '(1 2 8))