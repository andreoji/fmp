import Data.Char
import System.IO
import Table

isInteger :: String -> Bool

isInteger st
      | length st == 0 = error "Empty string. cannot evaluate"
      | length st == 1 = isNumber $ head st
      | otherwise = if isNumber (head st) == True then isInteger (tail st) else False

main = do
      putStr "Enter number of primes: "
      hFlush stdout
      num <- getLine
      if num == "0"
        then do putStrLn "Number must be greater than 0"
      else if isInteger num == True
        then do formatTable $ (read num :: Int)
        else putStrLn "Not an integer"
      return ()
