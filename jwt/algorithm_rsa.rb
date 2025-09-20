require 'jwt'
require 'openssl'

payload = { data: 'test' }
rsa_private = OpenSSL::PKey::RSA.generate(2048)
rsa_public = rsa_private.public_key

token = JWT.encode(payload, rsa_private, 'RS256')
p token
# => "eyJhbGciOiJSUzI1NiJ9.
#     eyJkYXRhIjoidGVzdCJ9.
#     p6JT7oLUPijHjKODXlCDfcyi523CrjMHAQsX62Q7lSeVJgaSNV4ifI47fRzLXB3mwp_
#     rnjzJnGU3wFOWzRzQj7wA0XApgtOKdRbggDYcjQQm_dwVMoiU9awbSKdgu9FC0KvqMIg00MSK70PhGfUEyS1d05P_
#     tUThfTfq1Wtiy6fDxCNtDOL3hMA-R1aKENC0knc_6bsQ6vCL0-fK-kqH-dwdg8VmNBNicq6KytfCVMK1tUXiHDZ0fm0DdGamUd_
#     3dBOTOQ-xS2kWoKLJpbtuQsIQGQwZ_s2HrD5fUpzkgrSmaGV4H8BtqGRsQkgmt_YF51alL6N1nu7sNmj7KNKuMw"

decoded_token = JWT.decode(token, rsa_public, true, { algorithm: 'RS256' })
p decoded_token
# => [{"data"=>"test"}, {"alg"=>"RS256"}]
