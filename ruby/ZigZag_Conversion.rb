def convert(s, num_rows)
  return s if num_rows <= 1 or s.length < num_rows

  rows = []
  num_rows.times do
    rows << []
  end

  dir, cur_row = 1, 0
  for i in 0...s.length do
    rows[cur_row] << s[i]
    dir *= -1 if (dir == 1 and cur_row == num_rows - 1) or (dir == -1 and cur_row == 0)
    cur_row += 1 * dir
  end

  rows.join
end
