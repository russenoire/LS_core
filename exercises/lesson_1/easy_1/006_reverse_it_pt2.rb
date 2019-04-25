# input:
# string with one or more words. just letters + spaces
# output:
# returns input string w/ all 5+letter words reversed
# model the problem:
# split input string to array
# for each word in array:
#   if word.length >= 5
#     word.reverse!
# return original array
def reverse_words(str)
  str.split.each { |word| word.reverse! if word.length >= 5 }.join(' ')
end

# tests:
puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS'
