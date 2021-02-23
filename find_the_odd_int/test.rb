require 'minitest/autorun'
require_relative './code'
require 'pry'
class FindItTest < Minitest::Test
  def test_find_it
    assert_equal 5, find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
    assert_equal -1, find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
    assert_equal 5, find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
    assert_equal 10, find_it([10])
    assert_equal 10, find_it([1,1,1,1,1,1,10,1,1,1,1])
  end
end
