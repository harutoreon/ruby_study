def to_fahrenheit(celsius)
  (celsius * 1.8) + 32
end

puts to_fahrenheit(25)

def to_celsius(fahrenheit)
  return (fahrenheit - 32) / 1.8
end

puts to_celsius(77.0)

def greet
  puts 'hello'
  puts 'world'
end

greet
