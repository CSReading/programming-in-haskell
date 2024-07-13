luhnDouble :: Int -> Int
luhnDouble x = if x2 > 9 then x2 - 9 else x2 where x2 = x*2

altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap _ _ [] = []
altMap f g (x:xs) = [f x] ++ altMap g f xs 

luhn :: [Int] -> Bool
luhn x = (sum (altMap luhnDouble (\y -> y) xs)) `mod` 10 == 0
    where xs = if length x `mod` 2 == 0 then x else 0:x
