import Data.Char
adder :: IO ()
adder = do n <- getDigit "How many numbers? "
           adderAux n 0

adderAux :: Int -> Int -> IO ()
adderAux 0 s = do putStr "The total is "
                  putStrLn (show s)
adderAux n s = do m <- getDigit ""
                  adderAux (n-1) (s+m)

getDigit :: String -> IO Int
getDigit prompt = do putStr prompt
                     xs <- getLine
                     if and [isDigit x | x <- xs] then
                        return (read [x | x <- xs, x /= '\n'] :: Int)
                     else 
                        do putStrLn "ERROR: Invalid digit"
                           getDigit prompt

