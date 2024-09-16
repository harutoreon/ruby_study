money = 10000

loop do
  number = [1, 2, 3, 4, 5].sample

  puts "さいころの目は#{number}です"

  break if number.odd?

  money *= 2

  puts "所持金が#{money}円になりました"
end

puts "最終的な所持金は#{money}円です"
