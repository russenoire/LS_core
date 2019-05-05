# input: stdin, 2 numbers of any type, asks for type of operation
# output: result
# model: ask the user for two numbers
require "pry"
require "yaml"
require "erb"
MSGS = YAML.load_file("012_calc_bonus.yml")

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

# number validation =>
# input: one string, with valid int representation
# output: boolean (valid or nah?)
# model: should only allow numeric input, period. no letters or symbols
def valid_number?(str)
  /^-?\d+(\.\d+)?$/.match(str)
end

# change needed to ensure operation_to_message method works if more code added
def operation_to_message(op)
  answer = case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
  # extra code?
  answer
end

# messages have been abstracted out into a config file
# not sure how to get yaml to interpolate strings
prompt(MSGS[:welcome])
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(MSGS[:welcome_error])
  else
    break
  end
end

prompt(MSGS[:hello])

loop do
  number1 = ''
  loop do
    prompt(MSGS[:first_num])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      number1 = number1.to_i
      break
    else
      prompt(MSGS[:num_error])
    end
  end

  number2 = ''
  loop do
    prompt(MSGS[:second_num])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      number2 = number2.to_i
      break
    else
      prompt(MSGS[:num_error])
    end
  end

  prompt(MSGS[:instructions])
  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MSGS[:instr_error])
    end
  end

  prompt(MSGS[:operation])

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

  prompt(MSGS[:ans])

  prompt(MSGS[:go_again])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MSGS[:thanks])
