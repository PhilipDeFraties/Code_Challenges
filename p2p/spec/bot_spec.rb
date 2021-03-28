require 'minitest/autorun'
require './lib/bot'
require './lib/grid'
require 'pry'
class BotTest < Minitest::Test
  def setup
    grid = Grid.new(3, "TOP LEFT")
    grid.create_layout
    @bot = Bot.new(grid.layout)
  end

  def test_it_exists_with_attrs
    assert_instance_of Bot, @bot
    assert_equal [["p", "-", "-"], ["-", "b", "-"], ["-", "-", "-"]], @bot.grid
  end

  def test_it_gives_path_to_princess
    assert_output("UP\nLEFT\n") { @bot.print_path_to_princess }
  end
end
