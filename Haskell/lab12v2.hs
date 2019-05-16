--Задача 12
--Реализовать на языке Haskell функцию ПЕРЕСЕЧЕНИЕ, формирующую пересечение двух множеств

-- main_list - первый список
-- h_main - голова первого списка
-- t_main - хвост первого списка
-- sec_list - второй список
-- check_other - сравнение элемента первого списка со вторым
-- check_other возвращает True, если элементы первого списка (el_main) равен элементу второго 

main_list [] _ = []
main_list (h_main:t_main) sec_list 
    | check_other h_main sec_list = h_main : main_list t_main sec_list 
    | otherwise = main_list t_main sec_list
    where
        check_other _ [] = False
        check_other el_main (h:t) 
            | el_main == h = True 
            | otherwise    = check_other el_main t

--main_list [1..4] [2..6]
--[2,3,4]
--main_list [2..5] [0..6]
--[2,3,4,5]
