# input: stdin, 2 numbers of any type, asks for type of operation
# output: result
# # model: ask the user for two numbers
# answer = Kernel.gets
# Kernel.puts answer

Kernel.puts("Welcome to Calculator!")
Kernel.puts("What's your first number?")
number1 = Kernel.gets().chomp().to_i
Kernel.puts("What's your second number?")
number2 = Kernel.gets().chomp().to_i

Kernel.puts("What operation would you like to perform?
1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1 + number2
elsif operator == '2'
  result = number1 - number2
elsif operator == '3'
  result = number1 * number2
else
  result = number1.to_f / number2.to_f
end

Kernel.puts("Your answer is: #{result}!")
