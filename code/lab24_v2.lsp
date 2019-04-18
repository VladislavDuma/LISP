;Задача 24
;Определите функции, осуществляющие преобразования между видами (a b c) и (((a) b) c)

(defun abc (lst)
	(cond
		((null (cdr lst)) (list (car lst)))
		(t (cons 
		    	(cons (list (car lst)) (list (cadr lst))) 
		    	(abc (cddr lst)))
		)
	)
)

;(main '(a b c))
;(((A) B) C)

;(main '(a b c d e g))
;((((((A) B) C) D) E) G) 
