module Merge (merge) where

merge :: Ord a => [a] -> [a] -> [a]
merge [] [] = []
merge [] (x:xs) = x:xs
merge (x:xs) [] = x:xs
merge (x:xs) (y:ys) | x >= y    = y : (merge (x:xs) ys)
                    | otherwise = x : (merge xs (y:ys))
