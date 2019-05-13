a = gets.chomp.to_i
b = gets.chomp.split(" ").map(&:to_i)

odd = []
even = []

b.each_with_index { |num, i|
  if i % 2 == 1
    even[num] = even[num].nil? ? 1 : even[num] + 1
  else
    odd[num] = odd[num].nil? ? 1 : odd[num] + 1
  end
}

e_c = even.find_all { |v| !v.nil? }.sort.reverse
e_r1 = a / 2 - e_c.first
e_r2 = e_c[1].nil? ? a / 2 : a / 2 - e_c[1]

o_c = odd.find_all { |v| !v.nil? }.sort.reverse
o_r1 = a / 2 - o_c.first
o_r2 = o_c[1].nil? ? a / 2 : a / 2 - o_c[1]

a = e_r1 + o_r1
b = e_r1 + o_r2
c = e_r2 + o_r1
d = e_r2 + o_r2

print([a, b, c, d].min)
