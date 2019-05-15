myreduce [] = []
myreduce [el] = [el]
myreduce (h:t) 
    | h == head t = myreduce (h:(tail t))
    | otherwise   = h:myreduce t