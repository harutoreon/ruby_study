require 'net/http'

uri = URI.parse('https://www.ruby-lang.org/en/')

puts Net::HTTP.get(uri)
