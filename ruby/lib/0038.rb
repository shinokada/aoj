def pokerHand(arr)
  result = arr.inject(Hash.new(0)){ |total, e| total[e] += 1 ; total}.values
  arr_sort = arr.sort
  straight = arr_sort.each_with_index{|e, i| arr_sort[i] = arr_sort[i+1].to_i - arr_sort[i].to_i}.shift(arr_sort.length-1)

  case 
  when (result.count(3) == 1 and result.count(2) ==1)
    'full house'
  when result.count(2) == 1
    'one pair'
  when result.count(2) == 2
    'two pair'
  when result.count(3) == 1
    'three card'
  when result.count(4) == 1
    'four card'
  when (straight == [1,1,1,1] or straight ==[9,1,1,1])
    'straight'
  else
    'null' 
  end
end
