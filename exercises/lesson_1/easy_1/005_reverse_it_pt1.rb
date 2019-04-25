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
# make new array and then unshift each word onto new array
# join reversed array into string with whitespace

def reverse_sentence_old(str)
  str.split.reverse.join(' ')
end

def reverse_sentence(str)
  sent_out = []
  str.split.each { |word| sent_out.unshift(word) }
  sent_out.join(' ')
end

p reverse_sentence("This is not about you. It's about me")
p reverse_sentence('')
p reverse_sentence(' ')
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
