merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge xs (y:ys) = merge (small ++ [y] ++ large) ys 
    where 
        small = [x | x <- xs, x <= y]
        large = [x | x <- xs, x > y]

halve :: [a] -> ([a], [a])
halve xs = (take n xs, drop n xs) 
    where n = (length xs) `div` 2

msort :: Ord a => [a] -> [a]
msort x | length x == 1 = x
        | otherwise = merge (msort a) (msort b)
            where (a, b) = halve x
