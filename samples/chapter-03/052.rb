divisor = 25

if divisor == 0
  puts "0で割り算はできません"
elsif 30 % divisor == 0
  puts "30は#{divisor}で割り切れます"
elsif 100 % divisor == 0
  puts "100は#{divisor}で割り切れます"
else
  puts "100は#{divisor}で割り切れません"
end
