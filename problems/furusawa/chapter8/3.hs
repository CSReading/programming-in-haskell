data Tree a = Leaf a | Node (Tree a) (Tree a)

countLeaf :: Tree a -> Int
countLeaf (Leaf a) = 1
countLeaf (Node l r) = countLeaf l + countLeaf r

balanced :: Tree a -> Bool
balanced (Leaf a)   = True
balanced (Node l r) = abs (countLeaf l - countLeaf r) <= 1 && balanced l && balanced r