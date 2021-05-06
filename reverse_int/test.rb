require 'minitest/autorun'
require './code'
require 'pry'

class ReverseIntegerTest < Minitest::Test
  # def test_reverse_responds
  #   assert_equal true, reverse(123)
  # end

  def test_reverse
    # assert_equal 123, reverse(321)
    assert_equal -123, reverse(-321)
  end
end
