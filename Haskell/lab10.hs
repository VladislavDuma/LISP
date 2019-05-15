scalar [] _ = 0
scalar (h1:t1) (h2:t2) = h1 * h2 + scalar t1 t2