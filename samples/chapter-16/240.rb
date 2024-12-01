require 'csv'

users_csv = <<CSV
last_name,first_name,nick_name
Kawai,Yuta,budo
Yamamoto,Kohei,kymmt
Shimoju,Hiroshi,shimoju
CSV

# CSV文字列を読み込む
csv_from_string = CSV.parse(users_csv)
p csv_from_string
#=> [["last_name", "first_name", "nick_name"], ["Kawai", "Yuta", "budo"], ["Yamamoto", "Kohei", "kymmt"], ["Shimoju", "Hiroshi", "shimoju"]]

File.write('users.csv', users_csv)

# CSVファイルから読み込む
csv_from_file = CSV.read('users.csv')
p csv_from_file
#=> [["last_name", "first_name", "nick_name"], ["Kawai", "Yuta", "budo"], ["Yamamoto", "Kohei", "kymmt"], ["Shimoju", "Hiroshi", "shimoju"]]
