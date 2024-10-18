require 'date'

date = Date.new(2001, 2, 3)
puts 'Date'
puts date.strftime('%Y-%m-%d')
puts date.strftime('%F')
puts date.strftime('%y/%m/%d')
puts date.strftime('%Y.%-m')

time = Time.new(2001, 2, 3, 14, 5, 6)
puts 'Time'
puts time.strftime('%Y-%m-%d %H:%M:%S')
puts time.strftime('%F %T')
puts time.strftime('%I:%M %p')
puts time.strftime('%Y年%-m月%-d日 %-H時%-M分%-S秒')
#=> Date
#   2001-02-03
#   2001-02-03
#   01/02/03
#   2001.2
#   Time
#   2001-02-03 14:05:06
#   2001-02-03 14:05:06
#   02:05 PM
#   2001年2月3日 14時5分6秒
