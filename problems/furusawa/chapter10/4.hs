import Data.Char
import Text.Read (readMaybe)

adder :: IO ()

newline :: IO ()
newline = putChar '\n'

getDigit :: IO Int
getDigit = do x <- getLine
              case readMaybe x of
                Just n -> return n
                Nothing -> do putStr "ERROR: Invalid digit"
                              newline
                              getDigit

adder' :: Int -> Int -> IO Int
adder' count sum = do x <- getDigit
                      if count == 1 then
                        return (sum + x)
                      else
                        adder' (count - 1) (sum + x)

adder = do putStr "How many numbers? "
           n <- getDigit
           sum <- adder' n 0
           putStr ("The total is " ++ show sum)
           newline
