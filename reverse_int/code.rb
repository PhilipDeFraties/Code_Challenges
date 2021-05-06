def reverse(num)
  new_num = num.to_s.reverse.to_i
  num.negative? ? (new_num * -1) : new_num
end
