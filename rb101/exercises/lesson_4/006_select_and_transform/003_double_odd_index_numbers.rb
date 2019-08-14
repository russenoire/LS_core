def double_odd_index_numbers(number_list)
  doubled_numbers = []

  for index in 0...number_list.size
    if index.odd?
      doubled_numbers << number_list[index] * 2
    else
      doubled_numbers << number_list[index]
    end
  end
  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p my_numbers
p double_odd_index_numbers(my_numbers)
p my_numbers
