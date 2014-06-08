require 'Matrix'
# Used cross product sign to check if they are the same side or not.
# This check should be done not only bd, but also ac as well 

def convex?(arr)
  xa, ya, xb, yb, xc, yc, xd, yd = arr
  ba = Vector[xa - xb, ya - yb, 0]
  bc = Vector[xc - xb, yc - yb, 0]
  bd = Vector[xd - xb, yd - yb, 0]
  cross_bd_ba = ba.cross_product bd # ba x bc in Ruby means bc x ba
  cross_bd_bc = bc.cross_product bd 
  # YES : not convex NO: No it's convex
  cross_bd_bc[2] * cross_bd_ba[2] < 0 ? 'YES' : 'NO' 
end
