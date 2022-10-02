a = 0.2
b = 1.0

def f1(x)
  Math.sqrt(2**x - 1)
end

def f2(x)
  1.0 / (1 + Math.sqrt(2**x))
end

def prm(x0, x1, dx=(x1-x0)/1000.0)
  x = x0 + dx/2
  sum = 0
  loop do
    y = yield(x)
    sum += dx * y
    x += dx
    break if x > x1
  end
  sum
end

def trp(x0, x1, dx=(x1-x0)/1000.0)
  x = x0 + dx
  sum = dx * yield(x0) / 2.0
  loop do
    y = yield(x)
    sum += dx * y
    x += dx
    break if x >= x1 - dx
  end
  sum += dx * yield(x0) / 2.0
  sum
end

puts "prm with f1: #{prm(a, b) {|x| f1(x) }}"
puts "trp with f1: #{trp(a, b) {|x| f1(x) }}"
puts "prm with f2: #{prm(a, b) {|x| f2(x) }}"
puts "trp with f2: #{trp(a, b) {|x| f2(x) }}"