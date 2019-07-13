# PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

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
# model:
# str.split (non-destructive),
# for each word, word.reverse == word?
# if yes, word.upcase!

def change_me(str)
  str_array = str.split
  str_array.each do |word|
    if word.reverse == word
      word.upcase!
    end
  end
  return str_array.join(' ')
end

str = "We will meet at noon"
puts str.object_id
puts change_me(str)
#puts change_me("No palindromes here")
