euclid :: Int -> Int -> Int
euclid m n | m == n = m
           | m < n = euclid m (n-m)
           | n < m = euclid (m-n) n
