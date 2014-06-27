# Patisserie
#
# Both method output correct answers but did not pass judge.u-aizu.ac.jp
#
# sort from small to large
# then put in order of 1, 5, 2, 4, 3
# (1..5).zip ((1..5).reverse_each)
# => [[1, 5], [2, 4], [3, 3], [4, 2], [5, 1]]
# (1..4).zip ((1..4).reverse_each)
# => [[1, 4], [2, 3], [3, 2], [4, 1]]

# Or find all possible permutation and find the width

# method 1
# while n = gets
# width, *sizes = n.chomp.split(' ').map(&:to_i)
# arr = (sizes.zip (sizes.reverse_each)).flatten
# length = 0
# myarr = arr.each_slice(arr.size/2).to_a[0]
# first = myarr.first
# last = myarr.last
# myarr.each_cons(2){ |a|
#   length += Math.sqrt((a[0] + a[1])**2 - (a[0] - a[1])**2)
# }
# puts (length + first + last) > width ? 'NA' : 'OK'
# end


# method 2
while n = gets
  lengtharr = []
  width, *sizes =  n.chomp.split(' ').map(&:to_i)
  sizes.permutation(sizes.size).to_a.each{ |e|
    length = 0
    first = e.first
    last = e.last
    e.each_cons(2){ |a|
      length += Math.sqrt((a[0] + a[1])**2 - (a[0] - a[1])**2)
    }
    lengtharr << length + first + last
  }
 puts (lengtharr.min) > width ? 'NA' : 'OK'
end
