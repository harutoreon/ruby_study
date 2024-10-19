require 'timecop'

time = Time.new(2022, 1, 1, 0, 0, 0)
Timecop.freeze(time)

3.times do
  puts Time.now
  sleep 3
end
#=> 2022-01-01 00:00:00 +0900
#   2022-01-01 00:00:00 +0900
#   2022-01-01 00:00:00 +0900

time = Time.new(2022, 1, 1, 0, 0, 0)
Timecop.travel(time)

3.times do
  puts Time.now
  sleep 1
end
#=> 2022-01-01 00:00:00 +0900
#   2022-01-01 00:00:01 +0900
#   2022-01-01 00:00:02 +0900

time = Time.new(2022, 1, 1, 0, 0, 0)
Timecop.travel(time)
Timecop.scale(60)

3.times do
  puts Time.now
  sleep 1
end
#=> 2022-01-01 00:00:00 +0900
#   2022-01-01 00:01:00 +0900
#   2022-01-01 00:02:00 +0900

Timecop.freeze(Time.new(2022, 1, 1, 0, 0, 0))
puts Time.now  #=> 2022-01-01 00:00:00 +0900

Timecop.return
puts Time.now  #=> 2024-10-19 13:50:16 +0900

Timecop.freeze(Time.new(2022, 1, 1, 0, 0, 0)) do
  puts Time.now
end
#=> 2022-01-01 00:00:00 +0900

puts Time.now  #=> 2024-10-19 13:50:16 +0900
