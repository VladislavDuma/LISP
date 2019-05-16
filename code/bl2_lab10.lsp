;Задача 10
;Напишите генератор, порождающий последовательность (a), (b a), (a b a), (b a b a), ...

(defun a-b-generator ()
	(let 
		((lst nil) (next-el 'b))
		(lambda ()
			(if (eq next-el 'b) 
				(setq next-el 'a)
				(setq next-el 'b)
			)
			(setq lst (cons next-el lst))
		)
	)
)

(defun main ()
	(setq g1 (a-b-generator))
	(setq g2 (a-b-generator))
	(list 
		(funcall g1)
		(funcall g1)
		(funcall g1)
		(funcall g2)
		(funcall g1)
		(funcall g2)
		(funcall g2)
	)
)

;Result
;(main) 
;((A) (B A) (A B A) (A) (B A B A) (B A) (A B A)) 
