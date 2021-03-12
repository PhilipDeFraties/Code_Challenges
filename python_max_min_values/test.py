import unittest
from code import minimum, maximum

class TestMethod(unittest.TestCase):
    def test_list_int(self):
        """
        Test that it can sum a list of integers
        """
        result = minimum([-52, 56, 30, 29, -54, 0, -110])
        self.assertEqual(result, -110)
        result = maximum([-52, 56, 30, 29, -54, 0, -110])
        self.assertEqual(result, 56)
if __name__ == '__main__':
    unittest.main()
