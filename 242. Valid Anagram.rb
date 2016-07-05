# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.length != t.length

  hash = Hash.new(0)
  s.each_char { |chr|
    hash[chr] += 1
  }

  t.each_char { |chr|
    hash[chr] -= 1
    hash.delete(chr) if hash[chr] <= 0
  }

  hash.empty?
end


puts is_anagram("anagram", "nagaram")
