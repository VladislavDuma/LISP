--Задача 12
--Реализовать на языке Haskell функцию ПЕРЕСЕЧЕНИЕ, формирующую пересечение двух множеств

combine lst1 lst2 = ([x| x<-lst1, y<-lst2, y==x])

--combine [2..5] [3..6]
--[3,4,5]
--combine [2..5] [0..6]
--[2,3,4,5]
