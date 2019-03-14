;;; Interval Arithmetic

;; Here we represent our intervals using two numbers, lower-bound and upper-bound.
;; Eg. 3.05 - 3.15

(defun add-interval (x y)
	"Procedure to add two intervals x & y."
	(make-interval (+ (lower-bound x) (lower-bound y))
								 (+ (upper-bound x) (upper-bound y))))

(defun mul-interval (x y)
	"Procedure to multiply two intervals x & y."
	(let ((p1 (* (lower-bound x) (lower-bound y)))
				(p2 (* (lower-bound x) (upper-bound y)))
				(p3 (* (upper-bound x) (lower-bound y)))
				(p4 (* (upper-bound x) (upper-bound y))))
		(make-interval (min p1 p2 p3 p4)
									 (max p1 p2 p3 p4))))

(defun div-interval (x y)
	"Procedure to divide interval x with y."
	(mul-interval x
								(make-interval (/ 1.0 (upper-bound y))
															 (/ 1.0 (lower-bound y)))))

(defun make-interval (x y)
	"Procedure to make an interval with lower-bound x and upper-bound y."
	(cons x y))

