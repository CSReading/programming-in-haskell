data Nat = Zero | Succ Nat
        deriving (Eq, Ord, Show, Read)

add :: Nat -> Nat -> Nat
add Zero     n = n
add (Succ m) n = Succ (add m n)

mult :: Nat -> Nat -> Nat
mult Zero     n = Zero
mult (Succ m) n = add (mult m n) n
