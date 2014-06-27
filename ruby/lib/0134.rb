arr = []
gets.to_i.times{
  arr << gets.to_i
}
puts arr.inject { |sum, el| sum + el } / arr.size
