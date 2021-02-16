def bot_returned?(string)
  directions = {
    north: 0,
    east: 0,
    south: 0,
    west: 0
  }
  orientation = [:north, :east, :south, :west]
  input = string.split('')
  input.each do |char|
    if char == "G"
      directions[orientation.first] += 1
    elsif char == "R"
      orientation.rotate!(1)
    elsif char == "L"
      orientation.rotate!(-1)
    end
  end
  if directions[:north] == directions[:south] && directions[:east] == directions[:west]
    return true
  else
    return false
  end
end
