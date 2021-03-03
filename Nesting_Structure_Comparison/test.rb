require 'minitest/autorun'
require_relative './code'
require 'pry'
class SameStructureAsTest < Minitest::Test
  def test_it_compares_array_structures
    assert_equal true, [1,[1,1]].same_structure_as([2,[2,2]])
    assert_equal false, [1,[1,1]].same_structure_as([[2,2],2])
    assert_equal true, [1,[1,1],1].same_structure_as([2,[2,2],2])
    assert_equal false, [[1,1],1,1].same_structure_as([2,[2,2],2])
    assert_equal true, [1,1,[1,1,1,[1,1]]].same_structure_as([2,2,[2,2,2,[2,2]]])
    assert_equal false, [1,[1,1]].same_structure_as([2,[2]])
    assert_equal true, [1,'[',']'].same_structure_as(['[',']',1])
  end
end
