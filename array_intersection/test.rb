require 'minitest/autorun'
require './code'
require 'pry'

class IntersectTest < Minitest::Test
  # def test_intersect_responds
  #   assert_equal true, intersect([])
  # end

  def test_intersect
    assert_equal [2,2], intersect([1,2,2,1], [2,2])
    assert_equal [4,9], intersect([4,9,5], [9,4,9,8,4])
  end
end
