def most_frequent_words(string)
  arr = seperate_words(string)
  hash = {}
  results = []
  arr.each do |word|
    if hash[word]
      hash[word] += 1
    else
      hash[word] = 1
    end
  end
  # binding.pry
  3.times do
    word = hash.key(hash.values.max)
    results << word.downcase
    hash.delete(word)
  end
  return results
end

def seperate_words(str)
  str.gsub(/\s+/m, ' ').strip.split(" ")
end
