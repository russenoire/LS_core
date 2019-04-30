# input: stdin, 2 numbers of any type, asks for type of operation
# output: result
# # model: ask the user for two numbers
# answer = Kernel.gets
# Kernel.puts answer
require "pry"

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    binding.pry
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator! What's your name?")
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("I calculate best with friends. Please tell me your name.")
  else
    break
  end
end

prompt("Hi #{name}! Welcome!")

loop do
  number1 = ''
  loop do
    prompt("What's your first number?")
    number1 = Kernel.gets().chomp().to_i

    if valid_number?(number1)
      break
    else
      prompt("Hmm. That's not a valid number.")
    end
  end

  number2 = ''
  loop do
    prompt("What's your second number?")
    number2 = Kernel.gets().chomp().to_i

    if valid_number?(number2)
      break
    else
      prompt("Hmm. That's not a valid number.")
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG

  prompt(operator_prompt)
  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("1, 2, 3 or 4, please.")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1 + number2
           when '2'
             number1 - number2
           when '3'
             number1 * number2
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("Your answer is: #{result}!")

  prompt("Do you want to perform another calculation? [Y/N]")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for being calculating! 'Bye!")
