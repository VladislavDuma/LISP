;Задача 1
;Определите макрос, который возвращает свой вызов

(defmacro self (&rest args)
    `(quote (self ,@args))
)

;Result
;(self 3) 
;(SELF 3)

;(self (* 2 (+ 2 3))) 
;(SELF (* 2 (+ 2 3)))

;(self a b (c) d) 
;(SELF A B (C) D)