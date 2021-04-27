# def contains_duplicate(arr)
#   arr.count == arr.uniq.count ? false : true
# end

# without using .uniq
def contains_duplicate(nums)
  sorted = nums.sort!
  sorted.each_with_index do |num, index|
    return true if sorted[index] == sorted[index+1]
  end
  return false
end
