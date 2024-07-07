all_a :: (a -> Bool) -> [a] -> Bool
all_a _ [] = True
all_a p (x:xs) = (p x) && (all_a p xs)

any_b :: (a -> Bool) -> [a] -> Bool
any_b _ [] = False
any_b p (x:xs) = (p x) || (any_b p xs) 

takewhile_c :: (a -> Bool) -> [a] -> [a]
takewhile_c _ [] = []
takewhile_c p (x:xs) | p x = [x] ++ takewhile_c p xs
                     | otherwise = []

dropwhile_d :: (a -> Bool) -> [a] -> [a]
dropwhile_d _ [] = []
dropwhile_d p (x:xs) | p x = dropwhile_d p xs
                     | otherwise = x:xs


