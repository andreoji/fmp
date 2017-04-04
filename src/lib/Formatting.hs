module Formatting
(
  join
) where

import Data.List (intersperse)

join :: [Int] -> String
join nums = (concat . intersperse "| " . map show $ nums) ++ "|\n"
