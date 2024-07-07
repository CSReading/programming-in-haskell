import Prelude hiding (all, any, dropWhile, takeWhile)

all :: (a -> Bool) -> [a] -> Bool
all p = foldr (\x acc -> p x && acc) True

any :: (a -> Bool) -> [a] -> Bool
any p = foldr (\x acc -> p x || acc) False

takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile _ [] = []
takeWhile p (x : xs)
  | p x = x : takeWhile p xs
  | otherwise = []

dropWhile :: (a -> Bool) -> [a] -> [a]
dropWhile _ [] = []
dropWhile p (x : xs)
  | p x = dropWhile p xs
  | otherwise = x : xs