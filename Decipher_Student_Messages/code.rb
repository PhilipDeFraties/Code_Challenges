# def decipher_message(message)
#   # check for blank message
#   if message.length == 0
#     return ""
#   else
#     # find length of substrings, always square root according to instructions
#     substring_length = Integer.sqrt(message.length)
#     # set accumulator to hold decoded chars
#     decoded_string = ""
#     # split encoded string into substrings of equal length based substring length
#     scrambled_substrings = message.chars.each_slice(substring_length).map(&:join)
#     # loop by substring length
#     substring_length.times do
#       # set temporary accumulator for each pass through as empty string
#       new_substring = ""
#       # slice first letter of each string shovel into temp accumulator
#       scrambled_substrings.each do |str|
#         new_substring << str.slice!(0)
#       end
#       # shovel temp accumulator into final accumulator string
#       decoded_string << new_substring
#     end
#     # return final accumulator
#     return decoded_string
#   end
# end
def decipher_message(message)
  return '' if message.empty?
  size = Math.sqrt(message.size).round
  message.chars.each_slice(size).to_a.transpose.map(&:join).join
end
