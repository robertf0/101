Kernel.puts('Welcome to the calculator')

Kernel.puts('Please enter the first number')

num1 = Kernel.gets().chomp()

Kernel.puts('Please enter the second number')

num2 = Kernel.gets().chomp()

Kernel.puts('Would you like to (a)dd, (m)uiltiply, (s)ubtract or (d)ivide?')

operator = Kernel.gets().chomp()

if operator.downcase() == 'a'
  answer = num1.to_i() + num2.to_i()
elsif operator.downcase() == 'm'
  answer = num1.to_i() * num2.to_i()
elsif operator.downcase() == 's'
  answer = num1.to_i() - num2.to_i()
elsif operator.downcase() == 'd'
  answer = num1.to_f() / num2.to_f()
else
  Kernel.puts('You did not enter a valid operator')
end

Kernel.puts("The answer is #{answer}")
