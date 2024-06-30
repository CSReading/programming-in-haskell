(||) :: Bool -> Bool -> Bool
b || c | b == c = b
       | otherwise = True