require 'minitest/autorun'
require './code'
require 'pry'

class FirstUniqCharTest < Minitest::Test
  # def test_first_uniq_char_responds
  #   assert_equal true, first_uniq_char('string')
  # end

  def test_first_uniq_char
    assert_equal 0, first_uniq_char("leetcode")
    assert_equal 2, first_uniq_char("loveleetcode")
    assert_equal -1, first_uniq_char("aabb")
  end
end
