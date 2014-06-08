def railway_lines(arr)
  dis = arr.shift(10)
  total = dis.reduce(0){ |t, e| t + e }
  v1, v2 = arr
  point = total.to_f * v1 / (v1 + v2)
  cumulative = dis.reduce([]) { |a, e| a << e + (a.last || 0) }
  cumulative.find_index{ |e| e >= point } + 1
end
