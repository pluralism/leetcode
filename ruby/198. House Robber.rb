# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.empty?
  return nums[0] if nums.length == 1
  money = []
  money[0], money[1] = nums[0], [nums[0], nums[1]].max
  for i in 2...nums.length
    money[i] = [money[i - 2] + nums[i], money[i - 1]].max
  end
  money[nums.length - 1]
end
