# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  nums.group_by { |k| k }.values.select { |num| num.size > nums.length / 2 }.flatten[0]
end
