# Practice Problem 1
# How would you order this array of number strings by descending numeric value?
arr = ['10', '11', '9', '7', '8']
# input => array of strings
# output => array of strings, sorted by numeric equivalent
# algorithm: call map on array, convert each element to integer.
# call .max on new array, using length of entire array to sort
arr.map(&:to_i).max(arr.length)

arr.sort {|a, b| b.to_i <=> a.to_i}

# Practice Problem 2
# How would you order this array of hashes based on the year of publication of
# each book, from the earliest to the latest?
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]
books.sort {|book1, book2| book1[:published] <=> book2[:published]}

books.sort_by {|book| book[:published]}

# Practice Problem 3
# For each of these collection objects demonstrate how you would reference the letter 'g'.
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].keys[0]

# Practice Problem 4
# For each of these collection objects where the value 3 occurs,
# demonstrate how you would change this to 4.
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4

# Practice Problem 5
# Given this nested Hash:
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# figure out the total age of just the male members of the family.
male_ages = 0
munsters.each_value do |munster|
  male_ages += munster["age"] if munster["gender"] == "male"
end
p male_ages

# Practice Problem 6
# One of the most frequently used real-world string properties is that of
#"string substitution", where we take a hard-coded string and modify it with
# various parameters from our program.
# Given this previously seen family hash, print out the name, age and gender of
# each family member:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#...like this:
# (Name) is a (age)-year-old (male or female).

munsters.each_pair do |munster, attr|
  puts "#{munster} is a #{attr["age"]}-year-old #{attr["gender"]}."
end

# each_pair aliases each and takes key, value
# each_key runs once for each key in hash and passes key as param
# each_value "" and passes value as param

# Practice Problem 7
# Given this code, what would be the final values of a and b? Try to work this
# out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2 # => 4
arr[1][0] -= a # => [3, 8]

# Practice Problem 8
# Using the each method, write some code to output all of the vowels from the strings.
# input: hash, output: array of chars
# solution: vowels = ['a','e','i','o','u'] & def outside .each call
# use .each => nested .each for contents of array value
# compare .each_char with chars in vowels =>

hsh = {
  first: ['the', 'quick'],
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
}
vowels = ['a','e','i','o','u']
vowel_catch_all = []

hsh.each_pair do |_, val|
  val.each do |word|
    word.each_char do |letter|
      vowel_catch_all << letter if vowels.include?(letter)
    end
  end
end
p vowel_catch_all

# Practice Problem 9
# Given this data structure, return a new array of the same structure but with
# the sub arrays being ordered (alphabetically or numerically as appropriate) in
# descending order.
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
new_arr = []

arr.each do |subarr|
  new_arr << subarr.max(subarr.length)
end
p new_arr

# Practice Problem 10
# Given the following data structure and without modifying the original array,
# use the map method to return a new array identical in structure to the
# original but where the value of each integer is incremented by 1.
arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
new_arr = arr.map do |subhsh|
  new_hsh = {}
  subhsh.each{|key, val| new_hsh[key] = val + 1}
  new_hsh
end
p new_arr

# Practice Problem 11
# Given the following data structure use a combination of methods, including
# either the select or reject method, to return a new array identical in
# structure to the original but containing only the integers that are multiples
# of 3.
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |subarr|
  subarr.select do |int|
    int % 3 == 0
  end
end

p arr

# Practice Problem 12
# Given the following data structure, and without using the Array#to_h method,
# write some code that will return a hash where the key is the first item in
# each sub array and the value is the second item.
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hsh = {}

arr.each do |subarr|
  hsh[subarr[0]] = subarr[1]
end
p hsh

# Practice Problem 13
# Given the following data structure, return a new array containing the same
# sub-arrays as the original but ordered logically by only taking into
# consideration the odd numbers they contain.
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
new_arr = arr.sort_by do |subarr|
  subarr.select do |int|
    int.odd?
  end
end
p new_arr

# Practice Problem 14
# Given this data structure write some code to return an array containing the
# colors of the fruits and the sizes of the vegetables. The sizes should be
# uppercase and the colors should be capitalized.
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
arr = []

hsh.each_value do |subhsh|
  if subhsh[:type] == 'fruit'
    arr << subhsh[:colors].map { |color| color.capitalize }
  else
    arr << subhsh[:size].upcase
  end
end
p arr

# Practice Problem 15
# Given this data structure write some code to return an array which contains
# only the hashes where all the integers are even.
# input: the below array. output: a new array with hashes where all integers are even
# .select from among .values of each hash
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
new_arr = arr.select do |hsh|
  hsh.all? do |_, val|
    val.all? { |int| int.even? }
  end
end
p new_arr

# Practice Problem 16
# A UUID is a type of identifier often used as a way to uniquely identify
# items...which may not all be created by the same system. That is, without any
# form of synchronization, two or more separate computer systems can create new
# items and label them with a UUID with no significant chance of stepping on
# each other's toes.
#
# It accomplishes this feat through massive randomization. The number of
# possible UUID values is approximately 3.4 X 10E38.
#
# Each UUID consists of 32 hexadecimal characters, and is typically broken into
# 5 sections like this 8-4-4-4-12 and represented as a string.
#
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
#
# Write a method that returns one UUID when called with no parameters.
# input: none / output: 36-char string in hexadecimal
# define var str
# str << '0123456789abcdef'to_a.sample
# 36.times do
# check length of str: if [8, 13, 18, 23].include?(str.length) << '-'
# return str
def make_UUID
  uuid = ''
  uuid_length = 36
  dash_pos = [8,13,18,23]
  hex_digits = '0123456789abcdef' # which is more expensive? string or array?

  uuid_length.times do |iter|
    if dash_pos.include?(iter)
      uuid += '-'
    else
      uuid += hex_digits.each_char.to_a.sample
    end
  end
  return uuid
end
p make_UUID
