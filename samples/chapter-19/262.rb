require 'sqlite3'

databese = SQLite3::Database.new('test.db')

SQLite3::Database.new('test.db') do |db|

end

databese = SQLite3::Database.new(':memory:')
