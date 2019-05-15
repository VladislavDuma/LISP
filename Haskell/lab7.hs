myreplace _ _ [] = []
myreplace cur new (h:t)
    | h == cur  = new : myreplace cur new t
    | otherwise = h : myreplace cur new t