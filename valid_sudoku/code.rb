def is_valid_sudoku(board)
  rows = board
  columns = board.transpose
  arrays = split_grid(board)
  boxes = format_boxes(arrays[0]) + format_boxes(arrays[1]) + format_boxes(arrays[2])
  [rows,columns,boxes].each do |collection|
    collection.each do |array|
      line = remove_periods(array)
      if is_valid_line?(line) == false
        return false
      end
    end
  end
  return true
end

def is_valid_line?(array)
  if array.count == array.uniq.count
    return true
  else
    return false
  end
end

def remove_periods(array)
  array.delete(".")
  return array
end

def format_boxes(arrays)
  start = 0
  finish = 2
  boxes = []
  3.times do
    box = []
    arrays.each do |array|
      box << array[start..finish]
    end
    boxes << box.flatten
    start += 3
    finish += 3
  end
  return boxes
end

def split_grid(grid)
  start = 0
  finish = 2
  arrays = []
  3.times do
    arrays << grid[start..finish].map {|array| array}
    start += 3
    finish += 3
  end
  return arrays
end
