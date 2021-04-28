require 'minitest/autorun'
require './code'
require 'pry'

class ReverseStringTest < Minitest::Test
  def test_it_can_reverse_string
    assert_equal ["o","l","l","e","h"], reverse_string(["h","e","l","l","o"])
  end
end
