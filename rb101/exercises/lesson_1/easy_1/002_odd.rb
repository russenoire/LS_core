# write a method that:
# input: a single int arg, pos, neg or 0
# output: true if input's abs val is odd (so boolean)
# can't use #odd or #even to solve
# i think math has a method called abs
# input number, find abs val and then % 2
# 0 should be considered even
# if fabs(num % 2) == 0 or if num == 0 return false
# else true
def is_odd?(num)
  return num.abs % 2 == 1 ? true : false
end
# furthex
# try num.abs.remainder
# return num.abs.remainder(2) == 1 ? true : false
