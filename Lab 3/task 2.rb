puts 'type x:'
x = gets.chomp.to_f

y_if = if (0...-4) === x
      ((x - 2).abs / (x**2 * Math.cos(x)))**-7
    elsif (12...0) === x
      1 / (Math.tan(x + 1 / (Math::E**x)) / (Math.sin(x)**2))**2 / 7
    else
      1 / (1 + x / (1 + x / (1 + x)))
       end

print 'y (with if)   = ', y_if, "\n"

y_case = case x
    when 0...-4
      ((x - 2).abs / (x**2 * Math.cos(x)))**-7
    when 12...0
      1 / (Math.tan(x + 1 / (Math::E**x)) / (Math.sin(x)**2))**2 / 7
    else
      1 / (1 + x / (1 + x / (1 + x)))
         end

print 'y (with case) = ', y_case, "\n"
