n=gets.to_i
hs=gets.chomp.split(" ").map(&:to_i);

r=0
hs.each_with_index {|hi, i|
  if i==0
    r+=1
  else
    r+=1 if hs.slice(0,i).all? {|h| h<=hi}
  end
}

print(r)