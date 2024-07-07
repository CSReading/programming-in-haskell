sum_a :: [Int] -> Int
sum_a [] = 0
sum_a (x:xs) = x + sum_a xs

take_b :: Int -> [a] -> [a]
take_b 0 xs = []
take_b n (x:xs) = [x] ++ take_b (n-1) xs

last_c :: [a] -> a
last_c [x] = x
last_c (x:xs) = last_c xs
