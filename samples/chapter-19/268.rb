require 'pg'

conn = PG.connect(host: 'localhost', user: 'postgres', password: 'password', dbname: 'test')
