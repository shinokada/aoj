# Solution by [morizyun](https://github.com/morizyun/aoj-ruby-python/blob/master/ruby/0009.rb)
n = 1_000_000

# エラトステネスの篩
# 指定された整数以下の全ての素数を見つける
ns = (n**0.5).to_i + 1
is_prime = [false, false] + [true] * (n-1)
2.upto(ns) do |i|
  next if !is_prime[i]
  (i * i).step(n, i) do |j|
    is_prime[j] = false
  end
end

count = 0
list = (0..n).map do |i|
  count += 1 if is_prime[i]
  count
end

while gets
  puts list[$_.to_i]
end
