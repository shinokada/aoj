# for input 20 output should be 68440000
# for input 10 output should be 70210000

w = gets.to_i
puts (0..599/ w ).inject { |s, i|s+ i*i*w**3 }

