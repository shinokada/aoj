p "Digit number: This computes the digit number of sum of two integers a and b. 
Type two numbers. e.g. 4 5"
while data = gets do
a, b = data.split(' ').map(&:to_i)
puts (a + b).to_s.length
end
# Sample Input
# 5 7
# 1 99
# 1000 999
# Output for the Sample Input
# 2
# 3
# 4
