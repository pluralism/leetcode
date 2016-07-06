# Dyanmic programming approach
#
# We know that the number of ways to climb 1 stair is 1(one step only)
# and the number of ways to climb two stairs is two(2 times 1 step or directly 2 steps)
#
# So, let's calculate the number of ways to climb 3 stairs:
# We can't move 3 stairs at a time, so we climb first 1 stair then the
# following 2(or the opposite). We already know the number of ways to climb one stair(1),
# then we need to climb the following two stairs till we reach the top. We also know the
# number of ways to climb two stairs(2). The result of W[3] is then W[1] + W[2]
#
# Generalized formula: W[n] = W[n - 1] + W[n - 2]
def climb_stairs(n)
  return n if n <= 2

  ways = []
  # 1 way to climb 1 stair (1 step)
  ways[1] = 1
  # 2 ways to climb 2 stairs (2 steps or two 1 steps)
  ways[2] = 2

  3.upto(n) { |i|
    ways[i] = ways[i - 1] + ways[i - 2]
  }

  ways[n]
end
