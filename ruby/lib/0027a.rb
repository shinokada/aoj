def whatday(arr)   
  weekday = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
  if arr != [0, 0]
    month, date = arr.map(&:to_i)
    day = Time.new(2004, month, date)
    weekday[day.wday]
  end
end


