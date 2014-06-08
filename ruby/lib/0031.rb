def weight(num)
  result = []
  num.to_s(2)
  .split('')
  .map{ |e| e.to_i }
  .reverse
  .each_with_index{ |e, i| result << 2**i if e > 0 }
  result
end
