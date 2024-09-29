gihyo_url = %r(https://gihyo.jp)
p 'https://gihyo.jp/dev'.match?(gihyo_url)

phone_number = '09000123456'
hyphenated_phone_number = /#{phone_number[0..2]}-#{phone_number[3..6]}-#{phone_number[7..10]}/
p '090-0012-3456'.match?(hyphenated_phone_number)
p '09000123456'.match?(hyphenated_phone_number)

ip_addresses = %w(192.0.2.0 192.0.2.1 198.51.100.2 198.51.100.3)
p Regexp.union(ip_addresses)
p '192.0.2.0'.match?(Regexp.union(ip_addresses))
p '192.51.100.0'.match?(Regexp.union(ip_addresses))
