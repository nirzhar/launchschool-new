# Tick Tack Toe Bonus Oct 09 18
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
  puts '-----+ -----+-----'
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

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimeter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimeter)
  end
end

def player_places_piece!(brd)
  square = ''

  loop do
    prompt "Choose a square to place a piece: #{joinor(empty_squares(brd), ', ')}"
    square = gets.chomp.to_i

    break if empty_squares(brd).include?(square)
    # brd.keys.select{|num| brd[num] == ' '}.iinclude?(square)
    prompt "Sorry, that's not a valid choice."
    end

    brd[square] = PLAYER_MARKER
    # display_board
  end

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

def winner?(brd)
  if 'Player' == 5
    puts "#{PLAYER_MARKER} won this round!"
  elsif 'Computer' == 5
    puts "#{PLAYER_MARKER} won this round!"
  else
    puts "It's a tie!"
  end
end


loop do
  board = initialize_board

  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    winner?(board) #prompt "#{detect_winner(board)} won!"
  else
    ''
  end

  prompt 'Play again? (Y or N)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y') # breaks out of larger loop
end

prompt 'Thank you for playing. Goodbye!'
