;Задача 26
;Определите функцию, разбивающую список (a b c d...) на пары ((a b) (c d)...)

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

;(print(split '(a b c d)))
;(print(split '(1 2 c d g y)))
;(print(split '(10 g 3 h tu q)))

;((A B) (C D)) 
;((1 2) (C D) (G Y)) 
;((10 G) (3 H) (TU Q))
