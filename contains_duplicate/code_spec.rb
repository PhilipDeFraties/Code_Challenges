require 'minitest/autorun'
require_relative './code'
require 'pry'
class DecipherMessageTest < Minitest::Test
  def test_it_determines_uniqueness
    assert_equal true, contains_duplicate([1,1,2,3])
    assert_equal false, contains_duplicate([1,2,3,4])
  end
end
