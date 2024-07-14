data Tree a = Leaf a | Node (Tree a) (Tree a)
              deriving (Eq, Ord, Show, Read)

halve :: [a] -> ([a], [a])
halve xs | even len  = (take (len `div` 2) xs, drop (len `div` 2) xs)
         | otherwise = (take (len `div` 2 + 1) xs, drop (len `div` 2 + 1) xs)
          where len = length xs

balance :: [a] -> Tree a
balance xs | length xs == 1 = Leaf (head xs)
           | otherwise = Node (balance (fst (halve xs))) (balance (snd (halve xs)))


-- 以下は模範解答
_halve xs = splitAt (length xs `div` 2) xs

_balance :: [a] -> Tree
_balance [x] = Leaf x
_balance xs = Node (_balance ys) (_balance zs)
            where (ys, zs) = _halve xs
