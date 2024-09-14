def decorate(s)
  decorated = s.dup

  decorated.prepend('■')
  decorated.concat('■')

  decorated
end

original = 'Rubyコードレシピ集'
puts '実行前'
puts "original: #{original}"

decorated = decorate(original)
puts '実行後'
puts "original: #{original}"
puts "decorated: #{decorated}"

require 'securerandom'

class User
end

class Order
  attr_accessor :id, :user

  def initialize(user)
    @id = SecureRandom.uuid
    @user = user
  end
end

p order_1 = Order.new(User.new)
p order_2 = order_1.dup

puts "order_1.user == order_2.user: #{order_1.user == order_2.user}"

original = 'foo'

class << original
  def bar
    'bar'
  end
end

original.freeze

cloned = original.clone
puts "frozen?: #{cloned.frozen?}"
puts "bar: #{cloned.bar}"
