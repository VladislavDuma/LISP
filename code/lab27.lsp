;Задача 27
;Определите функцию, которая, чередуя элементы списков (a b...) и (1 2...), образует новый список (a 1 b 2 ...)

(defun combine (ls1 ls2)
	(cond 
		(
			(null ls1)
			nil
		)
		(
			(null ls2)
			nil
		)
		(
			t
			(cons 
				(car ls1)
				(cons (car ls2) (combine (cdr ls1) (cdr ls2)))
			)
		)
	)
)
;(print(combine '(a b c d) '(1 2 3 4)))
