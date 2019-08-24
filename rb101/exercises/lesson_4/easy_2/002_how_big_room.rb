# inputs
# length, width of room in meters

# output
# area in sq ft and sq m

# easy soln
# SQ_M_TO_SQ_FT = 10.7639
#
# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_f
# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_f
#
# area = length * width
# area_imperial = area * SQ_M_TO_SQ_FT
# puts "The area of the room is %0.2f square meters" % area + \
#      " (%0.2f square feet)." % area_imperial

# further exploration
SQ_FT_TO_SQ_IN = 144
SQ_FT_TO_SQ_CM = 929.0304

puts "Enter the length of the room in feet:"
length = gets.to_f
puts "Enter the width of the room in feet:"
width = gets.to_f

area = length * width
area_sq_in = area * SQ_FT_TO_SQ_IN
area_sq_cm = area * SQ_FT_TO_SQ_CM

puts "The area of the room is %0.2f square feet " % area + \
     "(%0.2f square inches," % area_sq_in + \
     " or %0.2f square centimeters)." % area_sq_cm
