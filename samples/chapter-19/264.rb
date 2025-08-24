require 'sqlite3'

SQLite3::Database.new('test.db') do |db|
  db.execute('SELECT * FROM users').each do |row|
    p row
  end
end

SQLite3::Database.new('test.db') do |db|
  db.results_as_hash = true
  db.execute('SELECT * FROM users').each do |row|
    p row
  end
end

SQLite3::Database.new('test.db') do |db|
  db.execute("SELECT * FROM users WHERE id IN (?, ?)", [1, 3]).each do |row|
    p row
  end
end

SQLite3::Database.new('test.db') do |db|
  db.execute("SELECT * FROM users WHERE email = :email", email: 'bob@example.com').each do |row|
    p row
  end
end

SQLite3::Database.new('test.db') do |db|
  p db.execute('SELECT * FROM users where id = 5')

  db.execute("UPDATE users SET email = 'Bob@example.com' WHERE id = 5")
  
  p db.execute('SELECT * FROM users where id = 5')
end

SQLite3::Database.new('test.db') do |db|
  p db.execute('SELECT * FROM users')

  db.execute("DELETE FROM users WHERE id = 5")

  p db.execute('SELECT * FROM users')
end
