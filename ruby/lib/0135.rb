# long 6 deg /  min
# short 0.5 deg / min
# short 30 deg / hr
# i.e. 2:15
# long angle 15 * 6 = 90
# short angle 2 * 30 + 0.5 * 15

gets.to_i.times{
  h, m = gets.chomp.split(':').map(&:to_i)
  long = m * 6
  short = h * 30 + 0.5 * m
  diff = (long - short).abs
# without the following it didn't pass
  diff = 360 - diff if 180 < diff
  if 0 <= diff && diff < 30
    puts 'alert'
  elsif 90 <= diff && diff <= 180
    puts 'safe'
  else
    puts 'warning'
  end
}
