def spoonerize(words)
  first_chars = words.split.map(&:chr).reverse
  array = words.split(" ")
  array.each_with_index do |word, index|
    word[0] = first_chars[index]
  end
  array.join(" ")
  # words.gsub(/(.)(.* )(.)(.*)/,'\3\2\1\4')
end
