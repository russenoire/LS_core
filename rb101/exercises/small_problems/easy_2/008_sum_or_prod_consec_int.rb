def compute_consecutive_sum(int)
  consecutive_sum = 0
  int == 1 ? consecutive_sum = 2 : consecutive_sum = (1..int).sum
  consecutive_sum
end

def compute_consecutive_product(int)
  consecutive_product = 1
  (1..int).each { |number| consecutive_product *= number }
  consecutive_product
end

int_input = 0
INVALID_NUMBER_MSG = "That is not valid input. Try again?"

loop do
  puts ">> Please enter an integer greater than 0:"
  int_input = gets.to_i
  int_input > 0 ? break : (puts INVALID_NUMBER_MSG)
end

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  str_input = gets.chomp

  if str_input == 's' || str_input == 'S'
    c_sum = compute_consecutive_sum(int_input)
    puts "The sum of the integers between 1 and #{int_input} is #{c_sum}."
    break
  elsif str_input == 'p' || str_input == 'P'
    c_product = compute_consecutive_product(int_input)
    puts "The product of the integers between 1 and #{int_input} is #{c_product}"
    break
  else
    puts INVALID_NUMBER_MSG
  end
end
