require 'minitest/autorun'
require './code'
require 'pry'

class PlusOneTest < Minitest::Test
  # def test_it_responds
  #   assert_equal true, plus_one([])
  # end

  def test_plus_one
    assert_equal [1,2,4], plus_one([1,2,3])
  end
end
