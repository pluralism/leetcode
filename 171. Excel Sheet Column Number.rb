# @param {String} s
# @return {Integer}
def title_to_number(s)
  return 0 if s.empty?

  total = 0
  s = s.chars
  for i in (s.length - 1).downto(0)
    total += (s[i].ord - 64) * (26 ** (s.length - 1 - i))
  end
  total
end
