require 'sqlite3'

SQLite3::Database.new('test.db') do |db|
  db.execute(<<~SQL)
    CREATE TABLE IF NOT EXISTS users (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      email TEXT NOT NULL UNIQUE
    )
  SQL
end

SQLite3::Database.new('test.db') do |db|
  db.execute(
    'INSERT INTO users (email) VALUES ("alice@example.com")'
  )
  db.execute(
    'INSERT INTO users (email) VALUES ("bob@example.com")'
  )
  db.execute(
    'INSERT INTO users (email) VALUES ("carol@example.com")'
  )
end

emails = %w(
  alice@example.com
  bob@example.com
  carol@example.com
)

SQLite3::Database.new('test.db') do |db|
  emails.each do |email|
    db.execute(
      'INSERT INTO users (email) VALUES (?)', email
    )
  end
end
