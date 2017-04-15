import Data.Char
import System.IO
import Table

isInteger :: String -> Bool

isInteger st
      | length st == 0 = error "Empty string. cannot evaluate"
      | length st == 1 = isNumber $ head st
      | otherwise = if isNumber (head st) == True then isInteger (tail st) else False

isValidType :: String -> Bool
isValidType st
      | length st == 0 = error "Empty string. cannot evaluate"
      | st == "primes" = True
      | st == "fibs" = True
      | otherwise = False

main = do
      putStr "Enter number: "
      hFlush stdout
      num <- getLine
      if num == "0"
        then do putStrLn "Number must be greater than 0"
      else if isInteger num == True
        then do putStr "Enter primes or fibs:"
                hFlush stdout
                tableType <- getLine
                if isValidType tableType == True
                  then do let number = (read num :: Int)
                          formatTable number tableType
                else putStrLn "Not valid table type"
      else putStrLn "Not an integer"
      return ()
