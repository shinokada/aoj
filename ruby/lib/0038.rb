def poker_hand(arr)
  result = arr.reduce(Hash.new(0)) { |a, e| a[e] += 1 ; a }.values
  arr_sort = arr.sort
  straight = arr_sort
  .each_with_index do |_e,  i|
    arr_sort[i] = arr_sort[i + 1].to_i - arr_sort[i].to_i
  end
  .shift(arr_sort.length - 1)

  case
  when (result.count(3) == 1 && result.count(2) == 1)
    'full house'
  when result.count(2) == 1
    'one pair'
  when result.count(2) == 2
    'two pair'
  when result.count(3) == 1
    'three card'
  when result.count(4) == 1
    'four card'
  when (straight == [1, 1, 1, 1] || straight == [9, 1, 1, 1])
    'straight'
  else
    'null'
  end
end
