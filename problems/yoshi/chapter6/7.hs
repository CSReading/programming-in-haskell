merge :: (Ord a) => [a] -> [a] -> [a]
merge [] [] = []
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
  | x <= y = x : merge xs (y : ys)
  | otherwise = y : merge (x : xs) ys