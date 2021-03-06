; Задача 13
; Создать функцию, удаляющую в исходном списке все повторные вхождения элементов

(defun my-member(a lst)
	(cond 
		((null lst) nil)
		((eq (car lst) a) t)
		(t (my-member a (cdr lst)))
	)
)

(defun my-remove(lst)
	(
		(lambda (first rest)
			(cond 
				((null lst)	nil)
				(
					(my-member first rest)
					(my-remove rest)
				)
				(
					t 
					(cons first (my-remove rest))
				)
			)
		)
		(car lst)(cdr lst)
	)
)

;(my-remove '(1 2 3 3 4 2 7))
;(1 3 4 2 7)

;(my-remove '(1 2 3 5 2 90 -12 3 4 2 7))
;(1 5 90 -12 3 4 2 7)

;(my-remove '(1 2 2 -1))
;(1 2 -1)
