require 'csv'

users_csv = <<CSV
last_name,first_name,nick_name
Kawai,Yuta,budo
Yamamoto,Kohei,kymmt
Shimoju,Hiroshi,shimoju
CSV

# CSV文字列を読み込む
csv_from_string = CSV.parse(users_csv,headers: true)
p csv_from_string
#=> #<CSV::Table mode:col_or_row row_count:4>
#   last_name,first_name,nick_name
#   Kawai,Yuta,budo
#   Yamamoto,Kohei,kymmt
#   Shimoju,Hiroshi,shimoju

p csv_from_string.headers
#=> ["last_name", "first_name", "nick_name"]
