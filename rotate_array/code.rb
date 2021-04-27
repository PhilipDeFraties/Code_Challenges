# def rotate(nums, k)
#   nums.rotate!(-k)
# end

# without using .rotate
def rotate(nums, k)
    k.times do
      ele = nums.pop
      nums.unshift(ele)
    end
return nums
end
