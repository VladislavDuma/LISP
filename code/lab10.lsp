(defun del-last (lst)
	(cond
		((null (cddr lst)) (list(car lst)))
		(t (cons (car lst) (del-last (cdr lst))))
	)
)

(defun del-n-last (lst n)
	(cond
		((= n 0) lst)
		(t (del-n-last (del-last lst) (- n 1)))
	)
)