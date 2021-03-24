require 'minitest/autorun'
require_relative './code'
require 'pry'
class RemoveValTest < Minitest::Test
  def test_remove_val
    nums = [1,1,2,3,4]
    assert_equal 3, remove_val(nums, 1)
    assert_equal [2,3,4], nums

    nums = [1,2,3,4,5,5,6,5,7,8]
    assert_equal 7, remove_val(nums, 5)
    assert_equal [1,2,3,4,6,7,8], nums
  end
end
