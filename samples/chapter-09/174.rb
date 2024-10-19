def time_to_string(time = Time.now)
  time.to_s
end

puts time_to_string(Time.new(2022, 7, 3))  #=> 2022-07-03 00:00:00 +0900
puts time_to_string  #=> 2024-10-19 11:02:48 +0900
sleep 3
puts time_to_string  #=> 2024-10-19 11:02:51 +0900
