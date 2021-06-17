# input: atring, positive integer p
# output: input string repeated p times

# if integer p is positive: print string out p times.
# if p is not positive, return error MESSAGES

def repeat(str, mult)
  mult.times { puts str }
end

repeat("Continuous, soft and relaxing", 10)
