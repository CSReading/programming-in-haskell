listCompresion :: (a -> a) -> (a -> Bool) -> [a] -> [a]
listCompresion _ _ [] = []
listCompresion f p xs = map f (filter p xs)