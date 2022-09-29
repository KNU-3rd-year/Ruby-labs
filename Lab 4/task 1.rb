n = 15

a = Array.new(n).map! { rand(50) }
b = Array.new(n).map! { rand(50) }
print "A(15) = ", a, "\n"
print "B(15) = ", b, "\n"

common = Array.new(n) { |i| [a[i], b[i]] }

c = common.find_all { |i| i[0] % 2 == 0 }.map { |i| i[0] + i[1] }
c += common.find_all { |i| i[0] % 2 == 1 }.map { |i| i[0] + i[1] }

print "C(15) = ", c, "\n"