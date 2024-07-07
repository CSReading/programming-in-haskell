{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Redundant lambda" #-}
import Prelude hiding (curry, uncurry)

curry :: ((a, b) -> c) -> a -> b -> c
curry f = \x y -> f (x, y)

uncurry :: (a -> b -> c) -> (a, b) -> c
uncurry f = \(x, y) -> f x y