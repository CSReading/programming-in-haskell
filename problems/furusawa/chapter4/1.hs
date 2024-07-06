halve xs = (take ((length xs) `div` 2) xs, drop ((length xs) `div` 2) xs)

halve [1, 2, 3, 4, 5, 6]
-- ([1,2,3],[4,5,6])

halve xs = (take (length xs `div` 2) xs, drop (length xs `div` 2) xs) -- これは行ける
halve xs = (take length xs `div` 2 xs, drop length xs `div` 2 xs) -- これはNG