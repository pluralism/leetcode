# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  h = Hash.new(0)
  while n != 1
    n = n.to_s.split("").collect { |n| n.to_i ** 2 }.reduce(:+)
    h[n] += 1
    return false if h[n] > 1
  end
  true
end
