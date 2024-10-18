require 'date'

time = Time.new(1995, 12, 21, 17, 0, 0)
next_month = time.to_date.next_month

next_month_time = Time.new(
  next_month.year,
  next_month.month,
  next_month.day,
  time.hour,
  time.min,
  time.sec,
)

puts "#{time}の1か月後の時刻は#{next_month_time}です"
#=> 1995-12-21 17:00:00 +0000の1か月後の時刻は1996-01-21 17:00:00 +0000です

require 'active_support/all'

p 1.month.from_now  #=> 2024-11-18 19:18:40.084109824 +0000
p 3.years.ago  #=> 2021-10-18 19:18:40.084318209 +0000
p Time.new(1995, 12, 21, 17, 0, 0) + 10.days  #=> 1995-12-31 17:00:00 +0000

p Time.now.beginning_of_month  #=> 2024-10-01 00:00:00 +0000
p Date.today.end_of_month  #=> Thu, 31 Oct 2024
p Time.now.end_of_year  #=> 2024-12-31 23:59:59.999999999 +0000
