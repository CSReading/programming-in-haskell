data Tree a = Leaf a | Node (Tree a) (Tree a)

halve :: [a] -> ([a], [a])
halve xs = (take n xs, drop n xs) 
    where n = (length xs) `div` 2

balanced :: [a] -> Tree a
balanced [x] = Leaf x
balanced xs = Node (balanced l) (balanced r)
            where (l, r) = halve xs

