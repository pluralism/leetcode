def two_sum(nums, target)
  # Ruby can perform lookup in hashes in O(1) time
  hash = Hash.new

  nums.each_with_index { |val, index|
    diff = target - val
    return [hash[diff], index] unless hash[diff].nil?
    hash[val] = index
  }
end
