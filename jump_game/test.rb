require 'minitest/autorun'
require './code'
require 'pry'

class JumpGameTest < Minitest::Test
  # def test_it_responds
  #   assert_equal true, can_jump([])
  # end

  def test_can_jump
    assert_equal true, can_jump([2,3,1,1,4])
    assert_equal false, can_jump([3,2,1,0,4])
    assert_equal true, can_jump([2,5,0,0])
  end
end
