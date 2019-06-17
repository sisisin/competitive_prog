w,h,x,y = gets.chomp.split(' ').map(&:to_i)

def square?(w,h,x,y)
  x == y || w - x == y || w -x == h - y || x == h - y
end

if x == 0 || y == 0
  ans=w*h/2
  multiple = 0
elsif w == h && square?(w,h,x,y)
  ans=w*h/2
  multiple = x * 2 == w && y * 2 == h ? 1 : 0
else
  hor1 = (h-y) * w
  hor2 = y * w
  ans_h = [hor1,hor2].min

  ver1 = h*(w-x)
  ver2 = h*x
  ans_v = [ver1,ver2].min

  ans = [ans_h,ans_v].max
  multiple = ans_h == ans_v ? 1 : 0
end

print("#{ans} #{multiple}")

