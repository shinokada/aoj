# Sorting Five Numbers
# Write a program which reads five numbers and sorts them in descending order.

while s = gets
  p s.split(' ').sort{|x,y| y <=> x }.join(' ')  
 end
