s = 'abc'
puts s.public_methods.inspect

# how to display only string methods, as opposed to those from string's parent
# classes?
# s.public_methods(false). returns an array with a list of methods. can be found
# in the docs for String's parent class Object.
