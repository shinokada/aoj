def whatday(arr)   
  if arr != [0, 0]
    month, date = arr.map(&:to_i)
    day = Time.new(2004, month, date)
    if day.sunday?
      p "Sunday"
    elsif day.monday?
      p "Monday"
    elsif day.tuesday?
      p "Tuesday"
    elsif day.wednesday?
      p "Wednesday"
    elsif day.thursday?
      p "Thursday"
    elsif day.friday?
      p "Friday"
    else
      p "Saturday"
    end
  else
    'end of input'
  end
end



