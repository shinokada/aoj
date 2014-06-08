# Drawing Lots http://judge.u - aizu.ac.jp/onlinejudge/description.jsp?id=0011
w = gets.to_i
n = gets.to_i

arr = (1..w).to_a

n.times do |e|
  a, b = gets.split(',').map(&:to_i)
  arr[a - 1], arr[b - 1] = arr[b - 1], arr[a - 1]
  # p arr
end
arr.each { |e| p e}
