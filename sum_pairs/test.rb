require 'minitest/autorun'
require './code.rb'
require 'pry'

class SumPairsTest < Minitest::Test
  # def test_sum_pairs_responds
  #   assert_equal true, sum_pairs([])
  # end

  def test_sum_pairs_finds_pairs
    assert_equal [[6,3]], sum_pairs([2, 6, 3, 9, 11], 9)
    assert_equal [[6,3], [2,7]], sum_pairs([2, 6, 3, 9, 11, 7], 9)
  end
end
