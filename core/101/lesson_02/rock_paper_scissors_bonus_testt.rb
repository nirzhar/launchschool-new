# rock paper scissors 082118

LANGUAGE = 'en'

#require 'yaml'
#MESSAGES = YAML.load_file('rpsl_messages.yml')

VALID_CHOICES = %w(r p s l sp)
WINNING_ROUND = 5

# WINNING_CHOICES = {
#   "rock" => %w(scissors lizard),
#   "paper" => %w(rock spock),
#   "scissors" => %w(paper lizard),
#   "lizard" => %w(spock paper),
#   "spock" => %w(scissors rock)
# }

WINNING_CHOICES = {
  "r" => %w(scissors lizard),
  "p" => %w(rock spock),
  "s" => %w(paper lizard),
  "l" => %w(spock paper),
  "sp" => %w(scissors rock)
}

def choice_message(choice)
  puts (" Put r for Rock, p for Paper, s for sScissors, l for Lizard,a nd sp for SPock.")
end

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  WINNING_CHOICES[first].include?(second)
end

def check_name(input)
  input.scan(/^[a-zA-Z]+$/).empty?
end

def clear_screen
  system('clear')  || system('cls')
end

your_score = 0
computer_score = 0

# .........................................
puts
puts
loop do


    puts ("Rock, Paper, Scissors, Lizard, Spock Game")
    puts (".........................................")
    puts
    puts('(Q)uit to exit at any time.')
    puts("First player to reach #{WINNING_ROUND} wins is the winner!")
     puts

    prompt("Enter your name.")

    name = ''
    loop do
      name = gets.chomp.capitalize
      if check_name(name)
        prompt("Enter a valid name")
      else
        break
      end
    end
    prompt ("Welcome to the Rock, Paper, Scissors, Lizard, Spock Game, #{name}!")

  loop do
    player_choice = ''

    loop do
      prompt (choice_message "#{VALID_CHOICES.join(', ')}")
      player_choice = gets.chomp.downcase

      if VALID_CHOICES.include?(player_choice)
        break
      else
        prompt("That's not a valid input.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    puts("You chose: #{player_choice}; computer chose: #{computer_choice}")
    puts

    if player_choice == computer_choice
      puts "It's a tie. No points for the round."
      puts
    elsif WINNING_CHOICES.fetch(player_choice).include?(computer_choice) == true
      puts "You win this round!"
      puts
      your_score += 1
    else
      puts "The computer won this round!"
      puts
      computer_score += 1
    end

    puts "Your score is (#{your_score}) and the computer's score is #{computer_score}."
    puts

    if your_score == 5
      puts "Congratulations! You've won the match!"
      puts
      break
    elsif computer_score == 5
      puts "The computer has won the match today."
      break
    end
  end

  puts

    prompt("Do you want to play again?")
    puts
    play_again = gets.chomp
    break if play_again.start_with?('n')
    system("clear")

end

prompt("goodbye!")
puts
puts
