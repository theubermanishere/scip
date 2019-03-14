; Data Abstraction

(defun make-rat (n d) 
	"Procedure to make a rational number given the numerator and denominator"
	(let ((g (gcd n d)))
		(cons (/ n g) (/ d g))))

(defun num (x) 
	"Procedure to return the numerator of a rational number"
	(first x))

(defun den (x) 
	"Procedure to return the denominator of a rational number"
	(rest x))

(defun print-rat (x)
	"Procedure to print a rational number"
	(format t "~%~a" (num x))
	(format t "/")
	(format t "~a" (den x)))


;; Test output
;;(print (make-rat 1 2))
;;(setq rat-num (make-rat 2 3))
;;(let ((rat-num (make-rat 2 3)))
;;	(print (num rat-num))
;;	(print (den rat-num))
;;	(print-rat rat-num))
;;
;;(dotimes (x 10) (format t "~%~d" x))
;;(print (num rat-num))
;;(print (den rat-num))
;;(print-rat rat-num)

(defvar *rat* (make-rat 2 6))
(print (num *rat*))
(print (den *rat*))
(print-rat *rat*)

