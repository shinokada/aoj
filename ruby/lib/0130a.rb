gets.to_i.times{
  train = gets.chomp
  ans=[]
  train.gsub!(/-/,"")
  hash = Hash.new
  flag = false
  train.each_char{|c|
    if c==">"
      flag = false
    elsif c=="<"
      flag = true
    elsif hash.include?(c)
      next
    else
      flag ? ans.unshift(c) : ans<<c
      hash[c]=true
    end
  }
  puts ans.join
}

