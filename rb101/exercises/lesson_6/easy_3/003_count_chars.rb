# input: word or phrase
# output: number of chars not including spaces
# soln: gsub spaces in string, length

print "Please write word or multiple words: "
input = gets.chomp
print "There are #{input.gsub(' ','').length} characters in \"#{input}\".\n"
