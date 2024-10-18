require 'date'

puts Date.parse('1998-01-16')    #=> 1998-01-16
puts Date.parse('1998-1-16')     #=> 1998-01-16
puts Date.parse('1998/01/16')    #=> 1998-01-16
puts Date.parse('98/1/16')       #=> 1998-01-16
puts Date.parse('1998.1.16')     #=> 1998-01-16
puts Date.parse('H10.1.16')      #=> 1998-01-16
puts Date.parse('16/1/1998')     #=> 1998-01-16
puts Date.parse('Jan 16, 1998')  #=> 1998-01-16

puts Date.parse('1998/1')  #=> 1998-01-01

require 'time'

puts Time.parse('1998-01-16 21:13:05')        #=> 1998-01-16 21:13:05 +0000
puts Time.parse('1998-01-16 21:13:05 -0800')  #=> 1998-01-16 21:13:05 -0800
puts Time.parse('Fri Jan 16 21:13:05 1998')   #=> 1998-01-16 21:13:05 +0000
puts Time.parse('98/1/16 21:13:05')           #=> 1998-01-16 21:13:05 +0000
