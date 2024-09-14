require 'uri'
require 'net/http'
require 'json'

# str = 'https://api.github.com/repos/ruby/ruby'
# url = URI.parse(str)
# response = Net::HTTP.get(url)
# json = JSON.parse(response)

# puts json['description']

puts 'https://api.github.com/repos/ruby/ruby'
  .then { |str| URI.parse(str) }
  .then { |url| Net::HTTP.get(url) }
  .then { |response| JSON.parse(response) }
  .then { |json| json['description'] }
