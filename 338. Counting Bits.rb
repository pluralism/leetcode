# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
  dp = [0, 1, 1, 2, 1, 2]

  return dp[0..num] if num < 6

  diff = 3
  sum = false
  for i in 6..num
    if !sum
      dp[i] = dp[i - diff]
    else
      dp[i] = dp[i - diff - 1] + 1
      diff += 1
    end
    sum = !sum
  end
  dp
end
