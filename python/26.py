class Solution(object):
    def removeDuplicates(self, nums):
        i = 0
        while i < len(nums) - 1:
            if nums[i + 1] == nums[i]:
                del nums[i]
            else:
                i += 1

        return len(nums)