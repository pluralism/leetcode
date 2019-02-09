# Find the contiguous subarray within an array (containing at least one number)
# which has the largest sum.
#
# For example, given the array [−2,1,−3,4,−1,2,1,−5,4],the contiguous subarray
# [4,−1,2,1] has the largest sum = 6.
#
#
# A nice simple exercise:
#
# Lets imagine the array [−3,4,−1,2,1,−5,4]
#
# We start by assuming that our maximum is -3
# Then we check the next number(4) and ask "Currently, is it better to add the 4 to the sequence
# or just consider the 4 and ignore the -3?". This can be done with max(-3 + 4, 4) = max(1, 4) = 4,
# which means that currently we are not considering the number -3. So, previously,
# our global maximum was -3. What is our global maximum now? Simple: max(-3, 4) = 4
#
# Lets go the the element -1. Should we add -1 to the sequence or just consider -1?
# max(4 + -1, -1) = max(3, -1) = 3. So, if we add -1 to the sequence we'll get 3, which is better
# than having just -1. Now, we need to compare with our global maximum:
# max(4, 3) = 4. Our global maximum is still 4, but we need to consider the rest of the sequence
#
# Lets go to 2
#
# Currently our sequence is [4, -1] = 4 + -1 = 3
#
# Is it better to add 2 to the sequence or just have 2? max(3 + 2, 2) = max(5, 2) = 5
# We will opt to add 2 to the sequence, because at least for this sequence this is the best
# value we found so far
#
# Lets check now if it is better than our global maximum:
#
# max(4, 5) = 5. New global maximum: 5
#
# Now just keep doing this till the end of the array. As you can see, you'll only start a new sequence
# whenever the value of the temporary sequence becomes negative.
# Imagine the array [-3, 4, 5], the maximum will be 4 + 5. You don't even consider -3
# because max(negative number + 4, 4) will be always 4. That's when you start a new temporary sequence
#
#
# Another example: [5, -50, 50]
# max = 5
#
# max(5 + -50, -50) = -45
# max(5, -45) = 5
#
# max(-45, 50) = 50 <- Start a new sequence
# max(5, 50) = 50
# answer = 50
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  currentMax, tmpMax = nums[0], nums[0]
  for i in 1...nums.length
    tmpMax = [tmpMax + nums[i], nums[i]].max
    currentMax = [currentMax, tmpMax].max
  end
  currentMax
end
