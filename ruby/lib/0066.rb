while n = gets
  @result = [] 
  allarr = []
  r1, r2, r3 = n.chomp.split('').each_slice(3).to_a
  v1, v2, v3 = r1.zip(r2, r3)
  diag1 = [v1[0], v2[1], v3[2]]
  diag2 = [v3[0], v2[1], v1[2]]
  allarr << r1 << r2 << r3 << v1 << v2 << v3 << diag1 << diag2
  allarr.each do |arr|
      @result = 'o' if arr.all? { |x| x == 'o' }
      @result = 'x' if arr.all? { |x| x == 'x' }
  end
  puts @result.empty? ? 'd' : @result
end
