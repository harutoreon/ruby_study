text = "前略\nお元気ですか？\n私は元気です。\n中略\nお体にお気をつけて。\n後略。"
p text.lines
p text.lines(chomp: true)

text.each_line(chomp: true) { |line| p "#{line}: #{line.length}文字" }

