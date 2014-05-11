# [morizyun](https://github.com/morizyun/aoj-ruby-python/blob/master/ruby/0008.rb) method

# x = Array.new(37, 0)
# i = j = k = l = 10
# i.times{ |i|
#   j.times{ |j|
#     k.times{ |k|
#       l.times{ |l|
#         x[i+j+k+l] += 1
#       }
#     }
#   }
# }

# p x

# while n = gets
#   puts x[n.to_i]
# end


# My method

a = []
(0..9).to_a.product((0..9).to_a).product((0..9).to_a).product((0..9).to_a).flatten(3).each_slice(4){|e| a << e.inject(:+)}

counts  = Hash.new(0)
 
a.each do |v|
  counts[v] += 1
end

p counts
