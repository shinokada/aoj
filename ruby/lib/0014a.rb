$<.map{|d|d=d.to_i;p (0..599/d).inject{|s,n|s+n*n*d**3}}

