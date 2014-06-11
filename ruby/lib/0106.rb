# if you are buying a bulk
# 200 x 5 = 1000g cost 1520, 1.52 yen/g
# 300 x 4 = 1200g cost 1870, 1.558 yen/g
# 500 x 3 = 1500g cost 2240, 1.496 yen/g
# Individually buying
# 200g 380yen, 1.9yen/g
# 300g, 550yen, 1.83yen/g
# 500g, 850yen, 1.7yen/g
# Conclusion
# Buy in order of 500x3, 200x5, 300x4, 500x1, 300x1 and 200x1 

# result = []
# SHOPS = [[200, 380, 5, 0.8],[300, 550, 4, 0.85],[500, 850, 3, 0.88]]
# while n = gets.to_i
#   if n.zero? 
#     puts result
#     break
#   end
#   SHOPS.each do |list|
#     if n % list[0] == 0
#       @price = []
#       q1 = n.div(list[0])
#       q2, r = q1.divmod(list[2])
#       @price << list[1] * q2 * list[2] * list[3] + list[1] * r
#     end
#   end
#   result << @price.sort.first.to_i
# end

