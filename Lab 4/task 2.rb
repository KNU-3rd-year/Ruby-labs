require 'matrix'

n = 8

ar_a = Array.new(n).map! { Array.new(n).map! { rand(10) } }
ar_b = Array.new(n).map! { Array.new(n).map! { rand(10) } }

(0..n-1).each do |i|
  ar_a[i][i] = 1
  ar_b[i][i] = 1
end

a = Matrix[*ar_a]
b = Matrix[*ar_b]
puts a.to_a.map(&:inspect), "\n"
puts b.to_a.map(&:inspect), "\n"

result = a + b
puts result.to_a.map(&:inspect)