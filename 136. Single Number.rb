#Simplest case:
#	5 5 4 4 2
#
#XOR properties: x ^ x = 0
#	      x ^ 0 = x
#
#
#t = 0
#t ^ 5 = 5
#t ^ 5 = 0
#t ^ 4 = 4
#t ^ 4 = 0
#t ^ 2 = 2 <- Correct
#
#
#Other example:
#
# 5 2 5 4 4
#
#t = 0
#t ^ 5 = 5
#t ^ 2 = 7
#t ^ 5 = 2
#t ^ 4 = 6
#t ^ 4 = 2 <- Correct


# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  t = 0
  nums.each do |n|
    t = (~t & n) | (t & ~n)
  end    
  t
end
