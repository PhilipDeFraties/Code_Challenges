#!/bin/ruby

def displayPathtoPrincess(n,grid)
    directions = [find_vertical_direction(grid), find_lateral_direction(grid)]
    print_path_to_princess(directions, n)
end

def print_path_to_princess(directions, n)
    ((n-1)/2).times do
        puts "#{directions[0]}\n#{directions[1]}\n"
    end
end

def find_vertical_direction(grid)
    grid.first.include?('p') ? 'UP' : 'DOWN'
end

def find_lateral_direction(grid)
    grid.first[0] == 'p' || grid.last[-1] == 'p' ? 'LEFT' : 'RIGHT'
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)
