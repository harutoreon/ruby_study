email = 'user@example.com'
matched = email.match(/\A.+@example.com\z/)

puts matched[0]

invalid_email = <<~EMAIL
  user@example.com
  ssw0rd_hck3r_99_Xxmalware-site
EMAIL

not_matched = invalid_email.match(/\A.+@example.com\z/)
unintentionally_matched = invalid_email.match(/^.+@example.com$/)

p not_matched
puts unintentionally_matched
