data Tree a = Leaf a | Node (Tree a) a (Tree a)

occurs :: Ord a => a -> Tree a -> Bool
occurs x (Leaf y) = x == y
occurs x (Tree l y r) | compare x y == EQ = True
                      | compare x y == LT = occurs x l
                      | otherwise         = occurs x r

-- 以下は模範解答
_occurs :: Ord a => a -> Tree a -> Bool
_occurs x (Leaf y) = x == y
_occurs x (Node l x r) = case compare x y of
                          LT -> _occurs x l
                          EQ -> True
                          GT -> _occurs x r
