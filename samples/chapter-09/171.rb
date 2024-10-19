require 'time'

time = Time.new(2001, 2, 3, 14, 5, 6)
puts time.iso8601   #=> 2001-02-03T14:05:06+00:00
puts time.rfc2822   #=> Sat, 03 Feb 2001 14:05:06 +0000
puts time.httpdate  #=> Sat, 03 Feb 2001 14:05:06 GMT
