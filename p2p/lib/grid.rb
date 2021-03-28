require 'pry'
class Grid
  attr_accessor :size, :princess_placement
  def initialize(size, princess_placement)
    @size = size
    @princess_placement = princess_placement
  end

  def validate_size
    unless size.class == Integer && size.odd? == true && size.between?(3,99)
      get_input_for_size
      validate_size
    end
  end

  def validate_princess_placement
    placement_options = ["TOP LEFT", "TOP RIGHT", "BOTTOM LEFT", "BOTTOM RIGHT"]
    unless placement_options.include?(@princess_placement)
      get_input_for_princess_placement
      validate_princess_placement
    end
  end


  def create_layout(size, princess_placement)
    # create arrays, size x size grid of arrays
    # empty spaces represented as "-"
    # princess placement in one corner represented as "p"
    # bot represented as "m" in center
  end

  def visualize_layout
    # print terminal-friendly display of @layout
  end

  private

  def get_input_for_size
    puts "Please enter an odd integer between 3 and 99"
    @size = gets.to_i
  end

  def get_input_for_princess_placement
    puts "choose which corner to place princess"
    puts "type one of the following: TOP LEFT, TOP RIGHT, BOTTOM LEFT, or BOTTOM RIGHT"
    @princess_placement = gets.chomp
  end
end
