import unittest

from code import method


class TestMethod(unittest.TestCase):
    def test_list_int(self):
        """
        Test that it can sum a list of integers
        """
        result = method(3)
        self.assertEqual(result, 6)
        result = method(4)
        self.assertEqual(result, 10)
        result = method(5)
        self.assertEqual(result, 15)
        result = method(6)
        self.assertEqual(result, 21)
        result = method(10)
        self.assertEqual(result, 55)
