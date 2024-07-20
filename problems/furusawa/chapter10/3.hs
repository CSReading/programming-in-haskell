type Board = [Int]

putRow :: Int -> Int -> IO ()
putRow row num = do putStr (show row)
                    putStr ": "
                    putStrLn (concat (replicate num "*"))

putBoard :: Board -> IO ()
putBoard [] = return ()
putBoard x  = sequence_ [putRow (length x - i) n | (i, n) <- zip [1..] x]
