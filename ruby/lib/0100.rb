while n = gets.to_i
  break if n.zero?
  dataset = {}
  dataset.default = 0

  n.times do 
    id, price, quantity = gets.split.map(&:to_i)
    dataset[id] += price * quantity
  end
  more_than_mil =  dataset.select { |key, val| val >= 1_000_000 }.keys
  puts more_than_mil.empty? ? "NA" : more_than_mil
end
