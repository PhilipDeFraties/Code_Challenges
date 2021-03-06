require 'minitest/autorun'
require_relative './code'
require 'pry'
class BestMatchTest < Minitest::Test
  # def test_it_returns_int
  #   assert_equal 1, best_match(1)
  # end
  def test_it_returns_index_of_best_loss
    assert_equal 1, best_match([6,4], [1,2])
    assert_equal 4, best_match([1,2,3,4,5], [0,1,2,3,4])
    assert_equal 2, best_match([3, 4, 3],[1, 1, 2])
    assert_equal 3, best_match([11, 16, 18, 3, 13, 17, 12, 3, 14, 17, 9, 11, 15],[9, 7, 8, 2, 7, 8, 7, 1, 4, 10, 2, 5, 8])
    assert_equal 0, best_match([4, 10, 4, 12, 2], [2, 5, 2, 3, 0])
  end
end
