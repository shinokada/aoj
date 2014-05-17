# Not done yet
# Maximum Sum Sequence
# Given a sequence of numbers a1, a2, a3, , , an, find the 
# maximum sum of a contiguous subsequence of those numbers. 
# Note that, a subsequence of one element is also a contiquous subsequence.

total = []
sum_max = 0
sum_a = 0
sum = []
while n = gets.to_f
  if n == 0
    p total
  else
    i = 0
    while i < n  
      sum << gets.to_f
      #p sum
      i += 1
      sum.map{|e| e.inject(:+).to_i}
    end
    total << sum
    sum = []
    #p total
  end
end
