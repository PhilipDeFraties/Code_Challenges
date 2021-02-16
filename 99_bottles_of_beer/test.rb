require 'minitest/autorun'
require_relative './code'
require 'pry'
class PlaygroundTest < Minitest::Test
  def test_sing
    expect 'text', sing
  end
end
