# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    nums.group_by { |k| k }.select { |k, v| v.size > nums.size / 2 }.keys[0]
end
