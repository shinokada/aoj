# Sum and average
qua = totalp = i = 0
while n = $stdin.gets
  price, q = n.split(',').map(&:to_i)
  totalp += price * q
  qua += q
  i += 1
end
puts totalp
puts (qua.to_f / i).round(0)
