def sumofint(arr)
  combi = (0..9).to_a.combination(3).to_a.map{|e| e.inject(:+)}
  n, s = arr
  combi.select{|e| e == s}.length
end
