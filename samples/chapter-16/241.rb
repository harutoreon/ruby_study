require 'csv'

user_headers = ["last_name", "first_name", "nick_name"]
users = [
  ["Kawai", "Yuta", "budo"],
  ["Yamamoto", "Kohei", "kymmt"],
  ["Shimoju", "Hiroshi", "shimoju"]
]

users_csv = CSV.generate(write_headers: true, headers: user_headers) do |csv|
  users.each do |user|
    csv.add_row(user)
  end
end

puts users_csv
#=> last_name,first_name,nick_name
#   Kawai,Yuta,budo
#   Yamamoto,Kohei,kymmt
#   Shimoju,Hiroshi,shimoju
