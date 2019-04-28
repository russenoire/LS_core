# input: non-empty array containing positive integers
# output: average of all numbers in array
# model: make an empty sum var, iterate over array and add each number to it.
# then divide it by array.size or array.length

def average(list)
  sum = 0
  list.each {|number| sum += number }
  return sum / list.size
end

# tests:
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts average([1, 2, 3, 4, 5, 6, 7]) == 4
