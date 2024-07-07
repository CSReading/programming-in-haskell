and_ :: [Bool] -> Bool
and_ [] = True
and_ (x:xs) = x && and_ xs

concat_ :: [[a]] -> [a]
concat_ [[]] = []
concat_ [x:[xs]] = [x] ++ concat_ [[xs]]

replicate_ :: Int -> a -> [a]
replicate_ 0 a = []
replicate_ n a | n > 0 = [a] ++ (replicate_ (n-1) a) 

index :: [a] -> Int -> a
index (x:xs) 0 = x
index (x:xs) n | n > 0 = index xs (n-1)

elem_ :: Eq a => a -> [a] -> Bool
elem_ a [] = False
elem_ a (x:xs) | a == x = True
               | otherwise = elem_ a xs
