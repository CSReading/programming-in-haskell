myInit :: [a] -> [a]
myInit [] = error "init: empty list"
myInit xs = take (length xs - 1) xs

myAnotherInit :: [a] -> [a]
myAnotherInit [] = error "init: empty list"
myAnotherInit xs = reverse (tail (reverse xs))