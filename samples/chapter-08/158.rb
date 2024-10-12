a = [1, 2, 3]
method_name = :slice
p a.send(method_name, 0, 2)  #=> [1, 2]

class Contact
  ATTRIBUTES = %i(name email phone postal_code prefecture address1 address2)
  attr_accessor *ATTRIBUTES

  def initialize(attributes = {})
    ATTRIBUTES.each do |attribute|
      next unless attributes.has_key?(attribute)

      self.send("#{attribute}=", attributes[attribute])
    end
  end

  def to_s
    result = "Contact:\n"
    ATTRIBUTES.each do |attribute|
      value = self.send(attribute)
      result << "#{attribute}: #{value}\n"
    end
    result
  end
end

puts Contact.new(name: "Foo Bar", email: "foo@example.com", prefecture: "東京都")
#=> Contact:
#   name: Foo Bar
#   email: foo@example.com
#   phone:
#   postal_code:
#   prefecture: 東京都
#   address1:
#   address2:

puts "hello".send(:upcase)
puts "hello".__send__(:upcase)
