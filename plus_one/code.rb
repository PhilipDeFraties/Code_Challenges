def plus_one(arr)
  int_string = arr.join
  (int_string.to_i + 1).digits.reverse
end
