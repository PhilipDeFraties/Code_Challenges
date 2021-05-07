require 'minitest/autorun'
require './code'

class TenMinuteWalkTest < Minitest::Test
  def test_is_valid_walk
    assert_equal true, is_valid_walk?(['n','s','n','s','n','s','n','s','n','s'])
    assert_equal false, is_valid_walk?(['w','e','w','e','w','e','w','e','w','e','w','e'])
  end
end
