require 'matrix'

puts 'type n:'
n = gets.chomp.to_i
k = 12

if n < 3 || n > 9
  puts "invalid input: n should be in the range from 3 to 9!"
  return
end
print "k = ", k, "\n"

# setting up the matrix
m = Array.new(n).map! { Vector[*Array.new(n + 1, k + 2)] }
(0..n-1).each do |i|
  m[i][i] = 2.0
  m[i][n] = i + 1.0
end
puts 'initial matrix:'
puts m.to_a.map(&:inspect), "\n"

# calculating
(0..n-1).each do |i|
  m[i] /= m[i][i]
  (0..n-1).each do |j|
    if i != j
      m[j] -= m[i] * m[j][i]
    end
  end
end

puts m.to_a.map(&:inspect), "\n"

puts 'answer is:'
(0..n-1).each do |i|
  print "x", i + 1, " = ", m[i][n], "\n"
end