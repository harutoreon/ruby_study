def create_user1(name, email, role)
  { name: name, email: email, role: role }
end

def create_user2(name:, email:, role:)
  { name: name, email: email, role: role }
end

p create_user1('Foo', 'foo@example.com', :none)
p create_user2(name: 'Bar', email: 'bar@example.com', role: :admin)
p create_user2(email: 'baz@example.com', role: :none, name: 'Baz')

# def create_user(name:, email:, role:)
#   { name: name, email: email, role: role }
# end

# begin
#   p create_user(name: 'Foo')
# rescue => e
#   p e
# end

# def create_user(name:, email:, role: :none)
#   { name: name, email: email, role: role }
# end

# p create_user(name: 'Ruby', email: 'ruby@example.com')

# def create_user(name, email: nil, role: :none)
#   { name: name, email: email, role: role }
# end

# p create_user('Ruby')
# p create_user('Diamond', role: :admin)

def create_user(name, email: nil, role: :none)
  { name: name, email: email, role: role }
end

name = 'Ruby'
email = 'ruby@example.com'
role = :admin

p create_user(name, email: email, role: role)
p create_user(name, email:, role:)
