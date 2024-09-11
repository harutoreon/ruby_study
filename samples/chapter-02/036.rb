# Rectangle = Struct.new(:width, :height)
# rectangle = Rectangle.new(10, 20)

# puts "width: #{rectangle.width}, height: #{rectangle.height}"

# rectangle.height = 30
# puts "width: #{rectangle.width}, height: #{rectangle.height}"

# Rectangle = Struct.new(:width, :height)
# rectangle = Rectangle.new(height: 30, width: 20)

# puts "width: #{rectangle.width}, height: #{rectangle.height}"

Rectangle = Struct.new(:width, :height)
rectangle = Rectangle.new(10, 20)

rectangle.each do |value|
  puts value
end

rectangle.each_pair do |key, value|
  puts "#{key}: #{value}"
end

p rectangle.to_h
