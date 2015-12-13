def say(words)
  Kernel.puts("--> #{words} <--")
end

def win?(first, second)
  (first == 'p' && second == 'r') ||
    (first == 's' && second == 'p') ||
    (first == 'r' && second == 's') ||
    (first == 'r' && second == 'l') ||
    (first == 's' && second == 'l') ||
    (first == 'p' && second == 'sp') ||
    (first == 'sp' && second == 's') ||
    (first == 'sp' && second == 'r') ||
    (first == 'l' && second == 'sp') ||
    (first == 'l' && second == 'p')
end

def display_results(player, computer)
  if win?(player, computer)
    say('You win!')
  elsif win?(computer, player)
    say('Computer won!')
  else
    say('Tie!')
  end
end

WEAPONS = { 'r' => 'Rock', 'p' => 'Paper', 's' => 'Scissors', 'l' => 'Lizard',
            'sp' => 'Spock' }

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

  say("The computer chose #{WEAPONS[computer_choice]}")

  display_results(player_choice, computer_choice)

  say('Do you want to play again? yes or no')
  response = Kernel.gets().chomp()
  break unless response.downcase().start_with?('y')
end
