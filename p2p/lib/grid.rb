require 'pry'
class Grid
  attr_accessor :layout
  def initialize(size, princess_placement)
    validate_size(size)
    validate_princess_placement(princess_placement)
    @layout = create_layout(size, placement)
  end

  def validate_size(size)
    # check to make sure size is odd, positive int
  end

  def validate_princess_placement(princess_placement)
    # check to make sure placement is one of 4 options
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
end
