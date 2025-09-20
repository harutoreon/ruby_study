require 'jwt'

payload = { data: 'test' }
token = JWT.encode(payload, nil, 'none')

puts token
