def reverse_vowels(s)
  vowels = Hash.new
  s.each_char.with_index(0) { |char, i|
    if %w(a e i o u A E I O U).include?(char)
      vowels[i] = char
    end
  }

  vowels_arr = vowels.to_a

  for i in 0...vowels_arr.length / 2
    vowels_arr[i][1], vowels_arr[vowels_arr.length - i - 1][1] = vowels_arr[vowels_arr.length - i - 1][1], vowels_arr[i][1]
  end

  for elem in vowels_arr
    s[elem[0]] = elem[1]
  end

  puts s
end
