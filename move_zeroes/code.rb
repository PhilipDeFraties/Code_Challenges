def move_zeroes(arr)
  count = arr.count(0)
  arr.delete(0)
  count.times do
    arr << 0
  end
  return arr
end
