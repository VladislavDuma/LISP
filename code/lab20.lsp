;Определите функцию ПЕРВЫЙ-АТОМ, результатом которой
;будет первый атом списка

(defun first-atom (lst)
	(
		(lambda (head)
			(cond 
				(
					(atom head) 
					head
				)
				(
					t 
					(first-atom head)
				)
			)
		) 
		(car lst)
	)
)
(print(first-atom '(((9 2 3) 2 1 2) 7 5 1)))