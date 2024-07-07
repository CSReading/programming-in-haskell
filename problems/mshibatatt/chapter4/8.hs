luhnDouble :: Int -> Int
luhnDouble x = if x2 > 9 then x2 - 9 else x2 where x2 = x*2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn x y z w = (luhnDouble x + y + luhnDouble z + w) `mod` 10 == 0


