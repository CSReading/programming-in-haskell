euclid :: Int -> Int -> Int

euclid m n | m > n  = euclid n (m - n)
           | n > m  = euclid m (n - m)
           | m == n = m