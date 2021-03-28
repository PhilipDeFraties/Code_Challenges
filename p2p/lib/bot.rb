class Bot
  attr_reader :grid
  def initialize(grid)
    @grid = grid
  end

  def print_path_to_princess
    directions = find_path_to_princess
    ((grid.count-1)/2).times do
        puts "#{directions[0]}\n#{directions[1]}\n"
    end
  end

  private

  def find_path_to_princess
    vertical = find_vertical_direction
    lateral = find_lateral_direction
    return [vertical, lateral]
  end

  def find_vertical_direction
    grid[0].include?('p') ? 'UP' : 'DOWN'
  end

  def find_lateral_direction
    grid.transpose.first.include?('p') ? 'LEFT' : 'RIGHT'
  end
end
