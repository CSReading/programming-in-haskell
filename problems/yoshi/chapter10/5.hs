adder :: IO ()
adder = do
  putStr "How many numbers? "
  n <- getLine
  numbers <- sequence (replicate (read n :: Int) getLine)
  putStrLn ("The total is " ++ show (sum (map read numbers :: [Int])))
