hash = {}
while n = gets  
  word, page = n.split
  hash.has_key?(word) ?  hash[word] << page.to_i :  hash[word] = [page.to_i]
end
hash.sort.each do |key, value|
  puts key
  puts value.sort.join(' ')
end
