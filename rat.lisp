; Data Abstraction

(defun make-rat (n d) 
	"Procedure to make a rational number given the numerator and denominator"
	(cons n d))

(defun num (x) 
	"Procedure to return the numerator of a rational number"
	(first x))

(defun den (x) 
	"Procedure to return the denominator of a rational number"
	(rest x))


;; Test output
(print (make-rat 1 2))
(defvar rat-num (make-rat 2 3))
(print (num rat-num))
(print (den rat-num))
