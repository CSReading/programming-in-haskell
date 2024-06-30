import Data.Char
alphas xs = length [x | x <- xs, (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z')]
count x xs = length [x' | x' <- xs, x == x']
count_2 x y xs = length [x' | x' <- xs, x == x' || y == x']

let2int_lower c = ord c - ord 'a'
int2let_lower n = chr (ord 'a' + n)
let2int_upper c = ord c - ord 'A'
int2let_upper n = chr (ord 'A' + n)

shift n c | isLower c = int2let_lower ((let2int_lower c + n) `mod` 26)
          | isUpper c = int2let_upper ((let2int_upper c + n) `mod` 26)
          | otherwise = c 

encode n xs = [shift n x | x <- xs]

positions x xs = [i | (x', i) <- zip xs [0..], x == x']

percent n m = (fromIntegral n) / (fromIntegral m) * 100
freqs xs = [percent (count_2 x y xs) n | (x, y) <- zip ['a'..'z'] ['A'..'Z']]
    where n = alphas xs

chisqr os es = sum [((o-e)^2)/e | (o,e) <- zip os es]
rotate n xs = drop n xs ++ take n xs

table :: [Float]
table = [8.1, 1.5, 2.8, 4.2, 12.7, 2.2, 2.0, 6.1, 7.0,
         0.2, 0.8, 4.0, 2.4, 6.7, 7.5, 1.9, 0.1, 6.0,
         6.3, 9.0, 2.8, 1.0, 2.4, 0.2, 2.0, 0.1]

crack xs = encode (-factor) xs
  where
    factor = head (positions (minimum chitab) chitab)
    chitab = [chisqr (rotate n table') table | n <- [0..26]]
    table' = freqs xs
