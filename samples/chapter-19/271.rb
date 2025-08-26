# users テーブルの内容
# -----------------------
# 4|alice@example.com
# 7|bob@example.com
# 8|carol@example.comp
# -----------------------

require 'active_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'test.db')

class User < ActiveRecord::Base
end

SEPARATOR = '---'.freeze

alice = User.find(4)
puts 'alice のメールアドレス'
puts alice.email

puts SEPARATOR

bob = User.where(email: 'bob@example.com')[0]
puts 'bob のレコード' 
p bob

puts SEPARATOR

dave = User.create(email: 'dave@example.com')
puts 'dave のレコードを作成'
p dave

puts SEPARATOR

dave.update(email: 'dave@new.example.com')
puts 'daveのメールアドレスを更新'
p dave

puts "総ユーザー数：#{User.count}"

puts "dave の削除"
dave.destroy

puts "総ユーザー数：#{User.count}"
