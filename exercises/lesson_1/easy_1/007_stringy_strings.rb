# input:
# pos int
# output:
# 1s and 0s, starting with 1, length matches int arg
# model:
# if length = odd, string ends in 1. if even, str ends in 0
# print '10' int/2 times then append 1 if int is odd
def stringy(int)
  out_str = ''
  (int / 2).times { out_str << '10'}
  out_str << '1' if int.odd?
  return out_str
end

# tests:
puts stringy(8) == '10101010'
puts stringy(11) == '10101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
