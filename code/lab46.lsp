;Задача 46
;Предположим, что отец и мать некоторого лица, хранятся как значения
;соответствующих свойств у символа, обозначающего это лицо.
;Напишите функцию (родители x), которая возвращает в качестве значения родителей, 
;и предикат (сестры-братья x1 x2), который истинен в случае, 
;если x1 и x2 — сестры или братья, родные или с одним общим родителем.

(defun set-parents(person mother father)
	(setf (get person `mother) mother)
	(setf (get person `father) father)
)

(defun get-parents(person)
	(list (get person `mother) (get person `father))
)

(defun siblings(person1 person2)
	(cond
		((eq (get person1 `mother) (get person2 `mother)) t)
		((eq (get person1 `father) (get person2 `father)) t)
		(t nil)
	)
)

(defun main(person1 person2 parents1 parents2)
	(set-parents person1 (car parents1) (cadr parents1))
	(set-parents person2 (car parents2) (cadr parents2))
	(print(get-parents person1))
	(print(get-parents person2))
	(siblings person1 person2)
)

;(main 'alina 'ivan '(elena igor) '(elena oleg))
;(main 'alina 'ivan '(dasha igor) '(elena oleg))

;(ELENA IGOR) 
;(ELENA OLEG) 
;T 
;(DASHA IGOR) 
;(ELENA OLEG) 
;NIL 
