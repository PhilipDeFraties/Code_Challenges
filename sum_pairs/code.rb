# Brute force version:
# def sum_pairs(array, sum)
#   results = []
#   array.sort!
#   array.each_with_index do |int, index|
#     array.delete(int)
#     array.each_with_index do |next_int, next_index|
#       if int + next_int == sum
#         results << [int, next_int].sort
#       end
#     end
#   end
#   return results.sort
# end

# O(n) version:
def sum_pairs(nums, target)
  results = []
  if nums.count < 2
    return results
  end
  nums.sort!
  (0..(nums.length - 2)).each do |first_index|
    second_index = first_index + 1
    until second_index == nums.length
      sum = nums[first_index] + nums[second_index]
      if sum == target
        results << [nums[first_index], nums[second_index]].sort
      end
      second_index += 1
    end
  end
  results.sort
end
