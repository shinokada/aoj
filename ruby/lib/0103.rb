@hit = 0
@score = 0
@out = 0
@inning = 0
@results = []

def hit
  # add hit
  @hit += 1
  # when hits reach 4 then add one to score
  if @hit > 3
    @score += 1
    @hit = 3
  end
end

def homerun
  @score += (@hit + 1)
  @hit = 0
end

def out
  @out += 1  
end

def inning_change
  @results << @score
  @out = 0
  @score = 0
  @hit = 0
  @inning += 1
end


n = gets.to_i
while @inning < n
  break if @inning == n
  hitting = gets.chomp
  case hitting 
  when 'HIT'
    hit
  when 'OUT'
    out
  when 'HOMERUN'
    homerun
  end
  if @out== 3
    inning_change
  end
  p Hash['HIT' => @hit, 'score' => @score, 'out' => @out, 'inning' => @inning]
end
  puts @results
