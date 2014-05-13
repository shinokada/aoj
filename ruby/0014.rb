# for input 20 output should be 68440000
# for input 10 output should be 70210000

width = gets.to_i
num_of_rec = 600 / width
result = []
num_of_rec.times do |i| 
  result << (i * width)**2 * width
end
# p result
p result.inject(:+) 
