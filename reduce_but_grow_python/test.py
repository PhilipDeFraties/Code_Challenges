import unittest

from code import grow


class TestMethod(unittest.TestCase):
    def test_list_int(self):
        """
        Test that it can sum a list of integers
        """
        result = grow([1,2,3])
        self.assertEqual(result, 6)
        result = grow([4,5,6])
        self.assertEqual(result, 120)
        result = grow([10,10,1])
        self.assertEqual(result, 100)
        result = grow([1,5,6,10])
        self.assertEqual(result, 300)
        result = grow([10,10,10,10,10,10])
        self.assertEqual(result, 1000000)
if __name__ == '__main__':
    unittest.main()
