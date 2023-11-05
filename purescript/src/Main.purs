module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List (range, filter)
import Data.Foldable (sum)
import Data.Semigroup ((<>))


p001 :: Int -> Int
p001 n = sum (filter (\i -> mod i 3 == 0 || mod i 5 == 0) (range 1 (n - 1)))


main :: Effect Unit
main = do
  log ("p001: " <> show (p001 1000))
  log ("Done")
