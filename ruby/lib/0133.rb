# 11 12 13 .... 18
# 21 22 23 .... 28
# ..
# 81 82 83 .... 88

# clockwise 90 degrees rotation
# 81 71 61 .... 11
# 82 72 61 .... 12
# ...
# 88 78 68 .... 18

# clockwise 180 degrees rotation
# 88 87 86 .... 81
# 78 77 76 .... 71
# ...
# 18 17 16 .... 11

# clockwise 270 degrees rotation
# 18 28 38 ....88
# 17 27 37 ... 87
# ...
# 11 21 31 ... 81

h = {}
8.times{|e|
  a = (((e + 1) * 10 + 1)..((e + 1) * 10 + 8))
  b = gets.chomp.split(//) 
  h =  h.merge(Hash[a.zip b])
} 
puts 90
arr90 = []
(1..8).each{ |e| # 81 71 61 ...11
  (1..8).reverse_each.each{|n|
    arr90 << n * 10 + e
  }
}
result90 = []
arr90.each{|n|
  result90 << h[n]
}
result90.each_slice(8) { |e| puts e.join}

puts 180
arr180 = []
(1..8).each{ |e|
  # 88 87 86 ... 81
  (1..8).each{ |n|
    arr180 << e*10 + n
  }
}
result180 =[]
arr180.reverse.each{ |num|
  result180 << h[num]
}
result180.each_slice(8){ |e| puts e.join}

puts 270
arr270 = []
# 18 28 38 ...88
(1..8).reverse_each.each{ |e| 
  (1..8).each { |n| 
    arr270 << n * 10 + e
  }
}
result270 = []
arr270.each{ |num| 
  result270 << h[num]
}
result270.each_slice(8){ |e| puts e.join}



