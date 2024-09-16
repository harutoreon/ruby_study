def divide(divisor)
  return "0で割り算はできません" if divisor == 0
  100 / divisor
end

puts divide(20)
puts divide(0)

def divide2(divisor)
  return "0で割り算はできません" unless divisor != 0
  100 / divisor
end

puts divide2(20)
puts divide2(0)
