puts 'type decimal number:'
decimal = gets.chomp.to_i

binary = ''

while decimal > 0
  binary = (decimal % 2).to_s + binary
  decimal /= 2
end

print 'binary = ', binary, "\n"