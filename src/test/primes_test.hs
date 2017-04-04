import Primes
import Test.HUnit

test1 = TestCase $ assertEqual "empty xs with ys" [1,2,3] (merge [] [1,2,3])
test2 = TestCase $ assertEqual "xs with ys" [4,5,6] (merge [4,5,6] [])
test3 = TestCase $ assertEqual "xs with ys" [1,2,3,4,5,6] (merge [1,2,3] [4,5,6])
test4 = TestCase $ assertEqual "dedupes when y = x" [1,2,3,4,5,6] (merge [1,2,3] [2,3,4,5,6])
