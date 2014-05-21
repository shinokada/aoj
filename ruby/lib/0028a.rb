def modevalue(arr)
  arr.uniq.group_by { |v| arr.count(v) }.max.last
end
