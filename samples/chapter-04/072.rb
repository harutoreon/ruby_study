array = [nil, 1,nil, 2, 3, nil, 4, nil, 5, nil, nil]

p array.compact
p array

array.compact!
p array

class User
  attr_accessor :age

  def initialize(age: nil)
    @age = age
  end
end

users = [User.new(age: 63), User.new(age: 32), User.new, User.new(age: 47), User.new]
p users.map(&:age)

user_ages = users.map(&:age).compact
p user_ages
