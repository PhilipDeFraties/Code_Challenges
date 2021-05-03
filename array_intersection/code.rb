def intersect(nums1, nums2)
  result = []
  nums1.map do |num|
    nums2.each_with_index do |num2, index|
      if num == num2
        nums2.delete_at(index)
        result << num
        break
      end
    end
  end
  return result
end
