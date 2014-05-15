# input = 'xlmw mw xli tmgxyvi xlex m xsso mr xli xvmt.'

while s = gets
  until s =~ /that|the|this/
    s.tr!('a-z', 'b-za')
  end
  puts s
end

