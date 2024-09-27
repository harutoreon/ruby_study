text = <<TEXT
tempore atque doloremque non.

iure autem blanditiis vel.



consequatur amet veniam velit.
TEXT

puts text
puts '----以下、空白行を削除した文字列 ----'
puts text.lines(chomp: true).reject(&:empty?).join("\n")
