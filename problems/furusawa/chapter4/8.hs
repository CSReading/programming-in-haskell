luhnDouble n | n * 2 > 9 = n * 2 - 9
             | otherwise = n * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = sum [luhnDouble a, b, luhnDouble c, d] `mod` 10 == 0
