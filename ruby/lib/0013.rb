# Switching Railroad Cars

# input = [1, 6, 0, 8, 10, 0, 0, 0]
# output should be [6, 10, 8, 1]
# input = [1, 0, 4, 0, 5, 6, 7, 0, 0, 0]
# output should be [1, 4, 7, 6, 5]
input =[]
output = []
while gets
  n = $_.to_i
  unless n == 0
    input << n
  else
    output << input.pop
  end
  if input.empty?
    output.each{ |e| p e }
  end
end
