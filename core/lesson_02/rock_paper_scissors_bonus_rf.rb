# rock paper scissors 082118

CHOICES = {
  "Rock" => %w(scissors lizard),
  "Paper" => %w(rock Spock),
  "Scissors" => %w(paper lizard),
  "Lizard" => %w(Spock paper),
  "Spock" => %w(scissors rock)
}

def prompt(message)
  puts(" => #{message}")
end

def validate_name(input)
  input.scan(/^[a-zA-Z]+$/).empty?
end

def choice(str)
  choice = case str
           when 'r'
             'Rock'
           when 'p'
             'Paper'
           when 's'
             'Scissors'
           when 'l'
             'Lizard'
           when 'k'
             'Spock'
           end
  choice
end

def get_player_choice
  player_choice = ''
  loop do
    puts ''
    prompt("Enter 'r' for rock, 'p' for paper, 's' for scissors,
      'l' for lizzard, 'k' for spock.")
    player_choice = choice(gets.chomp)
    if CHOICES.include?(player_choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  player_choice # return this to use in another method
end


def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'lizard' && second == 'Spock') ||
    (first == 'Spock' && second == 'scissors')
end

def determine_winner(player_choice, computer_choice)
  player_choice = get_player_choice
  computer_choice = CHOICES.keys.sample
  if player_choice == computer_choice
    prompt("It's a tie. No points for this round.")
  elsif CHOICES.fetch(player_choice).include?(computer_choice) == true
    prompt("You win this round!")
  else
    prompt("The computer won this round!")
  end
  determine_winner(player_choice, computer_choice)
end
#
def announce_score(name, player_score, computer_score)
  prompt("Score:: #{name}: #{player_score} || Computer: #{computer_score}")
end
#
def score_increment(player, computer)
  if win?(player, computer)
    player_score += 1
  elsif win?(computer, player)
    computer_score += 1
  end
end

def overall_winner(player_score, computer_score)
  if player_score == 5
    prompt("You won the match!")
    #break
  elsif computer_score == 5
    prompt("The computer won the match!")
    #break
  end
end

def clear_screen
  system('clear') || system('cls')
end

# ........................................

clear_screen
loop do
  prompt("Welcome to The Rock, Paper, Scissors, Game!")
  prompt("First player to win 5 games is the winner.")
  prompt("...........................................")

  puts ''

  prompt("What's your first name?")

  name = ''
  loop do
    name = gets.chomp.capitalize
    if validate_name(name)
      prompt("Please enter a valid name.")
    else
      break
    end
  end

  clear_screen
  loop do
    prompt("Enter your choice, #{name}")
    player_choice = ''
    computer_choice = ''
    loop do
      determine_winner(player_choice, computer_choice)
      announce_score(name, player_score, computer_score)
      score_increment(player_score, computer_score)

      if overall_winner(player_score, computer_score)
        break
      end

    end

    puts ''

    prompt("Would you like to play again? Enter 'y'for yes,
      and any other key to exit.")
    play_again = gets.chomp.downcase

    if play_again == 'y'
      puts "Ok. Let's do it!"
      player_score = 0
      computer_score = 0
      clear_screen
    else
      puts ''
      puts "Awesome! Thanks for playing!"
      clear_screen
      exit
    end
  end
end
