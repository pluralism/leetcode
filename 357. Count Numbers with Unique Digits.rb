# @param {Integer} n
# @return {Integer}
def count_numbers_with_unique_digits(n)
  dp, dp[0], dp[1] = [], 0, 10
  return 1 if n == 0

  for i in 2..n
    # The first number is always 9
    dp[i] = 9
    for j in 9.downto(9 - i + 2)
      dp[i] *= j
    end
  end
  dp.inject { |sum, n| sum + n }
end
