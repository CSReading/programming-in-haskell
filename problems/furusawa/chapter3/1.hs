:type ['a', 'b', 'c']
-- ['a', 'b', 'c'] :: [Char]

:type ('a', 'b', 'c')
-- ('a', 'b', 'c') :: (Char, Char, Char)

:type [(False, '0'), (True, '1')]
-- [(False, '0'), (True, '1')] :: [(Bool, Char)]

:type ([False, True], ['0', '1'])
-- ([False,True],"01")

:type ([False, True], ['0', '1'])
-- ([False, True], ['0', '1']) :: ([Bool], [Char])

:type [tail, init, reverse]
-- [tail, init, reverse] :: [[a] -> [a]]
