require 'date'

date = Date.new(1995, 12, 21)
puts date        #=> 1995-12-21
puts date.year   #=> 1995
puts date.month  #=> 12
puts date.day    #=> 21

puts Date.new(2020)      #=> 2020-01-01
puts Date.new(2020, 12)  #=> 2020-12-01
