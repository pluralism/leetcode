def max_sub_array(nums)
  currentMax, tmpMax = nums[0], nums[0]
  startIndex, endIndex = 0, 0
  for i in 1...nums.length
    if tmpMax + nums[i] >= nums[i]
      tmpMax = tmpMax + nums[i]
    else
      tmpMax = nums[i]
      startIndex = i
    end

    if tmpMax >= currentMax
      currentMax = tmpMax
      endIndex = i
    end
  end
  puts "StartIndex: #{startIndex}, EndIndex: #{endIndex}"
  puts "Maximum: #{currentMax}"
  nums[startIndex..endIndex]
end


p max_sub_array([-2, 1, -3, 4, -1, 2, 1, -5, 4])
p max_sub_array([2, 4, 22, 19, -48, -5, 20, 40])
p max_sub_array([631, -583, -975])
