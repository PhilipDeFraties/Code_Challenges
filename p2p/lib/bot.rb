class Bot
  attr_reader :grid
  def initialize(grid)
    @grid = grid
    @path = []
  end

  def save_princess
    # move bot through grid to princess's position, record steps as strings in @path accumulator
  end

  def path_to_princess
    # print out each step in @path accumulator to terminal 
  end
end
