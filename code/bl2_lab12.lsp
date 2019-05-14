;Задача 12
;Определите функцию, которая возвращает в качестве значения свой вызов

(defun yourself (&rest arg) 
	(if (atom arg)
		(list 'yourself arg)
		(append (list 'yourself) arg)
	)
)

;Result
;(yourself 3) 
;(YOURSELF 3)

;(yourself 12) 
;(YOURSELF 12)

;(yourself '(1 2 3 4 5)) 
;(YOURSELF (1 2 3 4 5))

;(yourself 7 2 1 4) 
;(YOURSELF 7 2 1 4)