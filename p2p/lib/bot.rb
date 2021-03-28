class Bot
  attr_reader :grid
  def initialize(grid)
    @grid = grid
  end

  def find_path_to_princess
    size = grid.count
    if grid[0][0] == 'p'
      ((size-1)/2).times do
        puts 'UP'
        puts 'LEFT'
      end
    elsif grid[size-1][0] == 'p'
      ((size-1)/2).times do
        puts 'DOWN'
        puts 'LEFT'
      end
    elsif grid[0][size-1] == 'p'
      ((size-1)/2).times do
        puts 'UP'
        puts 'RIGHT'
      end
    elsif grid[size-1][size-1] == 'p'
      ((size-1)/2).times do
        puts 'DOWN'
        puts 'RIGHT'
      end
    end
  end
end
