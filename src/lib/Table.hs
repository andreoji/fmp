module Table
(
  createTable
, formatTable
)
where

import Primes
import Formatting

primesTable n = [(0:primes)] ++ [map (p*) (1:primes) | p <- primes]
  where
  primes = takeNPrimes n

createTable n = primesTable(n)

formatTable n = putStrLn str
  where
  str = format t
  t = createTable n
