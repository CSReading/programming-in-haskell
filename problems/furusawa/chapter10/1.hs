putStr :: String -> IO ()
putStr [] = return ()
putStr x  = sequence_ [putChar c | c <- x]