class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    puts "My name is #{@name} and I'm #{@age} years old."
  end

  def older_than?(other_person)
    age > other_person.age
  end

  protected

  def age
    @age
  end
end

alice = Person.new("Alice", 30)
bob = Person.new("Bob", 25)

alice.introduce  # => "My name is Alice and I'm 30 years old."
bob.introduce    # => "My name is Bob and I'm 25 years old."

puts alice.older_than?(bob)  # => true
puts bob.older_than?(alice)  # => false

# 以下はエラーになる
# puts alice.age  # => NoMethodError: protected method `age' called
