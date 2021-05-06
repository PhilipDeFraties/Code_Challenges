def climbing_stairs(n)
  p = 1
  q = 1
  (n - 1).times do
    temp = q
    q += p
    p = temp
    binding.pry
  end

  q
end
