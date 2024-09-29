p 'Lorem ipsum dolor sit amet'.scan(/.m/)
#=> ["em", "um", "am"]

'Lorem ipsum dolor sit amet'.scan(/.m/) { |s| p s.upcase }
#=> "EM"
#   "UM"
#   "AM"

p 'Lorem ipsum dolor sit amet'.scan(/.(.)(m)/)
#=> [["e", "m"], ["u", "m"], ["a", "m"]]

'Lorem ipsum dolor sit amet'.scan(/.(.)(m)/) do |s1, s2|
  puts "matched: #{s1} #{s2}"
end
#=> matched: e m
#   matched: u m
#   matched: a m
