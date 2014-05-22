def plasticboard(arr)
  rectangle = 0
  lozenges = 0
  result = []
  arr.each do |e|
    lozenges += 1 if e[0] == e[1]
    rectangle += 1 if e[2]**2 == e[0]**2 + e[1]**2
  end
  result << rectangle << lozenges
end
