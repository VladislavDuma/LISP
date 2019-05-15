--Задача 7
--Реализовать на языке Haskell функцию, заменяющую в исходном списке все вхождения заданного значения другим

myreplace _ _ [] = []
myreplace cur new (h:t)
    | h == cur  = new : myreplace cur new t
    | otherwise = h : myreplace cur new t
    
--myreplace 1 2 [1, 2, 3]
--[2,2,3]
--myreplace "a" "c" ["b", "a", "d"]
--["b","c","d"]
