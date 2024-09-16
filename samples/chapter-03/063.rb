puts '7の段は以下のとおりです'

1.upto(9) do |num|
  puts "7 x #{num} = #{7 * num}"
end

10.downto(1) do |num|
  puts num
  sleep(1)
end

puts '終了'
