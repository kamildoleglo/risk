module Main where

import Data.Maybe
import Text.Read
import Risk
import InOut


-- | Passes an arguments and prints the result - approximated odds of annihilation of defending army.
main :: IO ()
main = do
    line <- getLine
    if correctArg line then do
      let a = head ((map read (words line)) :: [Int])
      let b = last ((map read (words line)) :: [Int])
      x <- showOutcome $ successProb $ Battlefield a b
      print x
    else do
      putStrLn "Należy podać dwa argumenty (Int) - wielkości odpowiednio armii atakującej i broniącej."
      main
