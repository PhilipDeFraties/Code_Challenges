def reverse_string(arr)
  start = 0
  last = (arr.length - 1)
  while (start < last)
    beg_char = arr[start]
    arr[start] = arr[last]
    arr[last] = beg_char
    start += 1
    last -=1
  end
  return arr
end
