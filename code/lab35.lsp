(defun my-member(el lst)
	(cond
		((null lst) nil)
		((eq (car lst) el) t)
		(t (my-member el (cdr lst)))
	)
)

(defun my-subset(set1 set2)
	(cond
		((null set1) t)
		((my-member (car set1) set2) (my-subset (cdr set1) set2))
		(t nil)
	)
)

(defun my-proper-subset(set1 set2)
	(cond
		((null set1) nil)
		((my-subset set1 set2) 
			(cond
				((my-subset set2 set1) nil)
				(t	t)
			)
		)
		(t nil)
	)
)