puts "What is your name?"
user_name = gets.chomp

if user_name.end_with?('!')
  user_name.delete_suffix!('!')
  puts "Hello #{user_name}. Why are we screaming?".upcase
else
  puts "Hello #{user_name}."
end

# further exploration
puts "What is your name?"
user_name = gets.chomp

if user_name.end_with?('!')
  user_name.delete_suffix!('!')
  puts "Hello #{user_name}. Why are we screaming?".upcase
else
  puts "Hello #{user_name}."
end
