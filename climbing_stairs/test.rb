require 'minitest/autorun'
require './code'
require 'pry'

class ClimbingStairsTest < Minitest::Test
  # def test_climbing_stairs_responds
  #   assert_equal true, climbing_stairs(2)
  # end

  def test_climbing_stairs
    assert_equal 2, climbing_stairs(2)
    assert_equal 3, climbing_stairs(5)
  end
end
