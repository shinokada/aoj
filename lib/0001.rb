# Input 
# height of mountain 1 (integer)
# height of mountain 2 (integer)
# height of mountain 3 (integer)
#  .
#  .
#  .
# height of mountain 10 (integer)
# 
# 
# Output
# height of the 1st mountain
# height of the 2nd mountain
# height of the 3rd mountain
num = [1819, 2003, 876, 2840, 1723, 1673, 3776, 2848, 1592, 922]
#num = []
while num.count < 10
  num.push(gets.to_i)
end

num = num.sort.reverse

3.times do |i|
  puts num[i]
end

