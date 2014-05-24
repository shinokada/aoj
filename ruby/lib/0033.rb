def ball(arr)
  setnum = arr.shift
  result = []
  left = []
  right = []
  arr.each do |v|
    v.each do |e|
      if e > (left.last || 0)
        left << e
      elsif e > (right.last || 0)
        right << e
      else
        break
      end
    end
    v.length == right.length + left.length ? result << "YES" : result << "NO" 

  end
  result
end
