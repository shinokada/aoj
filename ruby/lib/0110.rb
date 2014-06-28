while n = gets.chomp
answers = []
expans = []
result =''
  exp, ans = n.split('=')
  (0..9).each do |sub|
    expans <<  eval(exp.gsub(/[X]/, sub.to_s))
    answers << ans.gsub(/[X]/, sub.to_s)
  end
  answers.map(&:to_i)
  expans.zip(answers.map(&:to_i)).each_with_index do |arr, index|
    result = index if arr[0] == arr[1]
  end
  if result.is_a? Integer
    puts result
  else
    puts 'NA'
  end
end
