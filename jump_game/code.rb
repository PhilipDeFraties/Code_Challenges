def can_jump(nums)
  length = nums.length
    checkpoint_index = length-1
    (length-2).downto(0).each do |index|
        min_jumps = checkpoint_index - index
        if min_jumps <= nums[index]
            checkpoint_index = index
        end
    end
    checkpoint_idx.zero?
end
