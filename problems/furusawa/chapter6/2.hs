sumdom :: Int -> Int
sumdom 0 = 0
sumdom n = n + sumdom (n-1)