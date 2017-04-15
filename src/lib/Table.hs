module Table
(
  createTable
, formatTable
)
where

import Primes
import Fibs
import Formatting

primesTable n = [(0:primes)] ++ [map (p*) (1:primes) | p <- primes]
  where
  primes = takeNPrimes n

fibsTable n = [(0:fibs)] ++ [map (f*) (1:fibs) | f <- fibs]
  where
  fibs = takeNFibs n

createTable :: Int -> [Char] -> [[Int]]
createTable n tableType
    | tableType == "primes" =  primesTable $ n
    | tableType == "fibs"   =  fibsTable $ n
    | otherwise  = error "Cannot evaluate table"


formatTable n tableType = putStrLn str
  where
  str = format t
  t = createTable n tableType 
