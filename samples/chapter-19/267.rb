require 'mysql2'

client = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'password', database: 'test')
client.query('SELECT * FROM users').each do |row|
  p row
end

client = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'password', database: 'test')
client.query('SELECT * FROM users').each(as: :array) do |row|
  p row
end

client = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'password', database: 'test')
statement = client.prepare("SELECT * FROM users WHERE id IN (?, ?)")
statement.execute(4, 6).each do |row|
  p row
end

client = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'password', database: 'test')
client.query('SELECT * FROM users').each do |row|
  p row
end

client.query("UPDATE users SET email = 'Clarice@example.com' WHERE id = 6")

client.query('SELECT * FROM users').each do |row|
  p row
end

client = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'password', database: 'test')
client.query('SELECT * FROM users').each do |row|
  p row
end

client.query('DELETE FROM users WHERE id = 6')

client.query('SELECT * FROM users').each do |row|
  p row
end
