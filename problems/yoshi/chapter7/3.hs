map :: (a -> a) -> [a] -> [a]
map _ [] = []
map f xs = foldr (\x acc -> f x : acc) [] xs

filter :: (a -> Bool) -> [a] -> [a]
filter _ [] = []
filter p xs = foldr (\x acc -> if p x then x : acc else acc) [] xs