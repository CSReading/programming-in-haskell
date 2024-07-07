map f = foldr (\x y -> f x : y) []

filter f = foldr (\x y -> if f x then x : y else y) []