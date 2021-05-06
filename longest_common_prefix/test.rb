require 'minitest/autorun'
require './code'
require 'pry'

class LongestCommonPrefixTest < Minitest::Test
  # def test_longest_common_prefix_responds
  #   assert_equal true, longest_common_prefix([])
  # end

  def test_longest_common_prefix
    assert_equal "fl", longest_common_prefix(["flower","flow","flight"])
    assert_equal "", longest_common_prefix(["dog","racecar","car"])
    assert_equal "a", longest_common_prefix(["aa","ab"])
  end
end
