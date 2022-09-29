require 'matrix'

n = 8

ar_a = Array.new(n).map! { Array.new(n).map! { rand(50) } }
ar_b = Array.new(n).map! { Array.new(n).map! { rand(50) } }

a = Matrix[*ar_a]
b = Matrix[*ar_b]
puts a.to_a.map(&:inspect), "\n"
puts b.to_a.map(&:inspect), "\n"

result = a + b
puts result.to_a.map(&:inspect)