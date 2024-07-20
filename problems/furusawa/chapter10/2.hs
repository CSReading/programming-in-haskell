type Board = [Int]

putRow :: Int -> Int -> IO ()
putRow row num = do putStr (show row)
                    putStr ": "
                    putStrLn (concat (replicate num "*"))

putBoard :: Board -> IO ()
putBoard x | x == []   = return ()
           | otherwise = do putBoard (init x)
                            putRow (length x) (last x)

-- 以下は模範解答
-- putBoardを使った新しい関数を定義してそれを用いる（現在の要素が何番目かを引数に取る新しい関数）
_putBoard :: Board -> IO ()
_putBoard = _putBoard' 1
_putBoard' _ [] = return ()
_putBoard' r (x:xs) = do putRow r x
                         _putBoard' (r+1) xs