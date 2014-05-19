# What day is today?
# 
# Your task is to write a program which reads a date (from 2004/1/1 to 2004/12/31) and prints the day of the date. Jan. 1, 2004, is Thursday. Note that 2004 is a leap year and we have Feb. 29.
# 
# Input
# The input is a sequence of datasets. The end of the input is indicated by a line containing one zero. Each dataset consists of two integers m and d separated by a single space in a line. These integers respectively represent the month and the day.
# 
# Output
# For each dataset, print the day (please see the following words) in a line.
# 
# Monday
# Tuesday
# Wednesday
# Thursday
# Friday
# Saturday
# Sunday

# Sample Input
# 1 1
# 2 29
# 0 0

# Output for the Sample Input
# Thursday
# Sunday
# 

while n = gets
   if n.chomp == '0 0'
     break
   end
  month, date = n.split(' ').map(&:to_i)
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
end


