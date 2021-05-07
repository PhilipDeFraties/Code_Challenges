require 'minitest/autorun'
require './code'
require 'pry'
class DigitalRootTest < Minitest::Test
  def test_digital_root
    assert_equal 6, digital_root(942)
  end
end
