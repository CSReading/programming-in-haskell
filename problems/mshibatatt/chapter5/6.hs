perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum [y | y <- [1..x-1], x `mod` y == 0] == x]
