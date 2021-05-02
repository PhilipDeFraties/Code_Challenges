require 'minitest/autorun'
require './code'
require 'pry'

class TwoSumTest < Minitest::Test
  # def test_two_sum_responds
  #   assert_equal true, two_sum([])
  # end

  def test_two_sum_returns_indices_of_ints_that_add_to_target
    assert_equal [0,1], two_sum([2,7,11,15], 9)
    assert_equal [1,2], two_sum([3,2,4], 6)
    assert_equal [0,1], two_sum([3,3], 6)
  end
end
