VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_FIRST_2_LETTERS = %w(ro pa sc li sp)
GRAND_WIN_AMOUNT = 5

def won?(player1, player2)
  winning_moves = {
    rock: %w(scissors lizard),
    scissors: %w(paper lizard),
    lizard: %w(spock paper),
    paper: %w(rock spock),
    spock: %w(rock scissors)
  }
  player1 = player1.to_sym
  winning_moves[player1].include?(player2) #if winning_moves.key?(player1)
end

def translate_initial_letters_to_choice(str)
  initial_letters_map = {
    ro: 'rock',
    roc: 'rock',
    sp: 'spock',
    spo: 'spock',
    li: 'lizard',
    liz: 'lizard',
    sc: 'scissors',
    sci: 'scissors',
    pa: 'paper',
    pap: 'paper'
  }
  str = str.to_sym
  answer = initial_letters_map[str] if initial_letters_map.key?(str)
  answer
end

def return_score(player1, player2, wins)
  if wins < GRAND_WIN_AMOUNT || wins % GRAND_WIN_AMOUNT != 0
    wins += 1 if won?(player1, player2)
  end
  wins
end

def winning_message(player1, player2, wins, message)
  if wins == GRAND_WIN_AMOUNT || wins % GRAND_WIN_AMOUNT == 0
    prompt(message) if won?(player1, player2)
  end
end

def display_results(choice, computer_choice, player_wins, computer_wins)
  comp_win_msg = "This computer just served you a can of whoop-ass! You lose."
  player_win_msg = "You are the Grand Winner! Have a cookie."
  if won?(computer_choice, choice)
    prompt("Computer wins! Tally: #{computer_wins}".upcase)
    winning_message(computer_choice, choice, computer_wins, comp_win_msg)
  elsif won?(choice, computer_choice)
    prompt("You win! Tally: #{player_wins}".upcase)
    winning_message(choice, computer_choice, player_wins, player_win_msg)
  else
    prompt("Tie. Try again.".upcase)
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

player_wins = 0
computer_wins = 0

prompt("Welcome to Rock Paper Scissors Lizard Spock.")
prompt("Five rounds to win!")
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("You may type the first two or three letters in your choice.")
    choice = Kernel.gets().chomp().strip().downcase()

    if VALID_CHOICES.include?(choice)
      break
    elsif translate_initial_letters_to_choice(choice)
      choice = translate_initial_letters_to_choice(choice)
      break
    else
      prompt("That choice is not valid. Try again?")
    end
  end

  computer_choice = VALID_CHOICES.sample
  prompt("You chose: #{choice}. Computer chose: #{computer_choice}.")

  if won?(choice, computer_choice)
    player_wins = return_score(choice, computer_choice, player_wins)
  elsif won?(computer_choice, choice)
    computer_wins = return_score(computer_choice, choice, computer_wins)
  end

  display_results(choice, computer_choice, player_wins, computer_wins)
  prompt("Play again? [Y/n]")
  play_again = Kernel.gets().chomp()
  system('clear') || system('cls')

  unless play_again.downcase.start_with?('y')
    prompt("Thanks for playing! 'Bye.")
    break
  end
end
