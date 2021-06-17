require 'date'

CURRENT_YEAR = DateTime.now.year

puts "What is your age?"
current_age = gets.to_i
puts "At what age would you like to retire?"
retirement_age = gets.to_i

yrs_until_retire = retirement_age - current_age

puts "It's #{CURRENT_YEAR}. You will retire in " \
     + "#{CURRENT_YEAR + yrs_until_retire}."
puts "You have only #{yrs_until_retire} years of work to go!"
