# Switching Railroad Cars

#input = [1, 6, 0, 8, 10, 0, 0, 0]
# output should be [6, 10, 8, 1]
 input = [1, 0, 4, 0, 5, 6, 7, 0, 0, 0]
# output should be [1, 4, 7, 6, 5]

output = []
input.each_with_index do |item, index|
  output << input[index-1] if item == 0
end
rev = (input - output).reverse
newout = output.delete_if {|e| e==0}

p newout + rev
