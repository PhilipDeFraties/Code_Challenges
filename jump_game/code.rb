def can_jump(nums)
  length = nums.length
    checkpoint_idx = length-1
    binding.pry
    (length-2).downto(0).each do |index|
        min_jumps = checkpoint_idx - index
        if min_jumps <= nums[index]
            checkpoint_idx = index
        end
    end
    checkpoint_idx.zero?
end
