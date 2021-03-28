require 'pry'
class Grid
  attr_reader :size, :placement, :layout
  def initialize(size, placement)
    @size = size
    @placement = placement
    @layout
  end

  def validate_size
    unless size.class == Integer && size.odd? == true && size.between?(3,99)
      get_input_for_size
      validate_size
    end
  end

  def validate_placement
    placement_options = ["TOP LEFT", "TOP RIGHT", "BOTTOM LEFT", "BOTTOM RIGHT"]
    unless placement_options.include?(@placement)
      get_input_for_placement
      validate_placement
    end
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
      p array.join
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
    if @placement == "TOP LEFT"
      grid.first.first.replace("p")
    elsif @placement == "TOP RIGHT"
      grid.first.last.replace("p")
    elsif @placement == "BOTTOM LEFT"
      grid.last.first.replace("p")
    elsif @placement == "BOTTOM RIGHT"
      grid.last.last.replace("p")
    end
  end

  def place_bot(grid)
    # find middle, account for array index starting at 0
    middle = ((@size + 1) / 2) - 1
    grid[middle][middle].replace("b")
  end
end
