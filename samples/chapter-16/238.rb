require 'json'

user_json = <<JSON
{
  "firstName": "Yuta",
  "lastName": "Kawai",
  "age": 35,
  "favorites": ["football", "music", "ruby"]
}
JSON

p JSON.parse(user_json)
#=> {"firstName"=>"Yuta", "lastName"=>"Kawai", "age"=>35, "favorites"=>["football", "music", "ruby"]}

hash = JSON.parse(user_json, symbolize_names: true)
p hash  #=> {:firstName=>"Yuta", :lastName=>"Kawai", :age=>35, :favorites=>["football", "music", "ruby"]}
p hash[:firstName]     #=> "Yuta"
p hash[:lastName]      #=> "Kawai"
p hash[:favorites][0]  #=> "football"
p hash[:favorites][1]  #=> "music"
p hash[:favorites][2]  #=> "ruby"
