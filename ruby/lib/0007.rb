# My solution
# capital = 100000.to_f # no need to_f
capital = 100_000
# gets.chomp.to_i.times do |i| # if you use to_i, you don't need to add chomp
gets.to_i.times do 
  capital = (capital * 1.05 / 1000).ceil * 1000
end
puts capital

# [morizyun's solution](https://github.com/morizyun/aoj-ruby-python/blob/master/ruby/0007.rb)
# n = gets.to_i
# rent = 100000
# n.times.each do
#   rent = ((rent*1.05)/1000).ceil*1000
# end
# puts rent
