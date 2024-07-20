halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

data Tree a = Leaf a | Node (Tree a) (Tree a)
  deriving (Show)

balance :: [a] -> Tree a
balance [x] = Leaf x
balance xs = Node (balance ys) (balance zs)
  where
    (ys, zs) = halve xs
