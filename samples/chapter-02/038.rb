p 'hello'.upcase

require 'digest'

p Digest::SHA256.hexdigest('ruby')
p Digest::SHA256::hexdigest('ruby')

begin
  p Digest.SHA256.hexdigest('ruby')
rescue => e
  p e
end
