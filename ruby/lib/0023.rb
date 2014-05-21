# Circles intersection
include Math
# find distance
# they won't overlap (0) if the distance is longer than ra+rb
# name larger radius small radius
# if the distance of two centers < r(big)-r(small) then small belong to big (2 if b is in a  or -2 if a is in b)
# elsif distance of two centers < r(big)+r(small) then they intersect(1)
# else they won't overlap(0)
result = []
n = gets.to_i
n.times do
  xa, ya, ra, xb, yb, rb = gets.split(' ').map{|e| e.to_f}
  center_dis = sqrt((xb - xa)**2 +(yb - ya)**2)

  if center_dis > ra + rb
    result << 0
  elsif center_dis < (ra - rb).abs
    ra > rb ? result << 2 : result << -2
  else
    result << 1
  end
end
p result

