import Table
import Test.HUnit

five_by_five = [[0,2,3,5,7], [2,4,6,10,14],[3,6,9,15,21],[5,10,15,25,35],[7,14,21,35,49]]

test_5_by_5_table = TestCase $ assertEqual "5 by 5" five_by_five (createTable 4)
