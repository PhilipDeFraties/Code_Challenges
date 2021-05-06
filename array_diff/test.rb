require 'minitest/autorun'
require './code'
require 'pry'

class ArrayDiffTest < Minitest::Test
  # def test_array_diff_responds
  #   assert_equal true, array_diff([],[])
  # end

  def test_array_diff
    assert_equal [2], array_diff([1,2], [1])
    assert_equal [2,2], array_diff([1,2,2], [1])
    assert_equal [1], array_diff([1,2,2], [2])
    assert_equal [3], array_diff([1,2,3], [1,2])
    assert_equal [], array_diff([1,2,2], [1,2,2])
  end
end
