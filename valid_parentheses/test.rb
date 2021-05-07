require 'minitest/autorun'
require './code'

class ValidParensTest < Minitest::Test
  def test_valid_parens
    assert_equal true, valid_parens?('(())((()())())')
    assert_equal false, valid_parens?(")(()))")
  end
end
