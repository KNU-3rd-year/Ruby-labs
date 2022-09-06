=begin
example vertex:
(34,145) (37,105) (41,66) (70,56) (99,49) (134,41) (152,37) (185,35) (226,31) (282,30) (334,31) (413,44) (450,63) (473,107) (490,138) (500,217) (495,255) (470,278) (445,276) (401,255) (396,216) (396,175) (381,139) (353,118) (310,117) (289,130) (256,120) (240,99) (219,84) (172,82) (152,90) (139,100) (113,116) (97,126) (68,143)
=end

puts 'type vertex:'
input = gets

s = 0
x_prev = nil
y_prev = nil
x_first = nil
y_first = nil

input.split.each { |point|
  x = point.match(/(\d+),(\d+)/)[1].to_i
  y = point.match(/(\d+),(\d+)/)[2].to_i

  if x_prev == nil || y_prev == nil
    x_prev = x
    y_prev = y
    x_first = x
    y_first = y
  else
    s += (x_prev + x) * (y_prev - y)
    x_prev = x
    y_prev = y
  end
}
s += (x_prev + x_first) * (y_prev - y_first)

s = s.abs.fdiv 2
print "S = ", s
