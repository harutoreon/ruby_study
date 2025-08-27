require 'redis'

class Foo
  attr_accessor :bar, :baz

  def initialize(bar, baz)
    @bar, @baz = bar, baz
  end
end

foo = Foo.new('hi', 'ho')
redis = Redis.new(host: 'localhost')
redis.set('foo', Marshal.dump(foo))

p Marshal.load(redis.get('foo'))
