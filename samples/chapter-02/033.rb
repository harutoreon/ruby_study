a, b = 1, 2
puts "a: #{a}, b: #{b}"

c, d = [3, 4]
puts "c: #{c}, d: #{d}"

a, b = 2, 3, 4
puts "a: #{a}, b: #{b}"

c, d, e = [5, 6]
puts "c: #{c}, d: #{d}"
p e

a, b, *c = [1, 2, 3, 4, 5]
puts "a: #{a}, b: #{b}, c: #{c}"

a, b = 1, 5
a, b = b, a
puts "a: #{a}, b: #{b}"
