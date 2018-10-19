# Tick Tack Toe Walkthrough Oct 03 18
require 'pry'
puts
puts
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals
def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're  #{PLAYER_MARKER}, and computer is #{COMPUTER_MARKER}"
  puts ''
  puts '     |     |'
  puts "   #{brd[1]} | #{brd[2]}   | #{brd[3]} "
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "   #{brd[4]} |  #{brd[5]}  |#{brd[6]} "
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "   #{brd[7]} |  #{brd[8]}  |#{brd[9]} "
  puts '     |     |'
  puts ''
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

# returning a new board. It starts out
# with an empty hash. iterate through the range and populate the new_board with
# space. Then return the new_board. This works because tnew_board[num] is how we
# create a new key/value pair in a hash.

# We initialize new_board with an empty hash. WE use the bracket syntax to
# create a new key inthe new_board hash new_board[num]. This key (num) is
# goint to be integer (1..9) as it iterates through this range. And, we're
# setting the value to be a space. We then set initilaize_board to return
# new_board hash.

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''

  loop do
    prompt "Choose a square (#{empty_squares(brd).join(', ')}):"
    square = gets.chomp.to_i

    break if empty_squares(brd).include?(square)
    # brd.keys.select{|num| brd[num] == ' '}.iinclude?(square)
    prompt "Sorry, that's not a valid choice."
    end

    brd[square] = PLAYER_MARKER
    # display_board
  end
  # we want to modify this object (board), we want to set the value for
  # the square
  # the user inputted. If user choosed square 1, we want to modify the value
  # of key 1 in the board hash. Here, 'X' being the player's marker.
  # We take this
  # and save into the board hash [brd[square]. If it is 1 ..9 , it will modify
  # the value for the key 1..9 and set it to 'X'. Now, if the user chooses
  # a square
  # other than 1..9, it will create a new key/value pair in the board hash..

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd) # forcefully make the value, whatever it is, a boolean.
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  board = initialize_board

  # we set new_board to 'board' variable, which we can pass
  # over to display_board. The 'board' variable is key here because it keeps
  # track of our state of the game. We pass this variable around, so we need a
  # handle to it.
  # The board we passed in is a hash and the keys represent the squares.
  # To extract the values out of this hash, we can just do brd[1] where the puts
  # is in square 1. 1 is the key.To interpolate that, we ue the syntax,
  # #{brd[1]}. This sets up the initial board.
  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt 'Play again? (Y or N)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y') # breaks out of larger loop
end

prompt 'Thank you for playing. Goodbye!'

# player_places_piece_on_board is a method which will modify this board
# board = initilaize_board. We call our variable scoping rules, so
# for a method to modify local variable, we need to
# first pass board to player_places_piece. Second,
# within player_places_piece_on_board
# if we do anything in the method that mutates that object(board), that
# modification will be visible outside of this method (player_places_piece)
# That's we want to do her - modify the internal state of this board, this hash.
# First of all,
