;Задача 24
;Определите функции, осуществляющие преобразования между видами (a b c) и (((a) b) c)

(defun main (lst)
	(abc (cons (list (car lst)) (cdr lst)))
)

(defun abc (lst)
	(cond
		((null (cdr lst)) (car lst))
		(t 
		    (abc 
		    	(cons
		    		(list (car lst) (cadr lst))
		    		(cddr lst)
		    	)
		    )
		)
	)
)

;(main '(a b c))
;(((A) B) C)

;(main '(a b c d e g))
;((((((A) B) C) D) E) G) 
