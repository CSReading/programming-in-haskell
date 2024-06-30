-- condition 
safetail_a :: [a] -> [a]
safetail_a xs = if null xs then [] else tail xs

-- equation with guard 
safetail_b :: [a] -> [a]
safetail_b xs | null xs = [] 
              | otherwise = tail xs

-- pattern match 
safetail_c :: [a] -> [a]
safetail_c [] = []
safetail_c (_:xs) = xs
