require 'minitest/autorun'
require_relative './code'
require 'pry'
class PlaygroundTest < Minitest::Test
  def test_sing
    assert_equal true, bot_returned?('GRGRGRG')
    
  end
end
