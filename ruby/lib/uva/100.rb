# book: Programming challenges 
# 1.6.1 The 3n + 1 problem
# 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1

def operation(n, m)
  @arr = []
  (n..m).each do |num| 
  series = []
    until num == 1 
      if num % 2 == 0
        num = num / 2
        series << num
      else
        num = 3 * num + 1
        series << num
      end
    end
    @arr << series
  end
  @count = []
  @arr.each do |array|
    @count << array.count
  end
  @count.max + 1
end

n, m = gets.split(' ').map(&:to_i)
p operation(n, m)
