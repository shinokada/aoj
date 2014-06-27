# find the modulo and if modulo is the same as previous modulo, then it repeats again
# use %, 100 % 12 gives module 4
# or 100.divmod(12)
while n = gets
  a, b = n.split(' ').map(&:to_f)
  
  until a > b
    a = a * 10
  end
  p a / b
end
