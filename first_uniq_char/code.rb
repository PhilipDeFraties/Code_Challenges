# Brute Force Solution:
def first_uniq_char(string)
  hash = {}
  chars = string.chars
  chars.each_with_index do |char, index|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  first_uniq = hash.find do |key, val|
    val == 1
  end
  unless first_uniq == nil
    chars.find_index(first_uniq[0])
  else
    return -1
  end
end
# Best Solution:

# def first_uniq_char(s)
#   s.each_char.with_index do |c, idx|
#     if s.index(c) == s.rindex(c)
#       return idx
#     end
#   end
#   return -1
# end
