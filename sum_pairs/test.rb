require 'minitest/autorun'
require './code.rb'
require 'pry'

class SumPairsTest < Minitest::Test
  # def test_sum_pairs_responds
  #   assert_equal true, sum_pairs([])
  # end

  def test_sum_pairs_finds_pairs
    assert_equal [[3,6]], sum_pairs([2, 6, 3, 9, 11], 9)
    assert_equal [[2,7], [3,6]], sum_pairs([2, 6, 3, 9, 11, 7], 9)
    assert_equal [[-1, 8], [0, 7], [1, 6], [2, 5], [3, 4]], sum_pairs([1,6,2,5,7,8,-1,3,0,4], 7)
  end
end
