def valid_parens?(str)
  count = 0
  str.chars.each do |char|
    if char == '('
      count += 1
    elsif char == ')'
      count -= 1
    end
  end
  count.zero?
end
