# ask for the loan amount
# ask for the APR
# ask for loan duration
# caclulate monthly intrest rate and loan duration in months
# tell user the full loan term and monthly payment amount



def say(input)
  Kernel.puts("==>> #{input} <<==")
end

def caclulate(principal, apr, term)
  annual_interest_rate = apr.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = term.to_i() * 12

  monthly_payment = principal.to_f() *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-months.to_i()))
end

loop do

  say('Welcome to the loan calculator')

  say('Please enter the loan amount')

  principal = ''

  loop do 
    principal = Kernel.gets().chomp()

    if principal.empty?() || principal.to_f() < 0
      say('You must enter a positive number.')
    else
      break
    end
  end

  say('Please enter the APR')

  apr = ''

  loop do
    apr = Kernel.gets().chomp()

    if apr.empty?() || apr.to_f() < 0
      say('You must enter a positive number.')
    else
      break
    end
  end

  say('Please enter the loan duration (in years)')

  term = ''
  loop do
    term = Kernel.gets().chomp()

    if term.empty?() || term.to_i() < 0
      say('You must enter a positive number.')
    else
      break
    end
  end

  say("Your monthly payment comes to #{format('%02.2f', caclulate(principal, apr, term))}")

  say('Do you want to run calculator again? (Y) or (N)')
  response = Kernel.gets().chomp()
  break unless response.downcase().start_with?('y')

end

def hjgjh
end




