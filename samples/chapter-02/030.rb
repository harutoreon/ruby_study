if nil
  puts 'nilは真です'
else
  puts 'nilはfalseです'
end

a = nil
b = '文字列'

if a.nil?
  puts '変数aはnilです'
end

unless b.nil?
  puts '変数bはnilではありません'
end

p nil.class
p nil.to_s
