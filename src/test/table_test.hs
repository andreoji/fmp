import Table
import Test.HUnit

five_by_five_primes = [[0,2,3,5,7], [2,4,6,10,14],[3,6,9,15,21],[5,10,15,25,35],[7,14,21,35,49]]
five_by_five_fibs = [[0,1,1,2,3], [1,1,1,2,3], [1,1,1,2,3], [2,2,2,4,6], [3,3,3,6,9]]

test_5_by_5_primes_table = TestCase $ assertEqual "5 by 5 primes" five_by_five_primes (createTable 4 "primes")
test_5_by_5_fibs_table = TestCase $ assertEqual "5 by 5 fibs" five_by_five_fibs (createTable 4 "fibs")

main :: IO Counts
main = runTestTT $ TestList [test_5_by_5_primes_table
                            , test_5_by_5_fibs_table]
