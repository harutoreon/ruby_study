require 'csv'

users_csv = <<CSV
last_name,first_name,nick_name
Kawai,Yuta,budo
Yamamoto,Kohei,kymmt
Shimoju,Hiroshi,shimoju
CSV

File.write('users.csv', users_csv)
CSV.foreach('users.csv'){|row| p row}
#=> ["last_name", "first_name", "nick_name"]
#   ["Kawai", "Yuta", "budo"]
#   ["Yamamoto", "Kohei", "kymmt"]
#   ["Shimoju", "Hiroshi", "shimoju"]
