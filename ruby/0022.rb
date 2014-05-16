total = []
sum = []
while n = gets.to_f
  if n == 0
    p total.map{|e| e.inject(:+).to_i}
  else
    i = 0
    while i < n  
      sum << gets.to_f
      #p sum
      i += 1
    end
    total << sum
    sum = []
    #p total
  end
end
