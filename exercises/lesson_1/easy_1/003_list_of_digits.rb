# inputs:
# positive integer
# outputs
# list of digits in number. all elem in array are numbers
# algorithm
# abs val of input integer
# integer to_s, then split

def digit_list(number)
  return number.abs.to_s.split('').map{|d| d.to_i }
end

p digit_list(12345)
p digit_list(444)
p digit_list(375290)
