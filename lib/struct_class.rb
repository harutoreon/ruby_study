Person = Struct.new(:name, :age, :city)

person = Person.new('John', 30, 'New York')
p person.name
p person.age
p person.city

person.age = 31
p person.age

p Person.members

person.each do |value|
  p value
end

User = Struct.new(:first_name, :last_name) do
  def full_name
    "#{first_name} #{last_name}"
  end
end

user = User.new('Alice', 'Ruby')
p user.full_name
