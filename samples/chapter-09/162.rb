require 'date'

p Date.new(2004, 7, 25).wday   #=> 0
p Date.new(2005, 12, 14).wday  #=> 3

p Time.new(2004, 7, 25, 4, 43, 0).wday  #=> 0
p Time.new(2005, 12, 14, 6, 2, 0).wday  #=> 3
