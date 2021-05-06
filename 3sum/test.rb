require 'minitest/autorun'
require './code'
require 'pry'

class ThreeSumTest < Minitest::Test
  # def test_it_responds
  #   assert_equal true, three_sum([])
  # end

  def test_three_sum
    assert_equal [[-1,-1,2],[-1,0,1]], three_sum([-1,0,1,2,-1,-4])
    assert_equal [], three_sum([])
    assert_equal [], three_sum([0])
  end
end
