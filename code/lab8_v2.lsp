(defun get-positives (lst)
	(cond 
		((null lst) nil)
		((> (car lst) 0) (cons (car lst) (get-positives (cdr lst))))
		(t (get-positives (cdr lst)))
	)
)

(defun get-negatives (lst)
	(cond 
		((null lst) nil)
		((<= (car lst) 0) (cons (car lst) (get-negatives (cdr lst))))
		(t (get-negatives (cdr lst)))
	)
)

(defun main (lst)
	(list (get-negatives lst) (get-positives lst))
)