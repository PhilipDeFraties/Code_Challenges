require 'minitest/autorun'
require_relative './code'
require 'pry'
class RomanNumeralsTest < Minitest::Test
  def test_it_returns_correct_ints
    assert_equal 4, roman_numeral('IV')
    assert_equal 11, roman_numeral('XI')
    assert_equal 2008, roman_numeral('MMVIII')
    assert_equal 1666, roman_numeral('MDCLXVI')
  end
end
