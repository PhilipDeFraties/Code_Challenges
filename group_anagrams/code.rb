def group_anagrams(strs)
  strs.map do |str|
    strs.select do |next_str|
      str.chars.sort == next_str.chars.sort
    end
  end.uniq
end
