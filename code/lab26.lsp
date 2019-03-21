(defun split (lst)
	(
		(lambda (pair tail) 
			(cond
				(
					(null tail) 
					(cons pair tail)
				)
				(
					t 
					(cons pair (split tail))
				)
			)
		)
		(list (car lst) (cadr lst)) (cddr lst)
	)
)