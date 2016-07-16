# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead
def wiggle_sort(nums)
  nums_sorted = nums.sort
  even_index = nums.length / 2 - (nums.length % 2 == 0 ? 1 : 0)
  odd_index = nums.length - 1

  (0...nums.length).step(2).each do |i|
    nums[i] = nums_sorted[even_index]
    nums[i + 1] = nums_sorted[odd_index] if i + 1 < nums.length
    even_index -= 1
    odd_index -= 1
  end
end
