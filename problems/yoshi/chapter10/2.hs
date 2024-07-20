type Board = [Int]

putRow :: Int -> Int -> IO ()
putRow row num = do
  putStr (show row)
  putStr ": "
  putStrLn (concat (replicate num "* "))

putBoard :: Int -> Board -> IO ()
putBoard _ [] = return ()
putBoard current (x : xs) = do
  putRow current x
  putBoard (current + 1) xs
