# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  buy = prices[0]
  max_diff = 0

  for i in 1...prices.length
    max_diff = prices[i] - buy if prices[i] - buy >= max_diff
    buy = prices[i] if prices[i] < buy
  end
  max_diff
end
