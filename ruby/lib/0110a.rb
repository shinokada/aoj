def alphametic(input)
  candidate = (input =~ /[\+=]X/ or input =~ /^X/) ? 1..9 : 0..9
  candidate.find {|i| eval(input.gsub('X', i.to_s).sub('=', '==')) } || "NA"
end
 
  while line = gets
    puts alphametic(line.chomp)
  end

