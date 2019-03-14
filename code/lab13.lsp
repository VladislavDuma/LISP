; Задача 13
; Создать функцию, удаляющую в исходном 
; списке все повторные вхождения элементов
(defun my-member(a lst)
	(cond 
		((null lst) nil)
		((eq (car lst) a) t)
		(t (my-member a (cdr lst)))
	)
)

(defun my-remove(lst)
	(cond 
		((null lst) nil)
		(
			(my-member (car lst)(cdr lst)) 
			(my-remove(cdr lst))
		)
		(
			t 
			(cons (car lst) 
			(my-remove(cdr lst)))
		)
	)
)