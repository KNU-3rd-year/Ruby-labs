def subtask2
  sum = 0

  10.times do |i|
    sum += 1.0 / 3**i
  end

  sum
end

def subtask3
  puts 'type x: '
  x = gets.chomp.to_f
  puts 'type n: '
  n = gets.chomp.to_i

  sum = 0
  fact = 1
  (n + 2).times do |i|
    sum += x.to_f**i / fact
    fact *= i + 1
  end

  sum
end

print "Subtask 2: 1 + 1/3 + 1/3^2 + ... + 1/3^8 = #{subtask2}", "\n"
print "Subtask 3: 1 + x^1/1! + ... + x^n/n! = #{subtask3}"
