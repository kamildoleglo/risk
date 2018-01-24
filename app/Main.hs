module Main where

import Risk

main :: IO ()
main = do
    x <- showOutcome $ successProb $ Battlefield 60 60 
    print x