# Brute-force:
def two_sum(arr, target)
  arr.each_with_index do |int, index|
    arr.each_with_index do |next_int, next_index|
      if index != next_index && int + next_int == target
        return [index, next_index]
      end
    end
  end
end
# Best solution:
# def two_sum(nums, target)
#   hash = {}
#   nums.each_with_index do |ele, idx|
#     if hash[target - ele]
#       return [hash[target - ele], idx]
#     else
#       hash[ele] = idx
#     end
#   end
# end
