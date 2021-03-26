import unittest
from code import validate_pin

class TestMethod(unittest.TestCase):
    def test_validate_pin(self):
        """
        Test that it can determine if string is valid pin
        """
        result = validate_pin("1234")
        self.assertEqual(result, True)
        result = validate_pin("123456")
        self.assertEqual(result, True)
        result = validate_pin("12345")
        self.assertEqual(result, False)
        result = validate_pin("123a")
        self.assertEqual(result, False)
        result = validate_pin("-1234")
        self.assertEqual(result, False)
        result = validate_pin("-12345")
        self.assertEqual(result, False)
if __name__ == '__main__':
    unittest.main()
