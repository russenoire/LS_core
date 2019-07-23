# Define a method that, given a string of numbers
# in word form (0 to 9), returns the integer those words represent.
# words_to_nums('nine one three five') => 9135
# The argumet will never have leading zeros.
def words_to_nums(str)

end

# Define a method that, given a sentence, 
# returns a hash of each of the words as keys 
# with their lengths as values. Assume the argument 
# lacks punctuation.
def word_lengths(str)

end

# Define a method that, given a hash with integers as values,
# returns the key with the largest value.
# greatest_key_by_val({ big: 10, medium: 5, small: 1 }) => :big
def greatest_key_by_val(hash)

end

# Define a method that, given a word, returns a hash with
#  the letters in the word as keys and the frequencies of
#  the letters as values.
# letter_counts('apple') => { 'a' => 1, 'p' => 2, 'l' => 1, 'e' => 1 }
def letter_counts(word)

end

# Sample answers


WORD_TO_NUM = {'one' => 1, 'two' => 2, 'three' => 3, 
               'four' => 4, 'five' => 5, 'six' => 6,
               'seven' => 7, 'eight' => 8, 'nine' => 9,
               'zero' => 0}

def words_to_nums(str)
  words_arr = str.split(' ')
  nums_arr = words_arr.map do |word|
    WORD_TO_NUM[word]
  end
  nums_arr.join.to_i
end

# The WORD_TO_NUM[word] is the key step in this solution.






