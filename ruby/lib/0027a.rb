def whatday(arr)   
  if arr != [0, 0]
    month, date = arr.map(&:to_i)
    day = Time.new(2004, month, date)
    if day.sunday?
      "Sunday"
    elsif day.monday?
      "Monday"
    elsif day.tuesday?
      "Tuesday"
    elsif day.wednesday?
      "Wednesday"
    elsif day.thursday?
      "Thursday"
    elsif day.friday?
      "Friday"
    else
      "Saturday"
    end
  else
    'end of input'
  end
end



