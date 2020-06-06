arr = []

5.times do |iter|
  ordinal = ""
  if iter == 0
    ordinal = "#{iter + 1}st"
  elsif iter == 1
    ordinal = "#{iter + 1}nd"
  elsif iter == 2
    ordinal = "#{iter + 1}rd"
  else
    ordinal = "#{iter + 1}th"
  end
  puts "Enter the #{ordinal} number:"
  input = gets.chomp.to_i
  arr << input
end
puts "Enter one last number:"
input = gets.chomp.to_i

if arr.include?(input)
  puts "The number #{input} appears in #{arr}."
else
  puts "The number #{input} does not appear in #{arr}."
end
