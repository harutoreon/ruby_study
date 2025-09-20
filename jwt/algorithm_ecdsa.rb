require 'jwt'
require 'openssl'

payload = { data: 'test' }
ecdsa_key = OpenSSL::PKey::EC.generate('prime256v1')

token = JWT.encode(payload, ecdsa_key, 'ES256')
p token
# => "eyJhbGciOiJFUzI1NiJ9.eyJkYXRhIjoidGVzdCJ9.D3NXLMXKDsN9XYdQUp-XW7pLgzuGUIxUovURG63f-FTUgecLIrQ3CjLyA6eHCNsTdOUnbzAmz9ORx0WZu28tog"

decoded_token = JWT.decode(token, ecdsa_key, true, { algorithm: 'ES256' })
p decoded_token
# => [{"data"=>"test"}, {"alg"=>"ES256"}]
