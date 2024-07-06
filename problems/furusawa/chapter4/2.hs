-- headとtailによる実装
third xs = head (tail (tail xs))
third xs = tail tail head xs -- これはだめ

-- リストのインデックス演算子!!による実装
third xs = xs !! 2

-- パターンマッチによる実装
third (_: _: x: _) = x