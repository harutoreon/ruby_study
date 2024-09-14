r1 = Rational(1, 2)
r2 = 0.25r

puts "r1の分母は#{r1.denominator}、分子は#{r1.numerator}"
puts "r2の分母は#{r2.denominator}、分子は#{r2.numerator}"
p r1 + r2
p r1 - r2

p (1.2r - 1.0r).to_s
p 1.2r - 1.0

price = 198 * 1.1r
p price.to_s
p price.ceil
p price.floor
