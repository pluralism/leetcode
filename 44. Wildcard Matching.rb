require 'benchmark'

def is_match(s, p)
  count = p.tr('*', '').length

  return false if count > s.length
  return true if s.empty? and count == 0

  grid = Array.new(s.length + 1, false) { Array.new(p.length + 1, false) }
  grid[0][0] = true

  for i in 1..p.length
    grid[0][i] = grid[0][i - 1] if p[i - 1] == '*'
  end


  for i in 1...s.length + 1
    for j in 1...p.length + 1
      if s[i - 1] == p[j - 1] || p[j - 1] == '?'
        grid[i][j] = grid[i - 1][j - 1]
      elsif p[j - 1] == '*'
        grid[i][j] = grid[i][j - 1] || grid [i - 1][j]
      end
    end
  end

  grid[s.length][p.length]
end

puts Benchmark.measure {
  #puts is_match("bbaaaabaaaaabbabbabbabbababaabababaabbabaaabbaababababbabaabbabbbbbbaaaaaabaabbbbbabbbbabbabababaaaaa",
  #{}"******aa*bbb*aa*a*bb*ab***bbba*a*babaab*b*aa*a****")
  puts is_match("a", "a")
}
