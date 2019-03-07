(defun factorial_recursive (n)
	"procedure to calculate factorial of n recursively."
	(if (= n 1)
		1
		(* n (factorial_recursive (- n 1)))))

(defun factorial_iterative (n)
	"procedure to calculate factorial of n iteratively."
	(fact-iter 1 1 n))

(defun fact-iter (product counter max-count)
	"helper procedure to factorial_iterative."
	(if (> counter max-count)
		product
		(fact-iter (* counter product)
							 (+ counter 1)
							 max-count)))

(print (factorial_recursive 5))
(print (factorial_iterative 5))
