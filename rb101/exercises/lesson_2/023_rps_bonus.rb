require 'pry'

VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_FIRST_2_LETTERS = %w(ro pa sc li sp)
GRAND_WIN_AMOUNT = 5

def who_won?(player1, player2)
  winning_moves = {
    rock: %w(scissors lizard),
    scissors: %w(paper lizard),
    lizard: %w(spock paper),
    paper: %w(rock spock),
    spock: %w(rock scissors)
  }
  player1 = player1.to_sym
  winning_moves[player1].include?(player2) if winning_moves.key?(player1)
end

def translate_first_2_letters_to_choice(str)
  first_2_letters_map = {
    ro: 'rock',
    sp: 'spock',
    li: 'lizard',
    sc: 'scissors',
    pa: 'paper'
  }
  str = str.to_sym
  answer = first_2_letters_map[str] if first_2_letters_map.key?(str)
  answer
end

# def keep_score(player1, player2, wins)
#   if wins < GRAND_WIN_AMOUNT
#     wins += 1 if who_won?(player1, player2)
#   end
#   wins
# end

def return_score(scores) end

def display_results(choice, computer_choice, player_wins, computer_wins)
  answer = if who_won?(computer_choice, choice)
            if computer_wins == GRAND_WIN_AMOUNT
              "This computer just served you a can of whoop-ass! You lose."
            else
              "Computer wins! Tally: #{computer_wins}"
            end
           elsif who_won?(choice, computer_choice)
             if player_wins == GRAND_WIN_AMOUNT
               "You are the Grand Winner! Have a cookie."
             else
               "You win! Tally: #{player_wins}"
             end
           else
             "Tie. Try again."
           end
  prompt(answer.upcase)
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

player_wins = 0
computer_wins = 0
total_wins = []

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("You may type the first couple of letters in your choice.")
    choice = Kernel.gets().chomp().strip().downcase()

    if VALID_CHOICES.include?(choice)
      break
    elsif translate_first_2_letters_to_choice(choice)
      choice = translate_first_2_letters_to_choice(choice)
      break
    else
      prompt("That choice is not valid. Try again?")
    end
  end

  computer_choice = VALID_CHOICES.sample
  prompt("You chose: #{choice}. Computer chose: #{computer_choice}.")

  if player_wins < GRAND_WIN_AMOUNT || computer_wins < GRAND_WIN_AMOUNT
    if who_won?(choice, computer_choice)
      player_wins += 1
    elsif who_won?(computer_choice, choice)
      computer_wins += 1
    end
  end
  # binding.pry

  display_results(choice, computer_choice, player_wins, computer_wins)
  prompt("Play again? [Y/n]")
  play_again = Kernel.gets().chomp()

  unless play_again.downcase.start_with?('y')
    prompt("Thanks for playing! 'Bye.")
    break
  end
end
