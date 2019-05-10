VALID_CHOICES = ['rock', 'paper', 'scissors']

def test_method
  prompt('test message')
end

def show_who_won(choice, computer_choice)
  answer =  case
            when choice == computer_choice
              "Tie. Try again."
            when (choice == 'rock' && computer_choice == 'scissors') ||
              (choice == 'scissors' && computer_choice == 'paper') ||
              (choice == 'paper' && computer_choice == 'rock')
              "You win!"
            else
              "Computer wins!"
            end
  prompt(answer.upcase)
end

# test_method

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp().strip()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That choice is not valid. Try again?")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}. Computer chose: #{computer_choice}.")
  show_who_won(choice, computer_choice)
  prompt("Play again? [Y/n]")
  play_again = Kernel.gets().chomp()

  unless play_again.downcase.start_with?('y')
    prompt("Thanks for playing! 'Bye.")
    break
  end
end
