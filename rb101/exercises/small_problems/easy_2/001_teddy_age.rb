# random age generator/printer
# inputs: none
# outputs: a string containing teddy's age
# model:
# use random number generator with range, interpolate in string

# easy soln
age = rand(20...200)
#puts "Teddy is #{age} years old!"

# further exploration, extra challenge
puts "Hi! What's your name?"
name = gets.chomp
name = "Teddy" if name.empty?
puts "#{name} is #{age} years old!"
