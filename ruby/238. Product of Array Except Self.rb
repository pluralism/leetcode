# Given an array of n integers where n > 1, nums, return an array output such
# that output[i] is equal to the product of all the elements of nums except nums[i].
#
# Solve it without division and in O(n).
#
# For example, given [1,2,3,4], return [24,12,8,6].
#
# Explanation:
#
# Lets imagine the array [1, 2, 3, 4]. We want to calculate the value in the
# index 1, where the number 2 is.
# Basically we need to multiply everything in the left side of the number and in the
# right side of the number, [1] * [3, 4] = 1 * 3 * 4 = 12
# The easiest way is to have 2 arrays that store the values in the left side and
# another to store the values in the right side
# Left side: [1, 2, 6, 24]
# Right side: [4, 12, 24, 24]
#
# Index 0: Here we only consider the right side because there is nothing before index 0: right[2] = 24
# Index 1: left[0] * right[1] = 1 * 12 = 12
# Index 2: left[1] * right[0] = 2 * 4 = 8
# Index 3: Here we only consider the left side, because there is nothing after index 3: left[2] = 6
# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  left, right, len, left[0], right[0], res = [], [], nums.length, nums[0], nums[-1], []
  for i in 1...nums.length
    left[i] = left[i - 1] * nums[i]
    right[i] = right[i - 1] * nums[nums.length - 1 - i]
  end

  for i in 0...len
    res[i] = (i != 0 ? left[i - 1] : 1) * (i != len - 1 ? right[len - 2 - i] : 1)
  end
  res
end
