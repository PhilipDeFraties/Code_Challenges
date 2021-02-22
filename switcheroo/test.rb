require 'minitest/autorun'
require_relative './code'
require 'pry'
class PlaygroundTest < Minitest::Test
  def test_switcheroo
    assert_equal "bbabcabb", switcheroo("aabacbaa")
    assert_equal "bca", switcheroo("acb")
    assert_equal "ccc", switcheroo("ccc")
  end
end
