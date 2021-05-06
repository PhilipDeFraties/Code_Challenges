require 'minitest/autorun'
require './code'
require 'pry'

class MostFrequentWordsTest < Minitest::Test
  # def test_it_responds
  #   assert_equal true, most_frequent_words('string')
  # end

  def test_seperate_words
    assert_equal ["this", "is", "a", "test"], seperate_words("this is a test")
  end

  def test_most_frequent_words
    # assert_equal ["e", "ddd", "aa"], most_frequent_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
    assert_equal ["won't", "wont"], most_frequent_words("  //wont won't won't")
  end
end
