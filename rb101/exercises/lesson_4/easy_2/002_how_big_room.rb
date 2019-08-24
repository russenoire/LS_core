# inputs
# length, width of room in meters

# output
# area in sq ft and sq m

SQ_M_TO_SQ_FT = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area = length * width
area_imperial = area * SQ_M_TO_SQ_FT
puts "The area of the room is %0.2f square meters" % area + \
     " (%0.2f square feet)." % area_imperial
