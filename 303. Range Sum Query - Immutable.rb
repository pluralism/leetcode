class NumArray
    # @param {Integer[]} nums
    def initialize(nums)
        @sum = []
        @sum[0] = nums[0]
        for k in 1...nums.length
            @sum[k] = @sum[k - 1] + nums[k]
        end
    end

    # @param {Integer} i
    # @param {Integer} j
    # @return {Integer}
    def sum_range(i, j)
      prev = 0
      prev = @sum[i - 1] if i > 0
      @sum[j] - prev
    end
end
