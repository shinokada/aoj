while s = gets
  p s.split(' ').sort{|x,y| y <=> x }.join(' ')  
 end
