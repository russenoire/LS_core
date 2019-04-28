# input: positive integer
# output: sum of integer's digits
# model: write without using while, until, loop or each
# int to string, string.split('').map! each individual string to a digit
# sum digits and return the sum
def digit_sum_old(int)
  return int.to_s.split('').map(&:to_i).sum
end

# apparently there's a method for getting the digits of an integer? WHAT.
# it returns an array...
def digit_sum(int)
  return int.digits.sum
end


# tests:
p digit_sum(23)
puts digit_sum(23) == 5
puts digit_sum(496) == 19
puts digit_sum(123_456_789) == 45
