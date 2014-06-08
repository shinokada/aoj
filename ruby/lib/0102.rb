while n = gets.to_i
  break if n.zero?
  m = n.times.map do
    gets.split.map(&:to_i).tap{|a| a << a.inject(&:+)}
  end
  m << m.transpose.map{|e| e.reduce(:+)}
  m.each{|e| puts e.map{ |i| "%5d" % i }.join}
end
