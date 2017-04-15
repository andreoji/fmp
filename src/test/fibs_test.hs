import Fibs
import Test.HUnit

test_first_ten_fibs = TestCase $ assertEqual "first ten first" [0, 1, 1, 2, 3, 5, 8, 13, 21, 34] (takeNFibs 10)
main :: IO Counts
main = runTestTT $ TestList [test_first_ten_fibs]
