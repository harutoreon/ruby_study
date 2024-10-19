require 'date'

time = Date.new(2004, 11, 23).to_time
puts time        #=> 2004-11-23 00:00:00 +0900
puts time.class  #=> Time

date = Time.new(2004, 11, 23, 10, 4, 44).to_date
puts date        #=> 2004-11-23
puts date.class  #=> Date
