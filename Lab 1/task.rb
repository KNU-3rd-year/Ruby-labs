puts 'type x:'
x = gets.chomp.to_f
puts 'type a:'
a = gets.chomp.to_f
puts 'type b:'
b = gets.chomp.to_f

first = (6.2 * 10**2.7 + Math.tan(Math::PI - x**3)) /
  Math::E**(x / a) + Math.log(b**2)

second = Math.atan(10**3 * Math.sqrt(a) / (2 * x - b))

print 'L = ', first + second, "\n"
