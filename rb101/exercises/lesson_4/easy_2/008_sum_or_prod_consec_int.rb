def compute_consecutive_sum(int)
  (1..int).sum
end

def compute_consecutive_product(int)
  product = 1
  (1..int).each do |number|
    product *= number
  end
  product
end

int_input = 0
c_sum = 0
c_product = 1

loop do
  puts ">> Please enter an integer greater than 0:"
  raw_input = gets.to_i

  if raw_input > 0
    int_input = raw_input
    break
  else
    puts "That is not a valid number. Try again?"
  end
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
str_input = gets.chomp

loop do
  if str_input == 's' || str_input == 'S'
    c_sum = compute_consecutive_sum(int_input)
    puts "The sum of the integers between 1 and #{int_input} is #{c_sum}."
    break
  elsif str_input == 'p' || str_input == 'P'
    c_product = compute_consecutive_product(int_input)
    puts "The product of the integers between 1 and #{int_input} is #{c_product}"
    break
  else
    puts "That is not a valid number. Try again?"
  end
end
