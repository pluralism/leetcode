require 'benchmark'

def is_match(s, p)
  p_index = 0
  return true if s.empty? and p.empty?

  if p[0] != '?' and p[0] != '*'
    return false if s.empty? or s[0] != p[0]
    return is_match(s[1...s.length], p[1...p.length])
  end

  if p[0] == '?'
    return false if s.empty?
    return is_match(s[1...s.length], p[1...p.length])
  end

  if p[p_index] == '*'
    p_index += 1 while p[p_index] == '*'

    margin = 0
    val = is_match(s[margin...s.length], p[p_index...p.length])
    while !val
      margin += 1
      return false if s[margin...s.length].nil?
      val = is_match(s[margin...s.length], p[p_index...p.length])
    end
    
    return val
  end
end

puts Benchmark.measure {
  puts is_match("bbaaaabaaaaabbabbabbabbababaabababaabbabaaabbaababababbabaabbabbbbbbaaaaaabaabbbbbabbbbabbabababaaaaa",
  "******aa*bbb*aa*a*bb*ab***bbba*a*babaab*b*aa*a****")
}
