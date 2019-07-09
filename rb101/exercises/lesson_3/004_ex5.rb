def tricky_string(a_string_param)
  a_string_param << "rutabaga"
  # return a_string_param
end

def tricky_array(an_array_param)
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_string(my_string)
tricky_array(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
