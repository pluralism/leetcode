# Easy one: nums1 & nums2 will give you the intersection between nums1 and nums2, without duplicates
# Then you just need to count the number of times each number N appears in the array nums1 and num2.
# You always the minimum number of times between the two arrays
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
    (nums1 & nums2).map { |n| [n] * [nums1.count(n), nums2.count(n)].min }.flatten
end
