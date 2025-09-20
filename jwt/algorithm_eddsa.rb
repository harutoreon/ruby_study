require 'jwt'
require 'openssl'

payload = { data: 'test' }
rsa_private = OpenSSL::PKey::RSA.generate(2048)
rsa_public = rsa_private.public_key

token = JWT.encode(payload, rsa_private, 'PS256')
p token
# => "eyJhbGciOiJQUzI1NiJ9.eyJkYXRhIjoidGVzdCJ9.
# HklzThcdiymjaDdwXGxmRfyOo4NYOOiLF1IlVixgLH8a1il2WL5nHLoL2VOfe2AWSzvnid_nW4A-53aUWah1jXjyYm6p8xaoGf-CR_
# hV7MOvTao5gOy21IDngSdWq7nfO8eZWARrbcI8c_
# RSyacbZfCcL5KHyi5HI3FZvQ18tVVbRoNrq9CneAnnz_
# CZg0bjNpmv7fpFLq9ypYjmIGGwwQoWavinBeW4OHeXVI3K9BdJ34i3kOkmHzgaXXrbPe3Wwl5SckhAwY8pFeKnhbdCR8U1Nhre3zjJyjOfYseF5THFCS18ZoFjJp4QkJYzcuQhCwO9vigi-ukd04ih16I0YQ"

decoded_token = JWT.decode(token, rsa_public, true, { algorithm: 'PS256' })
p decoded_token
# => [{"data"=>"test"}, {"alg"=>"PS256"}]
