def english(str)
  result = []
  arr = str.split(' ')
  result << arr.uniq.group_by { |v| arr.count(v) }.max.last.join
  result << arr.max_by{|x| x.length } 
end
