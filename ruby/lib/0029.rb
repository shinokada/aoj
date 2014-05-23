# English Sentence
# The task is to write a program which reads a text and prints two words. The first one is the word which is arise most frequently in the text. The second one is the word which has the maximum number of letters.

def english(str)
  result = []
  arr = str.split(' ')
  result << arr.uniq.group_by { |v| arr.count(v) }.max.last.join
  result << arr.max_by{|x| x.length } 
end
