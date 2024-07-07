replicate_c :: Int -> a -> [a]
replicate_c n x = [x | _ <- [1..n]]
