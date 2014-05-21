# Dropping Ink
# # small at 6, 7
# p ([6].product((6..8).to_a)+(5..7).to_a.product([7])).uniq
# # middle at 7, 2
# p (6..8).to_a.product((1..3).to_a)
# # big at 2, 7
# p ([2].product((5..9).to_a)+(0..4).to_a.product([7])+(1..3).to_a.product((6..8).to_a)).uniq
# 
# # grid
# p (0..9).to_a.product((0..9).to_a)
# 
grid = Hash[(0..99).map { |num| [num, 0] }]
while n = gets
  x1, y1, size = n.split(',').map(&:to_i) 
  xm1 = x1 - 1
  xm2 = x1 - 2
  xp1 = x1 + 1
  xp2 = x1 + 2
  ym1 = y1 - 1
  ym2 = y1 - 2
  yp1 = y1 + 1
  yp2 = y1 + 2
  if size == 3 # large
    points = ([x1].product((ym2..yp2).to_a)+(xm2..xp2).to_a.product([y1])+(xm1..xp1).to_a.product((ym1..yp1).to_a)).uniq
  elsif size == 2 # medium
    points = (xm1..xp1).to_a.product((ym1..yp1).to_a)
  else # size == 1 small
    points = ([x1].product((ym1..yp1).to_a)+(xm1..xp1).to_a.product([y1])).uniq
  end
 
  points.each do |e|
    #grid[e[0]e[1]] += 1
    num = e[0].to_s+e[1].to_s
    grid[num.to_i] +=1 
  end

  gridcount = grid.values.inject(Hash.new(0)){|m,n| m[n] += 1;m }
  p gridcount[0]
  p gridcount.max[0]
 # max = gridcount.max_by{|k,v| k}
 # p max[0]
end
