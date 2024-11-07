begin
  1 / 0
rescue ZeroDivisionError => e
  p e
end
#=> #<ZeroDivisionError: divided by 0>

begin
  p undefined
rescue ZeroDivisionError, NameError => e
  p e
end
#=> #<NameError: undefined local variable or method `undefined' for main>

begin
  array = [1, 2]
  array.fetch(3)
rescue => e
  p e
end
#=> #<IndexError: index 3 outside of array bounds: -2...2>

def division(left, right)
  left / right
rescue
  "除算できません"
end

puts '=== 10/2の結果  ==='
puts division(10, 2)

puts '=== 10/0の結果  ==='
puts division(10, 0)
#=> === 10/2の結果  ===
#   5
#   === 10/0の結果  ===
#   除算できません

2.downto(0) do |num|
  puts "=== 10/#{num}の結果 ==="
  puts 10 / num
rescue
  puts "除算できません"
end
#=> === 10/1の結果 ===
#   10
#   === 10/0の結果 ===
#   除算できません
