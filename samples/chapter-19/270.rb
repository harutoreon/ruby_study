require 'pg'

conn = PG.connect(host: 'localhost', user: 'postgres', password: 'password', dbname: 'test')

# conn.exec('SELECT * FROM users').each do |row|
#   p row
# end

# conn.exec('SELECT * FROM users').values.each do |row|
#   p row
# end

conn.exec_params("SELECT * FROM users WHERE id IN ($1, $2)", [1, 3]).each do |row|
  p row
end
