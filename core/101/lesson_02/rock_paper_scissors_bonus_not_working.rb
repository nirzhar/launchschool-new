# rock paper scissors 082118

WINNING_CHOICES = {
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

def win?(first_choice, second_choice)
  WINNING_CHOICES[first_choice].include?(second_choice)
end

def winner(player, computer)
  if win?(player, computer)
    prompt("You win!")
  elsif win?(computer, player)
    prompt("Computer wins!")
  else
    prompt("It's a tie!")
  end
end

def overall_winner
  if player_score == 5
    puts "You won the match!"
  elsif computer_score == 5
    puts "Computer won the match!"
  end
end

def clear_screen
  system('clear') || system('cls')
end

player_score = 0
computer_score = 0

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

  loop do
    prompt("Enter your choice, #{name}")

    loop do
      player_choice = ''
      loop do
        puts ''
        prompt("Choose one: #{WINNING_CHOICES.keys.join(', ')}")
        prompt("Enter 'r' for rock, 'p' for paper, 's' for scissors,
          'l' for lizzard, 'k' for spock.")
        player_choice = choice(gets.chomp)
        if WINNING_CHOICES.include?(player_choice)
          break
        else
          prompt("That's not a valid choice.")
        end
      end

      puts ''
      computer_choice = WINNING_CHOICES.keys.sample
      prompt("#{name}: #{player_choice} || Computer: #{computer_choice}")

      if player_choice == computer_choice
        prompt("It's a tie. No points for this round.")
        puts ''
      elsif WINNING_CHOICES.fetch(player_choice).include?(computer_choice) == true
        prompt("You win this round!")
        puts ''
        player_score += 1
        prompt("Score:: #{name}: #{player_score} || Computer: #{computer_score}")
      else
        prompt("The computer won this round!")
        puts ''
        computer_score += 1
        prompt("Score:: #{name}: #{player_score} || Computer: #{computer_score}")
      end

      puts ''
      if player_score == 5
        prompt("You won the match!")
        break
      elsif computer_score == 5
        prompt("The computer won the match!")
        break
      end
    end

    puts ''

    prompt("Would you like to play again? Enter 'y'for yes,
      and any other key to exit.")
    play_again = gets.chomp.downcase

    if play_again == 'y'
      puts "Ok. Let's do it!"
      clear_screen
    else
      puts ''
      puts "Awesome! Thanks for playing!"
      puts ''
      break
    end

  end
end
