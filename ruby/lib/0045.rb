# Sum and average
totalp = 0
i = 0
qua = 0
while n = $stdin.gets
  price, q = n.split(',').map(&:to_i)
  totalp += price * q
  qua += q
  i += 1
end
puts totalp
puts (qua.to_f / i).round(0)
