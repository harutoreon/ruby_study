require 'securerandom'

puts "number: #{SecureRandom.random_number(81..100)}"  #=> number: 97
print "bytes: "; p SecureRandom.random_bytes           #=> bytes: "E\xFE\xDDJ\x8A\x8F8\xEA\xB8\xC5N\xA3y\x01\xDF\x14"
puts "hex: #{SecureRandom.hex}"                        #=> hex: e722d0c8422df23248326de3dd767658
puts "alphanumeric: #{SecureRandom.alphanumeric}"      #=> alphanumeric: afKiJcZ2d4IgZhgo
puts "uuid: #{SecureRandom.uuid}"                      #=> uuid: 1153da55-0903-4539-b43c-15173c6bf06f
puts "base64: #{SecureRandom.base64}"                  #=> base64: Gt8gWtiMK0FDLH5w/1AGZA==
puts "urlsafe_base64: #{SecureRandom.urlsafe_base64}"  #=> urlsafe_base64: Q-4Xg1bod8zowQGzzMYMaQ
