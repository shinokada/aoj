gets.to_i.times{
  input = gets.chomp
  arr =[]
  trains = []
  input.gsub!(/-/,'')
  direction = false
  input.each_char{ |c|
    if c == '<'
      direction = true
    elsif c == '>'
      direction = false
    elsif trains.include?(c)
      next
    else
      direction ? arr.unshift(c) : arr << c
      trains << c
    end
  }
  puts arr.join
}
