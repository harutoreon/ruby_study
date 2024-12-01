require 'json'

user = {
  firstName: "Yuta",
  lastName: "Kawai",
  age: 35,
  favorites: ['football', 'music', 'ruby']
}

puts JSON.dump(user)
#=> {"firstName":"Yuta","lastName":"Kawai","age":35,"favorites":["football","music","ruby"]}

puts JSON.dump([user, 1, 2, { range: 1..100 }, Integer])
#=> [{"firstName":"Yuta","lastName":"Kawai","age":35,"favorites":["football","music","ruby"]},1,2,{"range":"1..100"},"Integer"]
