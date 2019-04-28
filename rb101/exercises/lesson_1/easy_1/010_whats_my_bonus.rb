# input: two args, pos int and boolean
# output: bonus == 1/2 int if boolean == true, 0 otherwise

def calculate_bonus(salary, bonus = true)
  return bonus ? salary / 2 : 0
end

#tests
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
