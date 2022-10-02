def f(x, i)
  (x**i * Math.cos(i * Math::PI / 3.0)) / i.to_f
end

def series(x, n)
  x_rage = 0.1..0.8
  n_range = 15..58
  error = 0.001

  unless x_rage.include? x
    raise "'x' is out of range"
  end

  if (!n_range.include? n) && (n != 0)
    raise "'n' is out of range"
  end

  res = 0.0
  if n_range.include? n
    (1..n).each do |i|
      cur = yield(x, i)
      res += cur
    end
    [res, n]
  elsif n == 0
    i = 1
    cur = error
    while cur.abs >= error
      cur = yield(x, i)
      res += cur
      i += 1
    end
    [res, i]
  else
    raise "'x' or 'n' is out of range"
  end
end

sum, iter = series(0.5, 50) {|x, i| f(x, i) }

puts "Sum: #{sum}"
puts "Number of iterations: #{iter}"