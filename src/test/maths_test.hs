import Test.HUnit
import Maths
test_xs_with_empty_ys = TestCase $ assertEqual "xs with empty ys" [2,3,5,7,11] ([2,3,5,7,11] \\ [])
test_empty_xs_with_ys = TestCase $ assertEqual "xs with empty ys" [2,4,6,8,10] ([] \\ [2,4,6,8,10])

main :: IO Counts
main = runTestTT $ TestList [test_xs_with_empty_ys
                            , test_empty_xs_with_ys]
