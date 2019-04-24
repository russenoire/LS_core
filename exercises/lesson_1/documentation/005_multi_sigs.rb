a = %w(a b c d e)
puts a.fetch(7)
# throws an IndexError
puts a.fetch(7, 'beats me')
# prints 'beats me' since a[7] == nil
puts a.fetch(7) { |index| index**2 }
# prints 49, because it executes this block if invalid index is referenced.
