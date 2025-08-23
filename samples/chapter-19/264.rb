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
