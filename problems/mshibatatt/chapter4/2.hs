-- using head and tail
third_a :: [a] -> a
third_a xs = head (tail (tail xs))

-- using index
third_b :: [a] -> a
third_b xs = xs !! 2

-- using pattern match
third_c :: [a] -> a
third_c (_:_:x:_) = x
