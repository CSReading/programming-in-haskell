(^) :: Int -> Int -> Int
m ^ 0 = 1
m ^ n | n > 0 = m * (m Main.^ (n-1))
