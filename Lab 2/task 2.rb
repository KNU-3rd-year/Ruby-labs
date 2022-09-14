# frozen_string_literal: true

puts 'type P:'
p = gets.chomp.to_f
puts 'type t:'
t = gets.chomp.to_f
puts 'type r:'
r = gets.chomp.to_f

diapason = p**r * (1 - 1 / p**t)

print 'Diapason = ', diapason.round
