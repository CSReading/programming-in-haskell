import System.IO (hSetEcho, stdin)

readLine :: IO String
readLine = do
  hSetEcho stdin False
  readLineHelper ""
  where
    readLineHelper input = do
      x <- getChar
      case x of
        '\n' -> do
          putChar '\n'
          return input
        '\DEL' ->
          if null input
            then readLineHelper input
            else do
              putStr "\b \b"
              readLineHelper (init input)
        '\b' ->
          if null input
            then readLineHelper input
            else do
              putStr "\b \b"
              readLineHelper (init input)
        _ -> do
          putChar x
          readLineHelper (input ++ [x])