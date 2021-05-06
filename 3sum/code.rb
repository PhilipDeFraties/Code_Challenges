def three_sum(nums)
  result = []
  return result if nums.length < 3
  return [[0,0,0]] if nums.uniq == [0]

  nums.sort!
  (0..(nums.length-3)).each do |first_index|
    second_index = first_index + 1
    third_index = nums.length - 1

    while(second_index < third_index) do
      sum = nums[first_index] + nums[second_index] + nums[third_index]
      if sum < 0
        second_index += 1
      elsif sum > 0
        third_index -= 1
      else
        result << [nums[first_index], nums[second_index], nums[third_index]]
        second_index += 1
        third_index -= 1
      end
    end
  end
  result.uniq
end
