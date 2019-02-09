# Given an unsorted array nums, reorder it such that
# nums[0] < nums[1] > nums[2] < nums[3]....
#
# Example:
# (1) Given nums = [1, 5, 1, 1, 6, 4], one possible answer is [1, 4, 1, 5, 1, 6].
# (2) Given nums = [1, 3, 2, 2, 3, 1], one possible answer is [2, 3, 1, 3, 1, 2].
#
#
# Explanation:
#
# In this problem you know that every element in even indexes is smaller
# than the next and the previous odd indexes. From this statement you know that you'll
# need to put the largest numbers in the odd indexes.
# To do that is is very simple: just sort the array. The largest number that you'll put
# in even indexes is at index nums.length / 2(middle of the sorted array) and the largest number
# that you'll put in odd indexes is at nums.length - 1(the last element of the sorted array)
# From that point just take the element from even and odd indexes and decrement both indexes
#
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
