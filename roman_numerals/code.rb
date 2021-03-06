def roman_numeral(str)
  # set hash values
  numerals = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }
  sum = 0
  array = str.chars
  array.each_with_index do |e,i|
    if e == array.last
      sum += numerals[e]
    elsif numerals[e] >= numerals[array[i+1]]
      sum += numerals[e]
    else
      sum -= numerals[e]
    end
  end
  return sum
end
