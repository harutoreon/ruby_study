mobile_phone_number_pattern = /\A\d{3}\s+\d{4}\s+\d{4}\z/
p '090  0000  0000'.match?(mobile_phone_number_pattern)
p '090 000 000'.match?(mobile_phone_number_pattern)

user_comment = <<~COMMENT
  Pythonの便利さに感動したが、次はJavaScriptで開発したい気分だ。
  しかし、Cは難しいので、Goで軽量なサービスを構築するのもありかな。
  最近はRubyでの開発にも興味が出てきたけど、Rustの安全性も捨てがたい。
COMMENT

p user_comment.scan(/\w+/)
