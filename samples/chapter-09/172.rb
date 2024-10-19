ENV['TZ'] = 'America/Los_Angeles'
time = Time.new(2022, 3, 1)
puts "#{time} (#{time.zone})"  #=> 2022-03-01 00:00:00 -0800 (PST)

ENV['TZ'] = 'Asia/Tokyo'
time = Time.new(2022, 3, 1)
puts "#{time} (#{time.zone})"  #=> 2022-03-01 00:00:00 +0900 (JST)

time.utc
puts "#{time} (#{time.zone})"  #=> 2022-02-28 15:00:00 UTC (UTC)

time.localtime('-08:00')
puts "#{time} (#{time.zone})"  #=> 2022-02-28 07:00:00 -0800 ()

time.localtime('-08:00')
puts "#{time} (#{time.zone})"  #=> 2022-03-01 00:00:00 +0900 (JST)
