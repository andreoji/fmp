import Primes
import Test.HUnit

test_empty_xs_with_ys = TestCase $ assertEqual "empty xs with ys" [2,4,6,8] (merge [] [2,4,6,8])
test_xs_with_empty_ys = TestCase $ assertEqual "xs with empty ys" [3,6,9,12] (merge [3,6,9,12] [])
test_dedupes_xs_and_ys = TestCase $ assertEqual "dedupes xs and ys" [2,3,4,6,8,9,12] (merge [2,4,6,8] [3,6,9,12])
test_merges_and_dedupes_with_x_as_head = TestCase $ assertEqual "merges two lists in order with x as head" [2,3,4,6,8,9,12] (xmerge [2,4,6,8] [3,6,9,12])

test_merges_list_of_lists = TestCase $ assertEqual "merges list of lists" [2,3,4,6,8,9,12,16] (mergeAll [[2,4,6,8], [3,6,9,12], [4,8,12,16]])

test_takes_n_prime_numbers = TestCase $ assertEqual "takes n primes" [2,3,5,7,11] (takeNPrimes 5)

main :: IO Counts
main = runTestTT $ TestList [test_empty_xs_with_ys
                            , test_xs_with_empty_ys
                            , test_dedupes_xs_and_ys
                            , test_merges_and_dedupes_with_x_as_head
                            , test_merges_list_of_lists
                            , test_takes_n_prime_numbers] 
