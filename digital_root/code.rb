def digital_root(n)
  n.digits.count == 1 ? n : digital_root(n.digits.sum)
end
