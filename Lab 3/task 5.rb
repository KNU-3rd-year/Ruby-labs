N = rand(2..15)
C = rand(2..15)
PI = 3.141

def y_first(x)
  (1 + x + x**2).fdiv(2 * x + x**1.fdiv(N - C))
end

def y_second(x)
  (1 - x + x**2).fdiv(2 * x - x**2)
end

def y(x)
  (y_first(x) + 2 - y_second(x))**-1 * (5 - 2 * x**2)
end

def z(x)
  last = 1.0 / ((Math.tan((PI + x) / (x + 1)))**(2.0 / x))
  last = last.real
  Math.sin(2 * x)**2 - Math.cos(PI / 3 - 2 * x) * Math.sin(2 * x - PI / 6) - last
end

def task1
  step = (N - 1).fdiv(N + C)
  print "step = #{step}\n"
  1.step(N, step) do |x|
    print "x = #{x}, y = #{y(x)}\n"
  end
  print "\n"
end

def task2
  step = (PI - PI / N).fdiv(3.fdiv(2) * N + C)
  print "step = #{step}\n"
  (PI / N).step(PI, step) do |x|
    print "x = #{x}, z = #{z(x)}\n"
  end
  print "\n"
end

def task3
  step = (PI - (C - 2)).fdiv(2 * N)
  print "step = #{step}\n"
  (C - 2).step(PI, step) do |x|
    if 2 < x || x < N
      print "x = #{x}, f = #{y(x)}\n"
    elsif N < x || x < 2 * N
      print "x = #{x}, f = #{z(x)}\n"
    else
      print "x = #{x}, f = #{y(x) + z(x)}\n"
    end
  end
  print "\n"
end

print "N = #{N},\nC = #{C}\n\n"
task1
task2
task3
