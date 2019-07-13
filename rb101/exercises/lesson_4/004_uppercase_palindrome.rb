# PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

# MODEL
# input:
# a string composed of characters, upper and lowercase, and spaces.
# output:
# input string with palindromic words in uppercase
# constraints:
# empty strings and strings w/ no palindromes are just returned unchanged
# already-uppercased words stay uppercase
# questions:
# can input strings contain numbers?
# do i need to validate input (will inputs always be strings?)
# what counts as a palindrome? is case sensitive?

# ALGORITHM:
# split str into array, save array to variable
# array.each word, upcase! if word.reverse == word
# return array.join(' ')


def change_me(str)
  str_array = str.split
  str_array.each { |word| word.upcase! if word.reverse == word }
  return str_array.join(' ')
end

puts change_me("We will meet at noon") == "We will meet at NOON"
puts change_me("No palindromes here") == "No palindromes here"
puts change_me("") == ""
puts change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"
