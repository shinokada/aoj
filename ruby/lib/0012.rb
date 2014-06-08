# A Point in a Triangle http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0012
require 'matrix'

def point_triangle(arr)
  x1, y1, x2, y2, x3, y3, xp, yp = arr.map(&:to_f)
  ab = Vector[x2 - x1, y2 - y1, 0]
  ac = Vector[x3 - x1, y3 - y1, 0]
  ap = Vector[xp - x1, yp - y1, 0]
  ab_cross_ap = ap.cross_product ab
  ac_cross_ap = ap.cross_product ac
  bc = Vector[x3 - x2, y3 - y2, 0]
  bp = Vector[xp - x2, yp - y2, 0]
  ba = -1 * ab
  bc_cross_bp = bp.cross_product bc
  ba_cross_bp = bp.cross_product ba
  #ab_cross_ap[2] * ac_cross_ap[2] < 0
  #bc_cross_bp[2] * ba_cross_bp[2] < 0
  
  (ab_cross_ap[2] * ac_cross_ap[2] < 0 and bc_cross_bp[2] * ba_cross_bp[2] < 0) ? 'YES' : 'NO'
end

while n = gets
  arr = n.split(' ')
  p point_triangle(arr)
end
