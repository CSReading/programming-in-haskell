dec2int :: [Int] -> Int
dec2int xs = foldl (\x y -> 10 * x + y) 0 xs