import Data.Char
adder :: IO ()
adder = do n <- getDigit "How many numbers? "
           xs <- sequence [getDigit "" | _ <- [1..n]]
           putStr "The total is "
           putStrLn (show (sum xs))

getDigit :: String -> IO Int
getDigit prompt = do putStr prompt
                     xs <- getLine
                     if and [isDigit x | x <- xs] then
                        return (read [x | x <- xs, x /= '\n'] :: Int)
                     else 
                        do putStrLn "ERROR: Invalid digit"
                           getDigit prompt
