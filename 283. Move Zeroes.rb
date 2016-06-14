# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead
def move_zeroes(nums)
  current_index = 0

  nums.each do |num|
    if num != 0
      nums[current_index] = num
      current_index += 1
    end
  end

  for i in current_index...nums.length
    nums[i] = 0
  end
end
