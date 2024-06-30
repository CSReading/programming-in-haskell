myLast :: [a] -> a
myLast [] = error "Empty list"
myLast xs = head (reverse xs)

myAnotherLast :: [a] -> a
myAnotherLast [] = error "Empty list"
myAnotherLast xs = head (drop (length xs - 1) xs)