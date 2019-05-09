VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def who_won?(choice, computer_choice)
  answer = case
  when choice == computer_choice
    "Tie. Try again."
  when choice == 'rock' && computer_choice == 'scissors'
    "You win!"
  when choice == 'scissors' && computer_choice == 'paper'
    "You win!"
  when choice == 'paper' && computer_choice == 'rock'
    "You win!"
  else
    "Computer wins!"
  end
  answer
end

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
prompt("#{who_won?(choice, computer_choice)}".upcase)
prompt("Play again? [Y/N]")
