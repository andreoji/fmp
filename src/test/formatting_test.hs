import Formatting
import Test.HUnit

test_join = TestCase $ assertEqual "joins with a pipe" "2| 4| 6| 10| 14|\n"  (join [2,4,6,10,14])
test_format_with_leading_zero = TestCase $ assertEqual "formats a row with leading zero" "|  | 2| 3| 5| 7|\n"  (format [[0, 2,3,5,7]])
test_format_with_leading_n = TestCase $ assertEqual "formats a row with leading n" "| 2| 4| 6| 8| 10| 14|\n"  (format [[2,4,6,8,10,14]])
