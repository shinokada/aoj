# Caesar Chipher
# Solution at 
# https://github.com/morizyun/aoj-ruby-python/blob/master/ruby/0017.rb 
# is very clever.

# input = 'xlmw mw xli tmgxyvi xlex m xsso mr xli xvmt.'

ALPHBET = 'abcdefghihklmnopqrstuvwxyz'
input = gets.chomp
the = input.split.select { |e| e.length == 3 } # return ["xli", "xli"]
alpha = ALPHBET.split('')
result = []
diff = alpha.index('t') - alpha.index(the[0][0]) # the[0][0] returns 'x'
input_arr = input.split('')
input_arr.map do |e|
  if e == '.'
    result << '.'
  elsif e == ' '
    result << ' '
  else
    i = alpha.index(e).to_i + diff
    result << alpha[i]
  end
end

p result.join
