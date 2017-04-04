module Primes
(
  merge
) where

merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs 
merge [] ys = ys 
merge (x:xs) (y:ys)
      | x<y = x:merge xs (y:ys)
      | x==y = x:merge xs ys 
      | x>y = y:merge (x:xs) ys
