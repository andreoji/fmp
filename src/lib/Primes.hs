module Primes
(
  merge
, xmerge
, mergeAll
) where

mergeAll :: Ord a => [[a]] -> [a]
mergeAll (xs:xss) = xmerge xs (mergeAll xss)
mergeAll [] = []

merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs 
merge [] ys = ys 
merge (x:xs) (y:ys)
      | x<y = x:merge xs (y:ys)
      | x==y = x:merge xs ys 
      | x>y = y:merge (x:xs) ys

xmerge (x:xs) ys = x:merge xs ys
