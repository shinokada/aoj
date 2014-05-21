# 0015 National Budget
set_num = gets.to_i
set_num.times{
  sum = gets.to_i + gets.to_i
  puts sum.to_s.length >= 81 ? 'overflow' : sum
}
