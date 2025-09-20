require 'jwt'

payload = { data: 'test' }
token = JWT.encode(payload, nil, 'none')

p token
# => "eyJhbGciOiJub25lIn0.eyJkYXRhIjoidGVzdCJ9."

decoded_token = JWT.decode(token, nil, true, { algorithm: 'none' })

p decoded_token
# => [{"data"=>"test"}, {"alg"=>"none"}]
