# Lets imagine for the simplest case:
# [30, 3]
#
# Is it better to have the concatenation of 30 + 3 or 3 + 30?
# You can solve this by converting every number to string and then by
# concatenating two numbers in the comparator and comparing their ascii values
# It is the same case for arrays with more than 2 entries
# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
  nums.map!(&:to_s)
  num = nums.sort { |a, b| a + b > b + a ? -1 : 1 }.join
  return "0" if num[0] == "0"
  num
end
