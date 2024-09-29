gihyo_phone_number = '03-3513-6150'
m = gihyo_phone_number.match(/-\d+-/)

puts m.pre_match   #=> 03
puts m.post_match  #=> 6150
