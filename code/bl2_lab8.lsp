;Задача 8
;Напишите генератор натуральных чисел: 0, 1, 2, 3, 4, 5, ...

(defun num-generator()
	(let ((num 0))
		(lambda () (setq num (+ num 1)))
	)
)

(defun main ()
	(setq g1 (num-generator))
	(setq g2 (num-generator))
	(list 
		(funcall g1) 
		(funcall g1)
		(funcall g2) 
		(funcall g1) 
		(funcall g2)
		(funcall g1)
		(funcall g2)
	)
)

(print (main))

;Result
;(main) 
;(1 2 1 3 2 4 3)