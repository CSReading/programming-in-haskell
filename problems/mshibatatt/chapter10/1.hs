putStr_ :: String -> IO ()
putStr_ s = sequence_ [putChar c | c <- s]
