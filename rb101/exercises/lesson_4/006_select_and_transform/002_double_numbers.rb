my_numbers = [1, 4, 3, 7, 2, 6]

def double_numbers!(number_list)
  for index in 0...number_list.size
    number_list[index] *= 2
  end
  number_list
end

p my_numbers
p double_numbers!(my_numbers)
p my_numbers
