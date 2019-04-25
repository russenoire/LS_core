vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle',
  'car', 'truck'
]

# implement the ruby version of python's pandas method unique
# counts the number of times each value appears in array
# input: array of strings
# constraints: strings can appear more than once, case-sensitive
# output: print each element next to number of occurrences
# model:
# hash seems good for storing unique values with their occurrences
# iterate over input array and make hash as you iterate
# if symbol key does not exist in hash, add it
# every new value is new symbol key in hash, with value == 1
# for every occurrence of same value, value += 1
# once done, iterate over hash and print key, value pairs as: "key\tvalue\n"

def count_occurrences(vehicles)
  unique_hash = {}
  vehicles.each do |veh|
    if unique_hash.has_key?(:"#{veh}")
      unique_hash[:"#{veh}"] += 1
    else
      unique_hash[:"#{veh}"] = 1
    end
  end
  unique_hash.map{ |vehicle, count| puts "#{vehicle}s:\t#{count}\n" }
end

count_occurrences(vehicles)
