heredoc = <<EOS
2の10乗は
#{2 ** 10}
EOS

puts heredoc

string1 =
  <<EOS
    通常のヒアドキュメントでは終端の識別子をインデントできない
EOS

string2 =
  <<-EOS
    <<-を使うことで終端の識別子をインデントできる
  EOS

string3 =
  <<~EOS
    <<~を使うともっともインデントの少ない行のスペースの数だけ、
      すべての行から先頭のスペースが取り除かれる
  EOS

puts string1, string2, string3

puts <<EOS, '名前はまだ無い'
吾輩は
猫である
EOS

puts <<~SQL.reverse
  SELECT * FROM users
  ORDER BY id DESC;
SQL
