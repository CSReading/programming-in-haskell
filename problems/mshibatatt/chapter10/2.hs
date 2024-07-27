type Board = [Int]

putRow :: Int -> Int -> IO ()
putRow row num = do putStr (show row)
                    putStr ": "
                    putStrLn (concat (replicate num "* "))

putBoardAux :: Int -> Board -> IO ()
putBoardAux _ [] = return ()
putBoardAux n (x:xs) = do putRow n x
                          putBoardAux (n+1) xs


putBoard :: Board -> IO ()
putBoard b = putBoardAux 1 b
