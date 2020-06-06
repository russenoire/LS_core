def multiply(multi1, multi2)
  multi1 * multi2
end

def square(root)
  multiply(root, root)
end

# further exploration:
def power(number, exponent)
  if exponent == 0
    return 1
  elsif exponent == 1
    multiply(number, exponent) # base cases (1 and 0)
  else
    power(power(number, exponent - 1), number)
  end
end

p square(5) == 25
p square(-8) == 64

p power(3, 3)
