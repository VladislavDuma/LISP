; Задача 13
; Создать функцию, удаляющую в исходном 
; списке все повторные вхождения элементов
(defun my-remove(a)
	(cond 
		((null a) nil)
		(
			(member (car a)(cdr a)) 
			(my-remove(cdr a))
		)
		(
			t 
			(cons (car a) 
			(my-remove(cdr a)))
		)
	)
)