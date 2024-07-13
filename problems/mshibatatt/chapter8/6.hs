data Expr = Val Int | Add Expr Expr

folde :: (Int -> a) -> (a -> a -> a) -> Expr -> a
folde f g (Val x) = f x
folde f g (Add h i) = g (folde f g h) (folde f g i)

eval :: Expr -> Int
eval (Val x) = x
eval (Add x y) = add (eval x) (eval y)

size :: Expr -> Int
size (Val _) = 1
size (Add x y) = size x + size y
