module Table
(
  createTable
)
where

import Primes

primesTable n = [(0:primes)] ++ [map (p*) (1:primes) | p <- primes]
  where
  primes = takeNPrimes n

createTable n = primesTable(n)
