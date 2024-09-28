p 'Lorem ipsum dolor sit amet'.scan(/.m/)
#=> ["em", "um", "am"]

'Lorem ipsum dolor sit amet'.scan(/.m/) { |s| p s.upcase }
#=> "EM"
#   "UM"
#   "AM"
