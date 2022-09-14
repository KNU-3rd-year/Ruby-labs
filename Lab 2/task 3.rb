puts 'type binary number:'
binary = gets.chomp

decimal = 0

(0..binary.length - 1).each do |i|
  decimal += 2**i if binary[binary.length - 1 - i] == '1'
end

print 'decimal = ', decimal
