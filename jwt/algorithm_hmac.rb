require 'jwt'

payload = { data: 'test' }
hmac_secret = 'my$ecretK3y'

token = JWT.encode(payload, hmac_secret, 'HS256')
p token
# => "eyJhbGciOiJIUzI1NiJ9.eyJkYXRhIjoidGVzdCJ9.pNIWIL34Jo13LViZAJACzK6Yf0qnvT_BuwOxiMCPE-Y"

decoded_token = JWT.decode(token, hmac_secret, true, { algorithm: 'HS256' })
p decoded_token
# => [{"data"=>"test"}, {"alg"=>"HS256"}]
