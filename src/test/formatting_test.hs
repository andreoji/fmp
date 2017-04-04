import Formatting
import Test.HUnit

test_join = TestCase $ assertEqual "joins with a pipe" "2| 4| 6| 10| 14|\n"  (join [2,4,6,10,14])
