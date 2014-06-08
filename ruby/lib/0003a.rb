gets.to_i.times{ n = gets.split(' ').map(&:to_i).sort; puts n.pop == Math::hypot(*n) ? "YES" : "NO" }

