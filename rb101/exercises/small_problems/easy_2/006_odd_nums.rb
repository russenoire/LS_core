# for number in (0..99)
#   puts number if number.odd?
# end

# further exploration
counter = 0
until counter == 100
  puts counter if counter % 2 == 1
  counter += 1
end

# further...
(0..99).each {|number| puts number if number.odd?}
