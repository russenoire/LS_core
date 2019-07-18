def select_fruit(hsh)
  keys_array = hsh.keys
  fruit = {}
  counter = 0

  loop do
    current_key = keys_array[counter]
    if hsh[keys_array[counter]] == 'Fruit'
      fruit[keys_array[counter]] = 'Fruit'
    end
    counter += 1
    break if counter == keys_array.length
  end

  fruit
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts select_fruit(produce)
