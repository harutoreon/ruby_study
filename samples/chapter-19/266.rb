require 'mysql2'

client = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'password', database: 'test')
client.query('CREATE DATABASE IF NOT EXISTS test')

client.query(<<~SQL)
  CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(50) NOT NULL UNIQUE
  )
SQL

client = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'password', database: 'test')
client.query('INSERT INTO users (email) VALUES ("alice@example.com")')
client.query('INSERT INTO users (email) VALUES ("bob@example.com")')
client.query('INSERT INTO users (email) VALUES ("carol@example.com")')

emails = %w(
  alice@example.com
  bob@example.com
  carol@example.com
)

client = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'password', database: 'test')
statement = client.prepare('INSERT INTO users (email) VALUES (?)')
emails.each do |email|
  statement.execute(email)
end
