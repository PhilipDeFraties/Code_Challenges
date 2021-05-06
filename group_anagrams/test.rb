require 'minitest/autorun'
require './code'
require 'pry'

class GroupAnagramsTest < Minitest::Test
  # def test_it_responds
  #   assert_equal true, group_anagrams([])
  # end

  def test_group_anagrams
    assert_equal [["bat"],["nat","tan"],["ate","eat","tea"]], group_anagrams(["eat","tea","tan","ate","nat","bat"])
  end
end
