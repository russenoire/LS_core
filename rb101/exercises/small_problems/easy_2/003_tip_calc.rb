puts "What is the bill?"
bill = gets.to_f
puts "What is the tip percentage?"
tip_percent = gets.to_f

tip_percent /= 100
tip = bill * tip_percent
total = bill + tip

puts "The tip is %0.2f" % tip
puts "The total is %0.2f" % total
