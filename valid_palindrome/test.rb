require 'minitest/autorun'
require './code'
require 'pry'

class ValidPalindromeTest < Minitest::Test
  def test_is_palindrome_responds
    assert_equal true, is_palindrome("")
  end

  def test_remove_non_alpha
    assert_equal "example1", remove_non_alpha("e!x a.m?pl;e1")
  end

  def test_is_palindrome
    assert_equal true, is_palindrome("A man, a plan, a canal: Panama")
    assert_equal false, is_palindrome("race a car")
  end
end
