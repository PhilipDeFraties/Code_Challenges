require 'minitest/autorun'
require './code'
require 'pry'

class MoveZeroesTest < Minitest::Test
  # def test_it_responds
  #   assert_equal true, move_zeroes([])
  # end

  def test_move_zeroes
    assert_equal [1,3,12,0,0], move_zeroes([0,1,0,3,12])
    assert_equal [0], move_zeroes([0])
  end
end
