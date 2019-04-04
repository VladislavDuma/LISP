;Задача 10
;Определите функцию, осуществляющую удаление указанного количества последних элементов
;исходного списка.

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

;Input:
;(del-n-last '(1 2 9 3 8 4) 2)
;(del-n-last '(1 2 9 3 8 4 7 8) 5)

;Output:
;(1 2 9 3) 
;(1 2 9) 
