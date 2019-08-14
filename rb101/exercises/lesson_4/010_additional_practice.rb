require 'pry'

# problem 1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# two possible solns besides posted one
p flintstones.each_with_index.to_h

flint_hash = {}
flintstones.each do |name|
  flint_hash[name] = flintstones.index(name)
end
p flint_hash

# problem 2
ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237}

total_age = 0
ages.each { |_, age| total_age += age }

p total_age

# problem 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.reject! { |_, age| age > 100 }

p ages

# problem 4
ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237}
min_age = ages.min
# min_age = ages.values.min

p min_age

# problem 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.index {|i| i.start_with?(/^Be/) }

# problem 6
flintstones.map! { |person| person = person[0..2] }
p flintstones

# problem 7
statement = "The Flintstones Rock"
freq_hash = {}

statement.each_char do |chr|
  if chr != " "
    freq_hash[chr] ? freq_hash[chr] += 1 : freq_hash[chr] = 1
  end
end

p freq_hash

# problem 8
# a)
numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end
## rewrite as an explicit loop for greater understanding
loop do
  for index in 0..numbers.size
    p numbers[index]
    numbers.shift(1)
end
# OH! so on the first iteration through the array, numbers[0] is printed (1)
# on the next iteration, numbers[1] is printed out from the shorter array (3).
# and iteration stops on the next cycle because the array no longer contains a
# numbers[2] OH!!!

# b)
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
# here, on the first iteration through the array, numbers[0] is printed (1)
# on the next iteration, numbers[1] is printed out from the shorter array (2).
# and iteration stops on the next cycle because the array no longer contains a
# numbers[2]. i get it now.

# problem 9
words = "the flintstones rock"
words.split.each {|word| word.capitalize! }.join(' ')

# problem 10
munsters = {
  "Herman" => {"age" => 32, "gender" => "male"},
  "lily" => {"age" => 30, "gender" => "female"},
  "Grandpa" => {"age" => 402, "gender" => "male"},
  "Eddie" => {"age" => 10, "gender" => "male"},
  "Marilyn" => {"age" => 23, "gender" => "female"}
}

munsters.each do |_, attr|
  case attr["age"]
  when 0...17
    attr["age_group"] = "kid"
  when 18..65
    attr["age_group"] = "adult"
  else
    attr["age_group"] = "senior"
  end
end

p munsters
