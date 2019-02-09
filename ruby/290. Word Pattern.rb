def word_pattern(pattern, str)
  patterns = Hash.new
  patterns_inverse = Hash.new
  words = str.split(' ')

  return false if words.length != pattern.length
  pattern.each_char.with_index { |c, i|
    if !patterns.key?(c)
      return false if patterns_inverse.key?(words[i])
      patterns[c] = words[i]
      patterns_inverse[words[i]] = c
    else
      return false if words[i] != patterns[c]
    end
  }
  true
end
