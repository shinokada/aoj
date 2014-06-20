def findclass(n)
  if n <= 48.00
    return 'light fly'
  elsif n <= 51.00
    return 'fly'
  elsif n <= 54.00
    return 'bantam'
  elsif n <=57.00
    return 'feather'
  elsif n <= 60.00
    return 'light'
  elsif n <= 64.00
    return 'light welter'
  elsif n <= 69.00
    return 'welter'
  elsif n <= 75.00
    return 'light middle'
  elsif n <= 81.00
    return 'middle'
  elsif n <= 91.00
    return 'light heavy'
  end
    return 'heavy'
end

while n = gets
  puts findclass(n.to_f)
end
