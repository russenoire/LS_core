names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.size == 0
end

# empties the array from first to last
# loop do
#   puts names.shift
#   break if names.size == 0
# end
