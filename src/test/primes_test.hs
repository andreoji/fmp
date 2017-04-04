import Primes
import Test.HUnit

test_empty_xs_with_ys = TestCase $ assertEqual "empty xs with ys" [2,4,6,8] (merge [] [2,4,6,8])
test_xs_with_empty_ys = TestCase $ assertEqual "ys" [3,6,9,12] (merge [3,6,9,12] [])
test_dedupes_xs_and_ys = TestCase $ assertEqual "dedupes xs and ys" [2,3,4,6,8,9,12] (merge [2,4,6,8] [3,6,9,12])
test_merges_and_dedupes_with_x_as_head = TestCase $ assertEqual "merges two lists in order with x as head" [2,3,4,6,8,9,12] (xmerge [2,4,6,8] [3,6,9,12])

test_merges_list_of_lists = TestCase $ assertEqual "merges list of lists" [2,3,4,6,8,9,12,16] (mergeAll [[2,4,6,8], [3,6,9,12], [4,8,12,16]])
