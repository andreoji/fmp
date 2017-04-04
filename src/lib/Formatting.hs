module Formatting
(
  join
, format
) where

import Data.List (intersperse)

join :: [Int] -> String
join nums = (concat . intersperse "| " . map show $ nums) ++ "|\n"

format [] = []
format ((0:xs):xss) = "|  | " ++ join xs ++ format(xss)
format (xs:xss) = "| " ++ join xs ++ format(xss)
