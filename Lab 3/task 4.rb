# frozen_string_literal: true

E = 0.00001

def fact(n)
  n > 1 ? n * fact(n - 1) : 1
end

def task1
  res = 0
  factorial = 2

  2.upto(Float::INFINITY) do |i|
    delta = ((factorial / (i - 1)).to_f / (factorial * (i + 1)))**(i * (i + 1))
    res += delta
    factorial *= (i + 1)
    #print "res = #{res}\n"
    #print "delta = #{delta}\n\n"
    break if delta <= E
  end

  res
end

def task2
  res = 0
  number = 1
  sign = 1

  while (1.to_f / number).abs >= E
    delta = (1.to_f / number) * sign
    res += delta
    #print "res = #{res}\n"
    #print "delta = #{delta}\n\n"
    number += 2
    sign *= -1
  end

  res
end

def task3
  res = 0

  1.upto(Float::INFINITY) do |i|
    delta = fact(4*i) * fact(2*i - 1).to_f / (fact(4*i + 1) * 4**(2*i) * fact(2*i))
    res += delta
    #print "res = #{res}\n"
    #print "delta = #{delta}\n\n"
    break if delta <= E
  end

  res
end

print "Res task 1 = #{task1}\n"
print "PI / 4 = #{Math::PI / 4},\n and Res task 2 = #{task2}\n"
print "Res task 3 = #{task3}\n"
