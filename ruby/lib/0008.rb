a = []
# (0..9).to_a.product((0..9).to_a).product((0..9).to_a).product((0..9).to_a)
# .flatten(3).each_slice(4){ |e| a << e.inject(:+) }

(0..9).to_a.repeated_permutation(4).map{|e| a << e.inject(:+) }
counts  = Hash.new(0)
 
a.each do |v|
  counts[v] += 1
end

while n = gets
p counts[n.to_i]
end
