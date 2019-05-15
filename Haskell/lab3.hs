--Задача 3
--Реализовать на языке Haskell функцию, удаляющую из исходного списка элементы с чётными номерами

myeven [el] = [el]
myeven [first, second] = [first]
myeven (h:t) = h : myeven (tail t)

--myeven [1, 2, 3] -- [1,3]
--myeven [1, 2, 3, 4] -- [1,3]