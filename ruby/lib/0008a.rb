$<.map{|l|p [*0..9].repeated_permutation(4).count{|m|l.to_i.==m.inject:+}}

