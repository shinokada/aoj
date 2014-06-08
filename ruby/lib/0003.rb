p "Is it a right triangle?"
p "How many sets of number do you want to check? Enter a number. e.g 3"
n = gets.to_i
p "Enter #{n} sets of numbers. e.g. 3 4 5}"
arr = []
n.times do
  arr << gets.split.map(&:to_i)
end

arr.each do |ia|
  ia.sort!
  if ((ia[0]**2 + ia[1]**2) == ia[2]**2)
    puts 'YES'
  else
    puts 'NO'
  end
end
