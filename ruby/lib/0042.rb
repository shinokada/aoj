  c = 1
  loop do
    w = gets.to_i
    break if w == 0
    n = gets.to_i
    table = Array.new
    n.times {table << gets.split(',').map(&:to_i)}
    mw, mv = w, 0
    dp = Array.new(n+1).map{Array.new}
    dp[0][0] = 0
    table.each.with_index(1) do |p, i|
      (0..w).reject{|wi| dp[i-1][wi].nil?}.each do |wi|
        t = dp[i][wi] = [dp[i][wi]||0, dp[i-1][wi]].max
        mw, mv = wi, t if ( t > mv || ( t == mv && wi < mw ) )
#        if wi + p[1] <= w
#          t = dp[i][wi + p[1]] = [dp[i][wi + p[1]]||0, dp[i-1][wi] + p[0]].max
#          mw, mv = wi + p[1], t if ( t > mv || ( t == mv && wi + p[1] < mw ) )
#        end
#      end
#    end
#
#    puts "Case #{c}:", mv, mw
#
#    c += 1
  end
