n = gets.to_i
result = []
n.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split(' ').map(&:to_f)
  ((y2 - y1)/(x2 - x1) == (y4 - y3)/(x4 - x3)) ? result << 'YES' : result << 'NO'
end

result.each { |r| puts r}
