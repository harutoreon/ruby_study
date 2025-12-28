require 'uri'

url = URI.parse('https://www.example.com')
url.query = URI.encode_www_form({ key: 'value', num: 10 })
url.fragment = 'foo'

puts url.to_s  #=> https://www.example.com?key=value&num=10#foo
