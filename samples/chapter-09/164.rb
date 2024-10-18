require 'date'

p Date.leap?(2000)  #=> true
p Date.leap?(2020)  #=> true
p Date.leap?(2100)  #=> false

p Date.new(2000, 1, 1).leap?  #=> true
p Date.new(2020, 2, 2).leap?  #=> true
p Date.new(2100, 3, 3).leap?  #=> false
