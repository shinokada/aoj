class Array
  def test
    self.each{ |e| puts "This is my array element #{e}"}
  end
end

[1, 2, 3, 4].test
