split [] = []
split lst = [neg lst] ++ [pos lst]
    where
        neg [] = []
        neg (h:t)
            | h < 0    = h : neg t
            | otherwise = neg t
        pos [] = []
        pos (h:t)
            | h >= 0     = h : pos t
            | otherwise = pos t