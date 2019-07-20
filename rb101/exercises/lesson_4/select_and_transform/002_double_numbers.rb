my_numbers = [1, 4, 3, 7, 2, 6]

def double_numbers!(number_list)
  index = 0

  loop do
    number_list[index] *= 2
    index += 1
    break if index == number_list.size
  end

  number_list
end

p my_numbers
p double_numbers!(my_numbers)
p my_numbers
