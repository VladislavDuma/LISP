;Задача 2
;Определите функционал (maplist fn список) для одного списочного аргумента

(defun my-maplist (fn lst)
	(cond
		((null lst) nil)
		(t 
			(cons (funcall fn lst) 
			(my-maplist fn (cdr lst)))
		)
	)
)

;Result
;(my-maplist 'print '(3 2 5)) 
;(3 2 5) (2 5) (5) ((3 2 5) (2 5) (5))