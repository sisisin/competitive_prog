h, w = gets.chomp.split(" ").map(&:to_i)

queue = []

(0..h - 1).each { |v|
  row = gets.chomp
  offset = 0
  loop do
    index = row.index("#", offset)
    break if index.nil?

    offset = index + 1
    xy.push([v, index])
    s.add([v, index])
  end
}

def calc_kyori(xy1, xy2)
  x, y = xy1
  x1, y1 = xy2
  (y1 - y).abs + (x1 - x).abs
end

kyori = 0
