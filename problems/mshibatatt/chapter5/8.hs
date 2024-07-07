find :: Eq a => a -> [(a, b)] -> [b]
find k t = [v | (k', v) <- t, k == k']

positions :: Eq a => a -> [a] -> [Int]
positions x xs = [i | (x', i) <- zip xs [0..], x == x']

positions_find :: Eq a => a -> [a] -> [Int]
positions_find x xs = find x [xs' | xs' <- zip xs [0..]]
