produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hsh)
  counter = 0
  selected_produce = {}

  loop do
    if hsh[hsh.keys[counter]] == 'Fruit'
      selected_produce[hsh.keys[counter]] = 'Fruit'
    end
    counter += 1
    break if counter == hsh.keys.size
  end

  selected_produce
end

puts select_fruit(produce)
