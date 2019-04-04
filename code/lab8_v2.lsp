;Задача 8
;Определите функцию, которая разделит исходный список из целых чисел на два списка:
;список положительных и список отрицательных чисел

(defun get-positives (lst)
	(
		(lambda (first rest)
			(cond 
				((null lst) nil)
				((> first 0) (cons first (get-positives rest)))
				(t (get-positives rest))
			)
		)
		(car lst) (cdr lst)
	)
)

(defun get-negatives (lst)
	(
		(lambda (first rest)
			(cond 
				((null lst) nil)
				((<= first 0) (cons first (get-negatives rest)))
				(t (get-negatives rest))
			)
		)
		(car lst) (cdr lst)
	)
)

(defun main (lst)
	(list (get-negatives lst) (get-positives lst))
)

;Input:
;(main '(1 2 9 -3 8 -4))
;(main '(1 -2 9 -3 8 4 -7 8))

;Output:
;((-3 -4) (1 2 9 8)) 
;((-2 -3 -7) (1 9 8 4 8))
