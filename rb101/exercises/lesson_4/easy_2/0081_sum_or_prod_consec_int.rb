def consecutive_sum(int)
  (1..int).reduce(:+)
end

def consecutive_product(int)
  (1..int).inject(1, :*) # or {|prod, n| product + n}
end

int_input = 0
INPUT_ERROR_MSG = "That is not valid. Try again?"

loop do
  puts ">> Please enter an integer greater than 0:"
  int_input = gets.to_i
  if int_input > 0
    break
  else
    puts INPUT_ERROR_MSG
  end
end

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  user_choice = gets.chomp

  if user_choice == 's' || user_choice == 'S'
    c_sum = consecutive_sum(int_input)
    puts "The sum of the integers between 1 and #{int_input} is #{c_sum}."
    break
  elsif user_choice == 'p' || user_choice == 'P'
    c_product = consecutive_product(int_input)
    puts "The product of the integers between 1 and #{int_input} is #{c_product}."
    break
  else
    puts INPUT_ERROR_MSG
  end
end
