require 'json'
require 'redis'

hash = [
  {"id" => 1, "name" => "桜丘町", "postal" => "150-0031"},
  {"id" => 2, "name" => "市谷左内町", "postal" => "162-0864"}
]

redis = Redis.new(host: 'localhost')
redis.set('addresses', JSON.dump(hash))

p JSON.parse(redis.get('addresses'))
