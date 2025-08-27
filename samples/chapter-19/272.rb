require 'redis'

redis = Redis.new(host: 'localhost')
redis.set('hello', 'word')

p redis.get('hello')
