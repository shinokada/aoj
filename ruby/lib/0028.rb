# Mode Value
# Your task is to write a program which reads a sequence of integers and prints mode values of the sequence.
# 
# The mode value is the element which occurs most frequently. For example, in the sample input, 3 and 5 respectively occur three times, 7 occurs two times, and others occur only one. So, the mode values are 3 and 5.
# 
# Input
# A sequence of integers. The number of integers is less than or equals to 100.
# 
# Output
# Print the mode values. If there are several mode values, print them in ascending order.
# 
# Sample Input
# 5
# 6
# 3
# 5
# 8
# 7
# 5
# 3
# 9
# 7
# 3
# 4
# Output for the Sample Input
# 3
# 5

arr = []
while n = gets.to_i
  arr << n # [5, 6, 2, 1, 2, 5, 6, 6, 2]
  freq = arr.inject(Hash.new(0)){ |h, v| h[v] += 1; h }  # {5=>2, 6=>3, 2=>3, 1=>1}
#  p "arr: #{arr}"
#  p "freq: #{freq}"
#  p "freq.max_by{|k,v| v}: #{freq.max_by{|k,v| v}}"
#  p "arr.max_by{ |v| freq[v]}: #{arr.max_by{ |v| freq[v]}}"
p arr.uniq.group_by { |v| arr.count(v) }.max.last
end

