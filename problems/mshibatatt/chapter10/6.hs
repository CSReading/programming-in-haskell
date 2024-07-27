import System.IO

getCh :: IO Char
getCh = do hSetEcho stdin False
           x <- getChar
           hSetEcho stdin True
           return x
readLineAux :: String -> IO String
readLineAux s = do x <- getCh
                   if x == '\n' then
                       do putChar x
                          return s
                   else if x == '\DEL' then
                       if null s then
                          readLineAux s
                       else 
                           do putChar '\b'
                              readLineAux (init s)
                   else 
                       do putChar x
                          readLineAux (s ++ [x])

readLine :: IO String
readLine = readLineAux ""
