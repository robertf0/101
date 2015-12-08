def say(words)
  Kernel.puts("=> #{words}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(operator)
  case operator
  when 'a'
    'Adding'
  when 'm'
    'Multipling'
  when 's'
    'Subtracting'
  when 'd'
    'Dividing'
  end
end

say('Welcome to the calculator! Please enter you name')

name = ''

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
  say("Please enter you name.")
  else
    break
  end
end

say("Hi #{name}")

loop do

  num1 = ''
  num2 = ''

  loop do
    say('Please enter the first number')
    num1 = Kernel.gets().chomp()

    if valid_number?(num1)
      break
    else
      say('Not a valid number')
    end
  end

  loop do
    say('Please enter the second number')
    num2 = Kernel.gets().chomp()

    if valid_number?(num2)
      break
    else
      say('Please enter a valid number')
    end
  end

  operator_choices = <<-HERE
    Would you like to 
    (a)dd
    (m)uiltiply 
    (s)ubtract
    (d)ivide?
  HERE

  say(operator_choices)

  operator = ''

  loop do
    operator = Kernel.gets().chomp()

    if %w(a m s d).include?(operator.downcase())
      break
    else
      say("Must choose a, m, s or d")
    end
  end

  say("#{operation_to_message(operator)}")

  answer = case operator.downcase()
           when 'a'
            num1.to_i() + num2.to_i()
           when 'm'
            num1.to_i() * num2.to_i()
           when 's'
            num1.to_i() - num2.to_i()
           when 'd'
            num1.to_f() / num2.to_f()
           else
            say('You did not enter a valid operator')
           end

  say("The answer is #{answer}")
  say('Do you want to run calculator again? (Y) or (N)')
  response = Kernel.gets().chomp()
  break unless response.downcase().start_with?('y')
end

say('Thank you for using calculator')