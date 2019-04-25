# input:
# one string
# output:
# string with words in reverse order
# model:
# string of one word should return one word
# string of two words should return last word first
# split string on whitespace
# should be able to use negative index on array
# array.length - 1 == index of last item
# make new array and then read array backwards
#
# join reversed array into string with whitespace
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

p reverse_sentence("This is not about you. It's about me")
p reverse_sentence('')
p reverse_sentence(' ')
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
