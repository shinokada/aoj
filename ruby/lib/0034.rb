def railway_lines(arr)
  dis = arr.shift(10)
  total = dis.inject(0){|total, e| total+e}
  v1, v2 = arr
  point = total.to_f * v1 / (v1 + v2)
  result = 0
  cumulative = dis.inject([]) { |cs, i| cs << i + (cs.last || 0) }
  cumulative.find_index{ |e| e >= point } + 1
end
