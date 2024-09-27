require 'base64'

json = <<~JSON
{
  "name": "Foo",
  "comment": "hello😁"
}
JSON

puts Base64.strict_encode64(json)
puts Base64.urlsafe_encode64(json)
puts Base64.urlsafe_encode64(json, padding: false)

strict_encode = "ewogICJuYW1lIjogIkZvbyIsCiAgImNvbW1lbnQiOiAiaGVsbG/wn5iBIgp9Cg=="
urlsafe_encode = "ewogICJuYW1lIjogIkZvbyIsCiAgImNvbW1lbnQiOiAiaGVsbG_wn5iBIgp9Cg=="
urlsafe_without_padding_encode = "ewogICJuYW1lIjogIkZvbyIsCiAgImNvbW1lbnQiOiAiaGVsbG_wn5iBIgp9Cg"

puts Base64.strict_decode64(strict_encode)
puts Base64.urlsafe_decode64(urlsafe_encode)
puts Base64.urlsafe_decode64(urlsafe_without_padding_encode)
