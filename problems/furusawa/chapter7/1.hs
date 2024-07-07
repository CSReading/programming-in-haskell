func :: ([a] -> [b]) -> ((a -> Bool) -> [a] -> [a]) -> [b]
func f p xs =  map f (filter p xs)