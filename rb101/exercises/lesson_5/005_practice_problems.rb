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
# first try
arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
new_arr = arr.map do |subhsh|
  subhsh.transform_values{|val| val += 1}
end
p new_arr

# second try
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  increment_hash = {}
  hsh.each {|key, val| increment_hash[key] = val + 1}
  increment_hash
end

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
