s = Set[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
t = Set[0, 2, 4, 6, 8, 10, 12, 14, 16, 18]

puts s | t
puts s & t
puts s - t
puts s ^ t
puts s.divide(&:even?)
