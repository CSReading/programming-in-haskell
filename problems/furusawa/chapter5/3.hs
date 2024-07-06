-- 関数gridの定義（2より）
grid x y = [(a, b) | a <- [0..x], b <- [0..y]]

square n = [(a, b) | (a, b) <- grid n n, a /= b]