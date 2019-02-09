# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  h = Hash.new(0)

  nums.each do |n|
    h[n] += 1
    return n if h[n] > 1
  end
end
