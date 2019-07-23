def multiply(numbers_list, multiplier)
  new_list = []
  for index in 0...numbers_list.size
    new_list << numbers_list[index] * multiplier
  end
  new_list
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3)
p my_numbers
