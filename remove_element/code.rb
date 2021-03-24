def remove_val(nums, val)
  return if nums.length == 0
  nums.map do |num|
    if num == val
        nums.delete(val)
    end
  end
  return nums.length
end
