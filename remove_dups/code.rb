def remove_dups(nums)
  return if nums.length == 0
  nums.length.times { |i| nums[i] = nil if nums[i] == nums[i + 1] }
  nums.delete(nil)
end
