require 'minitest/autorun'
require_relative './code'
require 'pry'
class DecipherMessageTest < Minitest::Test
  def test_it_deciphers_message
    assert_equal "Answer to Number 5 Part b", decipher_message("ArNran u rstm5twob  e ePb")
  end
end
