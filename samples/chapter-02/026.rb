symbol = :abc
p symbol

hash1 = { :a => 1, :b => 2 }
hash2 = { a: 1, b: 2 }
p hash1 == hash2

class Car
  attr_accessor :name
end

car = Car.new
car.name = 'CX-30'
p car.name

symbol1 = :a_b
symbol2 = :'a-b'
p symbol1, symbol2

symbol = %s[foo-bar-baz]
p symbol

symbol1 = 'a_b'.to_sym
symbol2 = 'a-b'.intern
p symbol1, symbol2

str1 = 'str'
str2 = 'str'
puts str1.object_id, str2.object_id
puts "str1 == str2 => #{str1 == str2}"
puts "str1.equal?(str2) => #{str1.equal?(str2)}"

sym1 = :sym
sym2 = :sym
puts sym1.object_id, sym2.object_id
puts "sym1 == sym2 => #{sym1 == sym2}"
puts "sym1.equal?(sym2) => #{sym1.equal?(sym2)}"
