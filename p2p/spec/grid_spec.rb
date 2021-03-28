require 'minitest/autorun'
require './lib/grid'
require 'pry'
require 'mocha/minitest'
class GridTest < Minitest::Test
  def setup
    @grid = Grid.new(3, "TOP LEFT")
  end

  def with_stdin
    stdin = $stdin
    $stdin, write = IO.pipe
    yield write
  ensure
    write.close
    $stdin = stdin
  end

  def test_it_exists_and_has_attrs
    assert_instance_of Grid, @grid
    assert_equal 3, @grid.size
    assert_equal "TOP LEFT", @grid.princess_placement
  end

  def test_it_validates_size_input
    # works with odd integers between 3 and 99
    @grid.validate_size
    assert_equal 3, @grid.size

    grid2 = Grid.new(5, "TOP LEFT")
    grid2.validate_size
    assert_equal 5, grid2.size

    grid3 = Grid.new(27, "TOP LEFT")
    grid3.validate_size
    assert_equal 27, grid3.size

    grid4 = Grid.new(99, "TOP LEFT")
    grid4.validate_size
    assert_equal 99, grid4.size

    # responds with message for new input for size if not int and rechecks

    grid5 = Grid.new("a", "TOP LEFT")
    with_stdin do |user|
      user.puts "3"
      grid5.validate_size
      assert_equal 3, grid5.size
    end

    # responds with message for new input for size if not odd and rechecks

    grid6 = Grid.new(4, "TOP LEFT")
    with_stdin do |user|
      user.puts "3"
      grid6.validate_size
      assert_equal 3, grid6.size
    end

    # responds with message for new input for size not in range and rechecks

    grid7 = Grid.new(1, "TOP LEFT")
    with_stdin do |user|
      user.puts "3"
      grid7.validate_size
      assert_equal 3, grid7.size
    end

    grid8 = Grid.new(101, "TOP LEFT")
    with_stdin do |user|
      user.puts "3"
      grid8.validate_size
      assert_equal 3, grid8.size
    end
  end

  def test_it_validates_princess_placement
    # each of the foor possible options works
    @grid.validate_princess_placement
    assert_equal "TOP LEFT", @grid.princess_placement

    grid2 = Grid.new(5, "TOP RIGHT")
    grid2.validate_princess_placement
    assert_equal "TOP RIGHT", grid2.princess_placement

    grid3 = Grid.new(27, "BOTTOM LEFT")
    grid3.validate_princess_placement
    assert_equal "BOTTOM LEFT", grid3.princess_placement

    grid4 = Grid.new(99, "BOTTOM RIGHT")
    grid4.validate_princess_placement
    assert_equal "BOTTOM RIGHT", grid4.princess_placement

    # responds with a message for new input for princess placement if not one of
    # the four options and rechecks

    grid5 = Grid.new(3, "TOP MIDDLE")
    with_stdin do |user|
      user.puts "TOP LEFT"
      grid5.validate_princess_placement
      assert_equal "TOP LEFT", grid5.princess_placement
    end
  end
end
