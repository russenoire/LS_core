require 'pry'

VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_FIRST_2_LETTERS = %w(ro pa sc li sp)

def who_won?(player1, player2)
  (player1 == 'rock' && player2 == 'scissors') ||
  (player1 == 'rock' && player2 == 'lizard') ||
  (player1 == 'scissors' && player2 == 'paper') ||
  (player1 == 'scissors' && player2 == 'lizard') ||
  (player1 == 'lizard' && player2 == 'spock') ||
  (player1 == 'lizard' && player2 == 'paper') ||
  (player1 == 'paper' && player2 == 'rock') ||
  (player1 == 'paper' && player2 == 'spock') ||
  (player1 == 'spock' && player2 == 'rock') ||
  (player1 == 'spock' && player2 == 'scissors')
end

def translate_first_2_letters_to_choice(str)
  if VALID_FIRST_2_LETTERS.include?(str)
    answer =  case
              when str == 'ro'
                'rock'
              when str == 'sp'
                'spock'
              when str == 'li'
                'lizard'
              when str == 'sc'
                'scissors'
              when str == 'pa'
                'paper'
              end
  end
  answer
end

def display_results(choice, computer_choice)
  answer =  case
            when who_won?(computer_choice, choice)
              "Computer wins!"
            when who_won?(choice, computer_choice)
              "You win!"
            else
              "Tie. Try again."
            end
  prompt(answer.upcase)
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("You may type the first couple of letters in your choice.")
    choice = Kernel.gets().chomp().strip()

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
  display_results(choice, computer_choice)
  prompt("Play again? [Y/n]")
  play_again = Kernel.gets().chomp()

  unless play_again.downcase.start_with?('y')
    prompt("Thanks for playing! 'Bye.")
    break
  end
end
