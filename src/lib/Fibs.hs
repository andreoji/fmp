module Fibs
(
  takeNFibs
) where

fibs :: [Int]
fibs = 1:1:zipWith (+) fibs (tail fibs)

takeNFibs :: Int -> [Int]
takeNFibs n =  take n fibs
