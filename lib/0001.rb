# Input 
# There is a data which provides heights (in meter) of mountains. The data is only for ten mountains.
# Write a program which prints heights of the top three mountains in descending order.


#num = [1819, 2003, 876, 2840, 1723, 1673, 3776, 2848, 1592, 922]
num = []
while num.count < 10
  num.push(gets.to_i)
end
p num
num = num.sort.reverse

3.times do |i|
  puts num[i]
end#
