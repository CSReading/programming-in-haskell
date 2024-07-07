-- n が負の場合, 停止しなくなるためその場合はエラーを返す.
fac :: Int -> Int
fac 0 = 1
fac n
  | n < 0 = error "fac: negative argument"
  | otherwise = n * fac (n - 1)