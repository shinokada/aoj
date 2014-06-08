# Sum of Integers
# [n, s] where n digits chosen from 0 to 9 and prints the number
# of combinations where the sum of the digits equals s.

def sumofint(arr)
  combi = (0..9).to_a.combination(3).to_a.map{|e| e.reduce(:+)}
  _n, s = arr
  combi.select{ |e| e == s }.length
end
