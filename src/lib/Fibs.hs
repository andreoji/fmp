module Fibs
(
  takeNFibs
) where

fibs :: [Integer]
fibs = 1:1:zipWith (+) fibs (tail fibs)

takeNFibs :: Int -> [Integer]
takeNFibs n =  take n fibs
