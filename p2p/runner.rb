require './grid'
require './bot'
puts "Select any odd number from 3 to 99"
m = gets.to_i

puts "choose which corner to place princess"
puts "type TOP LEFT, TOP RIGHT, BOTTOM LEFT, or BOTTOM RIGHT"

princess_placement = gets.chomp
grid = Grid.new(m, princess_placement)

grid.validate_size
grid.validate_placement

puts "Here is your grid"
grid.visualize_layout

puts "To save the princess the robot takes the following steps:"
bot = Bot.new(grid.create_layout)
bot.save_princess
bot.path_to_princess
