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
;(print(combine '(1 2 c d g y) '(1 2 3 4)))
;(print(combine '(1 2 c d g y) '(1 2 3 4 5 6 7 8 9)))

;(A 1 B 2 C 3 D 4) 
;(1 1 2 2 C 3 D 4) 
;(1 1 2 2 C 3 D 4 G 5 Y 6) 
