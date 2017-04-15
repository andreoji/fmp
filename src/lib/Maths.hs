module Maths
(
  (\\)
) where

xs \\ [] = xs
[] \\ ys = ys
(x:xs) \\ (y:ys) | x<y = x:(xs \\ (y:ys))
                 | x==y = xs \\ ys
                 | x>y = (x:xs) \\ ys
