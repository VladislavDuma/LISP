(defun abc (lst)
	(cond
		(
			(null (cdr lst)) (list (car lst))
		)
		(
			t
			;(cons (list (car lst)) (list (cadr lst)))
			;(abc (cddr lst))
			(cons (cons (list (car lst)) (list (cadr lst))) (abc (cddr lst)))
		)
	)
)