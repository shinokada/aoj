while n1 = gets.split(' ').map(&:to_i)
n2 = gets.split(' ').map(&:to_i)
result = []
hit = 0
blow = 0
n1.zip(n2).each{|e| hit +=1 if e[0]==e[1] }

n1.each{|e| blow +=1 if n2.include?(e)}
result << hit << blow - hit
p result.join(' ')
end
