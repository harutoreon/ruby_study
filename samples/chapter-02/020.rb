require 'bigdecimal'

x = BigDecimal('1.2')
y = BigDecimal('1.0')

p (x + y)
p (x + y).to_s('f')
p (x - y).to_s('f')

price = 198 * BigDecimal('1.1')
p price.to_s('f')
p price.ceil
p price.floor
