third_1 :: [a] -> a
third_1 xs = head (tail (tail xs))

third_2 :: [a] -> a
third_2 xs = xs !! 2

third_3 :: [a] -> a
third_3 (_:_:x:_) = x

