def is_palindrome(string)
  string = remove_non_alpha(string)
  string.downcase == string.downcase.reverse ? true : false
end

def remove_non_alpha(string)
  string.gsub(/\W+/, '')
end
