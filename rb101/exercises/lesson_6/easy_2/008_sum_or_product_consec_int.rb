puts ">> Please enter an integer greater than 0:"
int_input = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
exp_input = gets.chomp

case exp_input
when 's'
  puts (1..int_input).sum
when 'p'
  puts (1..int_input).reduce { |product, n| product * n }
end
