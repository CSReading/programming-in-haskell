second xs = head (tail xs)
:type second
second :: [a] -> a

swap (x, y) = (y, x)
:type swap
swap :: (b, a) -> (a, b)

pair x y = (x, y)
:type pair
pair :: a -> b -> (a, b)

double  x = x*2
:type double
double :: Num a => a -> a

palindrome xs = reverse xs == xs
:type palindrome 
palindrome :: Eq a => [a] -> Bool

twice f x = f (f x)
:type twice
twice :: (t -> t) -> t -> t
