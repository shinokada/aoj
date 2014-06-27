while line = gets
  candidate = (line =~ /[\+=]X/ or line =~ /^X/) ? (1..9) : (0..9)
  puts candidate.find {|i| eval(line.gsub('X', i.to_s).sub('=', '==')) } || "NA"
end

