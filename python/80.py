class Solution(object):
    def removeDuplicates(self, nums):
        start = 0
        end = 0
        count = 0

        while end < len(nums):
            while end < len(nums) and nums[end] == nums[start]:
                count += 1
                end += 1

            if count > 2:
                start = start + 2
                for _ in range(end - start):
                    del nums[start]
                
                count = 0
                end = start
            else:
                count = 0
                start = end
        
        return len(nums)