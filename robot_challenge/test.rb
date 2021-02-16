require 'minitest/autorun'
require_relative './code'
require 'pry'
class PlaygroundTest < Minitest::Test
  def test_bot_returned?
    assert_equal true, bot_returned?('GRGRGRG')
    assert_equal false, bot_returned?('GRGRGLG')
  end
end
