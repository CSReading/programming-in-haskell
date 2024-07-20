adderHelper :: Int -> Int -> IO Int
adderHelper n total
  | n == 0 = do
      return total
  | otherwise = do
      x <- getLine
      adderHelper (n - 1) (total + (read x :: Int))

adder :: IO ()
adder = do
  putStr "How many numbers? "
  n <- getLine
  total <- adderHelper (read n :: Int) 0
  putStrLn ("The total is " ++ show total)