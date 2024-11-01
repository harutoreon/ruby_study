require 'pathname'

puts Pathname('./empty.txt').empty?  #=> true
puts Pathname('./foo.txt').empty?    #=> false
