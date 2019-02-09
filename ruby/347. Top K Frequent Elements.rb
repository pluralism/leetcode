def top_k_frequent(nums, k)
  h = Hash.new(0)
  nums.each do |n|
    h[n] += 1
  end
  h.sort_by { |key, value| -value }[0...k].collect { |x| x[0] }
end
