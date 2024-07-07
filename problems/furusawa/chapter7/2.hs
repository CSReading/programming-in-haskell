import Prelude hiding (all, any, takeWhile, dropWhile)

all :: (a -> Bool) -> [a] -> Bool
all f []                 = True
all f (x:xs) | f x       = all f xs
             | otherwise = False

any :: (a -> Bool) -> [a] -> Bool
any f []                 = False
any f (x:xs) | f x       = True
             | otherwise = any f xs

takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile f []                 = []
takeWhile f (x:xs) | f x       = x : takeWhile f xs
                   | otherwise = []

dropWhile :: (a -> Bool) -> [a] -> [a]
dropWhile f []                 = []
dropWhile f (x:xs) | f x       = dropWhile f xs
                   | otherwise = x:xs
