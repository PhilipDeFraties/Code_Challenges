require 'minitest/autorun'
require_relative './code'
require 'pry'

class RotateArrayTest < Minitest::Test
  def test_it_rotates_array
    assert_equal [3,1,2], rotate([1,2,3], 1)
  end
end
