# E の図形が置かれています。平面の中で図形が占めているマスを1 占めていないマスを0で表現した数字の列を読み込んで置かれている図形の種類（A～G）を出力して終了するプログラムを作成してください。

def figure_on_surface(arr)
  hash = {
    'A' => [0, 1, 0, 1],
    'B' => [0, 0, 0, 0],
    'C' => [0, 1, 2, 3],
    'D' => [1, 0, 1, 0],
    'E' => [0, 1, 1, 2],
    'F' => [0, 0, 1, 1],
    'G' => [1, 2, 0, 1]
  }
  result = []
  arr.each do |e|
    e.each_with_index do |v, i|
      result << i if v == 1
    end
  end
  final = result.map { |e| e - result.min }
  hash.each { |i, v| return i if v == final }
end
