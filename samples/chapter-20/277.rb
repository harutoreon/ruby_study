require 'net/http'
require 'nokogiri'

response = Net::HTTP.get(URI.parse('https://www.ruby-lang.org/ja/'))
doc = Nokogiri::HTML5(response)

# puts doc.css('div#intro h1').first.text
puts doc.xpath('//footer//a[@href="/ja/security/"]').text.strip  #=> セキュリティ
