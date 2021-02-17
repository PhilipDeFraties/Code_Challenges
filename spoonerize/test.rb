require 'minitest/autorun'
require_relative './code'
require 'pry'
class PlaygroundTest < Minitest::Test
  def test_spoonerize
    assert_equal "bedding wells", spoonerize("wedding bells")
    assert_equal "pot nicking", spoonerize("not picking")
    assert_equal "belly jeans", spoonerize("jelly beans")
    assert_equal "cop porn", spoonerize("pop corn")
  end
end
