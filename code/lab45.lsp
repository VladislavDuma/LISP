;Задача 45
;Предложим, что у имени города есть свойства X и Y, которые содержат координаты
;места нахождения города относительно некоторого начала координат. Напишите функцию
;(РАССТОЯНИЕ A B), вычисляющую расстояние между городами A и B.

(defun set-city(city-name x y)
	(setf 
		(get city-name `x) 
		x
	)
	(setf 
		(get city-name `y) 
		y
	)
)

(defun pow(x)
	(* x x)
)

(defun distance(c1 c2)
	(sqrt 
		(+ 
			(pow (- (get c1 `x) (get c2 `x))) 
			(pow (- (get c1 `y) (get c2 `y)))
		)
	)
)

(defun main(city1 city2 x1 y1 x2 y2)
	(set-city city1 x1 y1)
	(set-city city2 x2 y2)
	(distance city1 city2)
)

;(print(main 'C1 'C2 0 0 10 10))
;(print(main 'Yalta 'Simferopol 0 0 8 6))

;14.142136 
;10
