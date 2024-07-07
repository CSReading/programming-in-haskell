import Prelude hiding (drop, init, length)

length :: [a] -> Int
length [] = 0
length (_ : xs) = 1 + length xs

drop :: Int -> [a] -> [a]
drop 0 xs = xs
drop _ [] = []
drop n (_ : xs) = drop (n - 1) xs

init :: [a] -> [a]
init [_] = []
init (x : xs) = x : init xs