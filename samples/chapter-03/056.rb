animal = '猫'

case animal
when '犬'
  puts '犬です'
when 'うさぎ'
  puts 'うさぎです'
when '猫'
  puts '猫です'
else
  puts 'わかりません'
end

def check(val)
  case val
  when 1.. 100
    puts "#{val}は1以上100以下の数値です"
  when 101..150
    puts "#{val}は101以上150以下の数値です"
  when /^(070|080|090)-\d{4}-\d{4}$/
    puts "#{val}は携帯番号です"
  else
    puts "判別不能です"
  end
end

check(50)
check(150)
check(200)
check("090-0000-0000")
check("03-0000-0000")
