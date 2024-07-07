merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge xs (y:ys) = merge (small ++ [y] ++ large) ys 
    where 
        small = [x | x <- xs, x <= y]
        large = [x | x <- xs, x > y]
