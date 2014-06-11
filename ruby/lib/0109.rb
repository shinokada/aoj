class Fixnum
  def / n
    d = 1.0*self.fdiv(n)
    if d < 0
      d.ceil
    else
      d.floor
    end
  end
end
gets.to_i.times do
  puts eval(gets.chomp.chop) 
end
