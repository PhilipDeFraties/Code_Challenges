require 'minitest/autorun'
require_relative './array_flattener.rb'
require 'pry'
class ArrayFlattenerTest < Minitest::Test
  def test_it_takes_argument
    assert_equal [1,2,3], array_flattener([1,2,3])
  end

  def test_it_returns_flattened_array
    assert_equal [1,2,3], array_flattener([1,[2,3]])
    assert_equal [1,2,3,4], array_flattener([[1,2],[3,4]])
  end
end
