# output
# 1x1=1
# 1x2=2
# .
# .
# 9x8=72
# 9x9=81

(1..9).to_a.product((1..9).to_a).each{ |e| puts "#{e[0]}x#{e[1]}=#{e[0]*e[1]}"}

