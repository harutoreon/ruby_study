# Product = Data.define(:name, :price)

# plate = Product.new(name: 'お皿', price: 2500)
# puts "名前: #{plate.name}, 値段: #{plate.price}"

# spoon = Product.new(name: 'スプーン', price: 1000)
# another_plate = Product.new(name: 'お皿', price: 2500)

# p plate == spoon
# p plate == another_plate

# Product = Data.define(:name, :price)

# plate = Product.new(name: 'お皿', price: 2500)
# plate.name << '（白色）'
# puts "名前: #{plate.name}, 値段: #{plate.price}"

Product = Data.define(:name, :price)

plate = Product.new(name: 'お皿'.freeze, price: 2500)

begin
  plate.name << '（白色）'
rescue => e
  p e
end
