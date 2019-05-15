--Задача 5
--Реализовать на языке Haskell функцию, заменяющую в исходном списке два подряд идущих одинаковых элемента одним

myreduce [] = []
myreduce [el] = [el]
myreduce (h:t) 
    | h == head t = myreduce (h:(tail t))
    | otherwise   = h:myreduce t

--myreduce [1, 1, 1, 2, 2]
--[1,2]
--myreduce [1, 1, 1, 2, 2, 3, 4, 2]
--[1,2,3,4,2]
