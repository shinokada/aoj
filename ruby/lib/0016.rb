result = [0]
x = []
y = []
final = []
angle = 0
while n = gets.chomp
  if n == '0,0'
    puts 'result is '
    result << 0
    result.flatten.each_slice(2) do |arr|
      distance = arr[1].to_i
      angle += degtorad(arr[0].to_i)
      y << distance * Math.cos(angle)
      x << distance * Math.sin(angle)
    end
    final << x.inject(:+).to_i << y.inject(:+).to_i
    puts final
  else
    result << n.split(',')
  end

  def degtorad(degree)
    degree * Math::PI / 180
  end
end
