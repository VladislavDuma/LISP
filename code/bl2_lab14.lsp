;Задача 14
;Определите функцию, которая возвращает форму своего определения (defun)

(defun self (arg)
	(list 'defun 'self (list 'arg))
)

;Result
;(self 10)
;(DEFUN SELF (ARG)) 