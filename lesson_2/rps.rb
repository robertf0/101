def say(words)
  Kernel.puts("--> #{words} <--")
end

WEAPONS = { 'r' => 'Rock', 'p' => 'Paper', 's' => 'Scissors' }

loop do
  player_choice = nil
  loop do
    say('Please make a selection')
    WEAPONS.each { |key, value| say("#{key} for #{value}") }
    player_choice = Kernel.gets().chomp().downcase()
    if WEAPONS.keys.include?(player_choice)
      break
    else
      say('You did not make a valid selection')
    end
  end

  say("You chose #{WEAPONS[player_choice]}")

  computer_choice = WEAPONS.keys().sample()

  puts "The computer chose #{WEAPONS[computer_choice]}"

  if player_choice == computer_choice
    say('Its a tie!')
  elsif player_choice == 'p' && computer_choice == 'r'
    say('Paper covers Rock')
    say('Player wins!')
  elsif player_choice == 's' && computer_choice == 'p'
    say('Scissors cut Paper')
    say('Player wins!')
  elsif player_choice == 'r' && computer_choice == 's'
    say('Rock crushes Scissors')
    say('Player wins!')
  elsif computer_choice == 'p' && player_choice == 'r'
    say('Paper covers Rock')
    say('Computer wins!')
  elsif computer_choice == 's' && player_choice == 'p'
    say('Scissors cut Paper')
    say('Computer wins!')
  elsif computer_choice == 'r' && player_choice == 's'
    say('Rock crushes Scissors')
    say('Computer wins!')
  end

  say('Do you want to play again? yes or no')
  response = Kernel.gets().chomp()
  break unless response.downcase().start_with?('y')
end
