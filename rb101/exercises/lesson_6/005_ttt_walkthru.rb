require 'pry'

# tic tac toe
# 1. display empty 3x3 board
# 2. ask the user to mark a square
# 3. computer marks a square
# 4. display the updated board state
# 5. if winner, display winner
# 6. if board full, display tie
# 7. if neither winner nor full board, go to #2
# 8. play again?
# 9. if yes, go to #1
#10. good-bye.
# 22:35 -
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd_hsh)
  system 'clear'
  puts ""
  puts "     |     |"
  puts "  #{brd_hsh[1]}  |  #{brd_hsh[2]}  |  #{brd_hsh[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd_hsh[4]}  |  #{brd_hsh[5]}  |  #{brd_hsh[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd_hsh[7]}  |  #{brd_hsh[8]}  |  #{brd_hsh[9]}"
  puts "     |     |"
  puts ""
end

# what data structure best reps the board state? ['X', 'O', ]
def init_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARKER}
  new_board
end

def empty_squares(brd_hsh)
  brd_hsh.keys.select{ |num| brd_hsh[num] == INITIAL_MARKER}
end

def player_places_piece!(brd_hsh)
  square = ''
  loop do
    prompt "Choose a square (#{empty_squares(brd_hsh).join(', ')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd_hsh).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd_hsh[square] = PLAYER_MARKER
end

def computer_places_piece!(brd_hsh)
  square = empty_squares(brd_hsh).sample
  brd_hsh[square] = COMPUTER_MARKER

end

def board_full?(brd_hsh)
  empty_squares(brd_hsh).empty?
end

def someone_won?(brd_hsh)
  !!detect_winner(brd_hsh)
end

def detect_winner(brd_hsh)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  winning_lines.each do |line|
    if brd_hsh[line[0]] == PLAYER_MARKER
    binding.pry
  end
end

board = init_board

loop do
  display_board(board)

  player_places_piece!(board)

  computer_places_piece!(board)
  display_board(board)
  break if someone_won?(board) || board_full?(board)
end

if someone_won?(board)
  prompt "#{detect_winner(board)} won!"
else
  prompt "It's a tie!"
end
