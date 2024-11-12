begin
  1 / 0
  puts undefined_string
rescue ZeroDivisionError
  puts 'ゼロで割ることはできません'
rescue NameError
  puts '未定義の変数です'
end
#=> ゼロで割ることはできません

begin
  puts undefined_string
  1 / 0
rescue ZeroDivisionError
  puts 'ゼロで割ることはできません'
rescue NameError
  puts '未定義の変数です'
end
#=> 未定義の変数です
