def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
# prints [4, 5, 3, 6] because the 2nd number passed in overrides the default for
# b. c still has its default value, and d = 6 when we call this method.
