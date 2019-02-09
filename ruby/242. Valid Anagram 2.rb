# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.length != t.length

  arr1 = s.split("").group_by { |chr| chr }.map { |k, v| [k, v.size] }.sort { |x, y| x[0] <=> y[0] }
  arr2 = t.split("").group_by { |chr| chr }.map { |k, v| [k, v.size] }.sort { |x, y| x[0] <=> y[0] }
  arr1 == arr2
end


puts is_anagram("anagram", "nagaram")
