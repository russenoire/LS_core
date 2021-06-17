def perfect_numbers(num)
  if (num == 1)
    return num
  else
    return num + perfect_numbers(num - 1)
  end
end

def factorial(num)
  if (num == 1)
    return num
  else
    return num * factorial(num - 1)
  end
end

int_in = 1
choice_in = ''

loop do
  puts ">> Please enter an integer greater than 0:"
  int_in = gets.chomp.to_i
  break unless int_in <= 0
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
loop do
  choice_in = gets.chomp #first letter only how do?
  if (choice_in == 's') || (choice_in == 'p')
    break
  else
    puts ">> Please enter either 's' or 'p'."
  end
end

if choice_in == 's'
  puts "The sum of the integers between 1 and #{int_in} is #{perfect_numbers(int_in)}."
else
  puts "The product of the integers between 1 and #{int_in} is #{factorial(int_in)}."
end
