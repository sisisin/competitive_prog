n,x = gets.chomp.split(" ").map(&:to_i)
l = gets.chomp.split(" ").map(&:to_i)

d=0
cnt=1

l.each { |li|
  d = d + li
break  if d > x || cnt == n + 1
  cnt+=1
}

print(cnt)
