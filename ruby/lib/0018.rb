# Sorting Five Numbers
# Write a program which reads five numbers and sorts them in descending order.

puts gets.split(' ').sort{|x,y| y <=> x }.join(' ')
