class Grid
  attr_reader :size, :placement, :layout
  PLACEMENT_OPTIONS = ["TOP LEFT", "TOP RIGHT", "BOTTOM LEFT", "BOTTOM RIGHT"]
  def initialize(size, placement)
    @size = size
    @placement = placement
    @layout = nil
  end

  def validate_size
    return if size.class == Integer && size.odd? && size.between?(3,99)

    get_input_for_size
    validate_size
  end

  def validate_placement
    return if Grid::PLACEMENT_OPTIONS.include?(@placement)
    
    get_input_for_placement
    validate_placement
  end

  def create_layout
    # create grid, size x size arrays of "-"
    @layout = Array.new(@size) { Array.new(@size) { "-" } }
    place_princess(@layout)
    place_bot(@layout)
  end

  def visualize_layout
    # print terminal-friendly display of @layout
    @layout.each do |array|
      puts array.join
    end
  end

  private

  def get_input_for_size
    puts "Please enter an odd integer between 3 and 99"
    @size = gets.to_i
  end

  def get_input_for_placement
    puts "choose which corner to place princess"
    puts "type one of the following: TOP LEFT, TOP RIGHT, BOTTOM LEFT, or BOTTOM RIGHT"
    @placement = gets.chomp
  end

  def place_princess(grid)
    case @placement
    when "TOP LEFT"
      grid.first.first.replace("p")
    when "TOP RIGHT"
      grid.first.last.replace("p")
    when "BOTTOM LEFT"
      grid.last.first.replace("p")
    when "BOTTOM RIGHT"
      grid.last.last.replace("p")
    else
      "raise an error here for invalid input"
    end
  end

  def place_bot(grid)
    # find middle, account for array index starting at 0
    middle = ((@size + 1) / 2) - 1
    grid[middle][middle].replace("b")
  end
end
