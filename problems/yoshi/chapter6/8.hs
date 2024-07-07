import Merge (merge)

halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

msort :: (Ord a) => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort ys) (msort zs)
  where
    (ys, zs) = halve xs