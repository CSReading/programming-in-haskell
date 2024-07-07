{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use foldr" #-}
import Prelude hiding (elem, and, concat, replicate, (!!))

and :: [Bool] -> Bool
and [] = True
and (x : xs) = x && and xs

concat :: [[a]] -> [a]
concat [] = []
concat (xs : xss) = xs ++ concat xss

replicate :: Int -> a -> [a]
replicate 0 _ = []
replicate n x = x : replicate (n - 1) x

(!!) :: [a] -> Int -> a
[] !! _ = error "index too large"
(x : _) !! 0 = x
(_ : xs) !! n = xs !! (n - 1)

elem :: Eq a => a -> [a] -> Bool
elem _ [] = False
elem y (x : xs) = x == y || elem y xs