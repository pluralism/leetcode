def count_and_say(n)
  str = "1"
  for i in 0...n - 1
    str = count_and_say_aux(str)
  end
  str
end


def count_and_say_aux(str)
  current_char = str[0]
  count = 0
  next_str = ""

  for i in 0...str.length
    count += 1
    if i == str.length - 1 || str[i + 1] != current_char
      next_str += count.to_s + current_char
      current_char = str[i + 1]
      count = 0
    end
  end
  next_str
end
