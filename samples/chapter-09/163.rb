require 'date'

if Date.new(2004, 7, 25).wday == 0
  puts '2004年7月25日は日曜日です'
end
#=> 2004年7月25日は日曜日です

if Date.new(2005, 12, 14).wednesday?
  puts '2005年12月14日は水曜日です'
end
#=> 2005年12月14日は水曜日です

p Time.new(2004, 7, 25, 4, 43, 00).sunday?  #=> true
p Time.new(2005, 7, 25, 4, 43, 00).friday?  #=> false
