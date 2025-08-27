require 'redis'

redis = Redis.new(host: 'localhost')
redis.set('hello', 'word')
p
 redis.get('hello')

redis = Redis.new(host: 'localhost')
redis.rpush('queue', 'foo')
redis.rpush('queue', 'bar')

p redis.lpop('queue')
p redis.lpop('queue')
