require 'minitest/autorun'
require_relative './code'
require 'pry'
class RemoveDupsTest < Minitest::Test
  def test_remove_dups
    nums1 = [1,1,2]
    remove_dups(nums1)
    assert_equal [1,2], nums1

    nums2 = [1,1,2,3,3,4,4]
    remove_dups(nums2)
    assert_equal [1,2,3,4], nums2
  end
end
