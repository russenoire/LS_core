require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = '0'
GRAND_PRIZE_WINS = 5
WINS = {
  'Player' => 0,
  'Computer' => 0,
}

def prompt(msg)
  puts "==> #{msg}"
end

# rubocop:disable Metrics/MethodLength
def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts "First player to five victories wins."
  puts "#{WINS.keys[0]}: #{WINS[WINS.keys[0]]}  #{WINS.keys[1]}: #{WINS[WINS.keys[1]]}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/MethodLength

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def join_or_with_std_if(empties, delim = ', ', last_delim = 'or')
  if empties.length > 1
    last_square = empties.pop()
    result = empties.join("#{delim}") << "#{delim}#{last_delim} #{last_square}"
  else
    result = empties.join("#{delim}")
  end
end

def join_or(empties, delim = ', ', last_delim = 'or')
  last_square = empties.pop()
  format_default = empties.join("#{delim}")
  format_played = "#{delim}#{last_delim} #{last_square}"
  empties.length > 1 ? format_default << format_played : format_default
end

def join_or_with_case(empties, delim = ', ', last_delim = 'or')
  case
  when empties.length > 1
    last_square = empties.pop()
    result = empties.join("#{delim}") << "#{delim}#{last_delim} #{last_square}"
  else
    result = empties.join("#{delim}")
  end
end

def keep_score()
  # keep score of player wins and computer wins. first player to 5 wins the game
  # display player wins, computer wins, and overall win
  # inputs: player wins, computer wins
  # outputs: return strings with talliesi
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{join_or(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt "Your choice is invalid."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      # splat renders array into separate elems!
      return 'Computer'
    end
  end
  nil
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
    WINS[detect_winner(board)] += 1
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing!"
