VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

WINNING_MOVES = {
  rock: ['scissors', 'lizard'],
  paper: ['rock', 'spock'],
  scissors: ['paper', 'lizard'],
  lizard: ['spock', 'paper'],
  spock: ['rock', 'scissors']
}

score = { player: 0, computer: 0 }

def prompt(message)
  puts ">> #{message}"
end

def select_move(score)
  loop do # player's choice
    display_game_info(score)
    player_choice = gets.chomp.downcase

    if VALID_CHOICES.keys.include?(player_choice)
      return VALID_CHOICES[player_choice]
    else
      clear_screen
      prompt("That's not a valid choice.")
    end
  end
end

def win?(player1_choice, player2_choice)
  winning_moves_for_choice = WINNING_MOVES[player1_choice.to_sym]
  winning_moves_for_choice.include?(player2_choice)
end

def display_round_results(player, computer)
  prompt("You chose: #{player}; Computer chose: #{computer}")

  if win?(player, computer)
    prompt("You won this round!")
  elsif win?(computer, player)
    prompt("Computer won this round!")
  else
    prompt("It's a tie!")
  end
  puts ""
end

def display_match_results(score)
  prompt("Final score: Player #{score[:player]}; Computer #{score[:computer]}")
  prompt("#{match_winner(score)} wins the match!")
end

def match_winner(score)
  if score[:player] == 5
    'Player'
  else
    'Computer'
  end
end

def increment(score, player, computer)
  score[:player] += 1 if win?(player, computer)
  score[:computer] += 1 if win?(computer, player)
end

def display_game_info(score)
  prompt("Score: Player #{score[:player]}; Computer #{score[:computer]}")
  puts "Select your move:"
  VALID_CHOICES.each { |key, value| puts "'#{key}' for #{value}" }
  puts "........................."
end

def reset(score)
  score[:player] = 0
  score[:computer] = 0
end

def play_again?
  answer = ''
  loop do
    prompt("Would you like to play again? (Please choose: 'Yes' or 'No')")
    answer = gets.chomp.downcase
    break if answer == 'yes' || answer == 'no'
    prompt("Invalid selection. Please choose: 'Yes' or 'No'.")
  end
  answer == 'yes' ? true : false
end

def clear_screen
  system('clear') || system('cls')
end

clear_screen
prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")
prompt("First to score five points, wins the match!")

loop do # main loop
  while score[:player] < 5 && score[:computer] < 5 # match loop
    player_choice = select_move(score)
    computer_choice = VALID_CHOICES.values.sample

    clear_screen
    display_round_results(player_choice, computer_choice)

    increment(score, player_choice, computer_choice)
  end

  display_match_results(score)

  unless play_again?
    clear_screen
    break
  end

  reset(score)
  clear_screen
end
