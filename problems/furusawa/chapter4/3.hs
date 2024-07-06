-- 条件式による実装
safetail xs = if null xs then [] else tail xs

-- ガード付きの等式による実装
safetail xs | null xs   = [];
            | otherwise = tail xs;

-- パターンマッチによる実装
safetail [] = []
safetail (_:xs) = xs