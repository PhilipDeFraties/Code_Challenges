require './lib/grid'
require './lib/bot'
puts "Select any odd number from 3 to 99"
m = gets.to_i

puts "choose which corner to place princess"
puts "type TOP LEFT, TOP RIGHT, BOTTOM LEFT, or BOTTOM RIGHT"

princess_placement = gets.chomp
grid = Grid.new(m, princess_placement)

grid.validate_size
grid.validate_placement
grid.create_layout

puts "Here is your grid"
grid.visualize_layout

puts "To save the princess the robot takes the following steps:"
bot = Bot.new(grid.layout)
bot.print_path_to_princess
