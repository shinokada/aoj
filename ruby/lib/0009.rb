# My solution
n = gets.to_i
divnum = (1..n).to_a
total = 0
divnum.each do |e|
  count = 0
  (1..e).to_a.each do |s|
    count += 1 if e % s == 0
  end
    total += 1 if count == 2
end
p total
