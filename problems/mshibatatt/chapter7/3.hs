map_ f = foldr (\x xs -> f x : xs) [] 
filter_ p = foldr (\x xs -> if p x then x:xs else xs) []
