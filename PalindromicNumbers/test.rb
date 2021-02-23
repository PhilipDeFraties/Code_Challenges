require 'minitest/autorun'
require_relative './code'
require 'pry'
class PalindromicNumbersTest < Minitest::Test
  def test_find_ints
    assert_equal [1, 2, 3, 4, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 29, 30, 31, 32], find_ints(0)
    assert_equal [209, 308, 407, 506, 605, 704, 803, 902, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017], find_ints(1000)
  end
end
