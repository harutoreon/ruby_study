require 'net/http'
require 'nokogiri'

response = Net::HTTP.get(URI.parse('https://www.ruby-lang.org/ja/'))
doc = Nokogiri::HTML5(response)

puts doc.title  #=> プログラミング言語 Ruby
