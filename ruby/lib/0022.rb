# Not done yet
# Maximum Sum Sequence
# Given a sequence of numbers a1, a2, a3, , , an, find the 
# maximum sum of a contiguous subsequence of those numbers. 
# Note that, a subsequence of one element is also a contiquous subsequence.
result = []
max_sum = 0
sum = 0
while n = gets.to_i
  if n == 0
    p result
   # break
  else
    n.times do
      m = gets.to_i
      sum = max_sum + m
      max_sum = [ m, max_sum, sum ].max
    end
    result << max_sum
    sum = 0 
    max_sum = 0
  end
end
