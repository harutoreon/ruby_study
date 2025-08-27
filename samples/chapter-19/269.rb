require 'pg'

PG.connect(host: 'localhost', user: 'postgres', password: 'password') do |conn|
  conn.exec('CREATE DATABASE test')
end

PG.connect(host: 'localhost', user: 'postgres', password: 'password', dbname: 'test') do |conn|
  conn.exec(<<~SQL)
    CREATE TABLE IF NOT EXISTS users (
      id SERIAL PRIMARY KEY,
      email VARCHAR(50) NOT NULL UNIQUE
    )
  SQL
end

PG.connect(host: 'localhost', user: 'postgres', password: 'password', dbname: 'test') do |conn|
  conn.exec("INSERT INTO users (email) VALUES ('alice@example.com')")
  conn.exec("INSERT INTO users (email) VALUES ('bob@example.com')")
  conn.exec("INSERT INTO users (email) VALUES ('carol@example.com')")
end

emails = %w(
  alice@example.com
  bob@example.com
  carol@example.com
)

PG.connect(host: 'localhost', user: 'postgres', password: 'password', dbname: 'test') do |conn|
  emails.each do |email|
    conn.exec_params('INSERT INTO users (email) VALUES ($1)', [email])
  end
end
